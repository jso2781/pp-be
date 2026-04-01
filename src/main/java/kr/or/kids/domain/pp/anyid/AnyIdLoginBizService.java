package kr.or.kids.domain.pp.anyid;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.pp.auth.service.AuthService;
import kr.or.kids.domain.pp.external.connectionlog.client.ConnectionLogClient;
import kr.or.kids.domain.pp.external.connectionlog.vo.ConnectionLogInsertReqVO;
import kr.or.kids.domain.pp.mbr.mapper.MbrInfoMapper;
import kr.or.kids.domain.pp.mbr.vo.MbrInfoPVO;
import kr.or.kids.domain.pp.mbr.vo.MbrInfoRVO;
import kr.or.kids.global.config.ApplicationContextProvider;
import kr.or.kids.global.config.util.MessageContextHolder;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import kr.or.kids.global.util.DrugsafeUtil;

/**
 * Any-ID CI 기준 로그인 처리 (SSO 콜백 {@code onSsoLoginSuccess} 와 REST {@code /api/pp/auth/anyid/login} 공통).
 * 응답 bizData에 {@code status}, {@code redirectUrl} 등을 채웁니다.
 */
@Service
public class AnyIdLoginBizService {

    private Logger logger = LoggerFactory.getLogger(AnyIdLoginBizService.class);

    public static final String DEFAULT_LOGGED_IN_REDIRECT = "/pp/ko";
    public static final String DEFAULT_SIGN_UP_REDIRECT = "/pp/ko/auth/SignUpSel";

    private final MbrInfoMapper mbrInfoMapper;
    private final AuthService authService;

    public AnyIdLoginBizService(MbrInfoMapper mbrInfoMapper, AuthService authService) {
        this.mbrInfoMapper = mbrInfoMapper;
        this.authService = authService;
    }

    /**
     * @param ci                    본인인증 CI
     * @param httpRequest           세션 저장용
     * @param redirectUriAfterLogin 로그인 성공 시 이동할 SPA 경로(선택). 없으면 {@link #DEFAULT_LOGGED_IN_REDIRECT}
     */
    public ApiPrnDto loginByCi(String ci, HttpServletRequest request, String redirectUriAfterLogin) {
        if (ci == null || ci.isBlank()) {
            ApiPrnDto err = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            err.setMsg("ci is required");
            return err;
        }

        MbrInfoPVO mbrInfoPVO = new MbrInfoPVO();
        mbrInfoPVO.setLinkInfoIdntfId(ci);

        MbrInfoRVO resultVo = mbrInfoMapper.getMbrInfo(mbrInfoPVO);

        logger.debug("AnyIdLoginBizService loginByCi(String ci, HttpServletRequest httpRequest, String redirectUriAfterLogin) ci="+ci);

        if (resultVo != null) {
            ApiPrnDto apiPrnDto = authService.loginFromAnyId(resultVo);

            Authentication auth = new UsernamePasswordAuthenticationToken(resultVo.getMbrId(), "N/A", List.of(new SimpleGrantedAuthority("ROLE_USER")));

            HashMap<String, Object> bizData = apiPrnDto.getData();
            if(bizData == null){
                bizData = new HashMap<>();
                apiPrnDto.setData(bizData);
            }

            String redirectUrl = sanitizeRedirectPath(redirectUriAfterLogin, DEFAULT_LOGGED_IN_REDIRECT);

            bizData.put("status", "LoggedIn");
            bizData.put("redirectUrl", redirectUrl);

            SecurityContext context = SecurityContextHolder.createEmptyContext();
            context.setAuthentication(auth);
            SecurityContextHolder.setContext(context);

            HttpSession session = request.getSession(true);
            session.setAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY, context);

            /**************************************** 공통_세션정보시스템로그 Rest API 호출(tb_ca_l_sesn_log_info_mng 로그인 성공 기록) 시작 ************************************************/
            ConnectionLogClient conn = ApplicationContextProvider.getBean(ConnectionLogClient.class);

            String mbrNo = resultVo.getMbrNo();
            String mbrId = resultVo.getMbrId();
            DrugsafeUtil  util = new DrugsafeUtil();
            String clientIp = util.getClientIp(request);

            ConnectionLogInsertReqVO req = new ConnectionLogInsertReqVO();

            // 로그인구분코드(1 : ID 로그인 , 2 : 애니아이디 로그인)
            req.setLgnSeCd("2");

            // 네트워크 구분코드(1 : 내부망, 2 : 외부망)
            req.setNetSeCd(clientIp != null && clientIp.indexOf("192.168") > -1 ? "1" : "2");

            // 서비스사용자 아이디
            req.setSrvcUserId(mbrId);

            // 요청자IP주소
            req.setRqstrIpAddr(clientIp);

            // 접속구분번호(1 : 로그인, 2:로그아웃) 
            req.setCntnSeNo("1");

            // 접속 상세 설명
            req.setCntnDtlExpln("LoginIn");

            // 인증토큰값(CI 값을 넣을지 확정 안됨.)
            req.setCertTokenVl("");

            // 서비스명
            req.setSrvcNm("kids_pp");

            // 업무구분코드
            req.setTaskSeCd("PP");

            // 등록자 아이디
            req.setRgtrId(mbrNo);

            // 수정자 아이디
            req.setMdfrId(mbrNo);

            conn.insert(req);
            /**************************************** 공통_세션정보시스템로그 Rest API 호출(tb_ca_l_sesn_log_info_mng 로그인 성공 기록) 끝 ************************************************/

            logger.debug("AnyIdLoginBizService loginByCi(String ci, HttpServletRequest httpRequest, String redirectUriAfterLogin) ConnectionLogClient.insert status=LoggedIn, UI redirectUrl="+redirectUrl+", mbrId="+mbrId+", ConnectionLogInsertReqVO="+req.toString());

            return apiPrnDto;
        }

        String redirectUrl = sanitizeRedirectPath(DEFAULT_SIGN_UP_REDIRECT, DEFAULT_SIGN_UP_REDIRECT);
        
        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);
        apiPrnDto.setMsg(MessageContextHolder.getMessage("ui.msg.anyid.signup"));

        HashMap<String, Object> bizData = new HashMap<>();
        bizData.put("status", "SignUpSel");
        bizData.put("ci", ci);
        bizData.put("redirectUrl", redirectUrl);

        apiPrnDto.setData(bizData);

        logger.debug("AnyIdLoginBizService loginByCi(String ci, HttpServletRequest httpRequest, String redirectUriAfterLogin) status=SignUpSel, UI redirectUrl="+redirectUrl);

        return apiPrnDto;
    }

    /**
     * @param ci                    본인인증 CI
     * @param httpRequest           세션 저장용
     * @param redirectUriAfterLogin 로그인 성공 시 이동할 SPA 경로(선택). 없으면 {@link #DEFAULT_LOGGED_IN_REDIRECT}
     */
    public void loginByCi(String ci, HttpServletRequest request, HttpServletResponse response) {
        if (ci == null || ci.isBlank()) {
            return;
        }

        logger.debug("AnyIdLoginBizService loginByCi(String ci, HttpServletRequest request, HttpServletResponse response) ci="+ci);

        MbrInfoPVO mbrInfoPVO = new MbrInfoPVO();
        mbrInfoPVO.setLinkInfoIdntfId(ci);

        MbrInfoRVO resultVo = mbrInfoMapper.getMbrInfo(mbrInfoPVO);

        try{
            if(resultVo != null){
                authService.loginFromAnyId(resultVo);

                Authentication auth = new UsernamePasswordAuthenticationToken(resultVo.getMbrId(), "N/A", List.of(new SimpleGrantedAuthority("ROLE_USER")));

                SecurityContext context = SecurityContextHolder.createEmptyContext();
                context.setAuthentication(auth);
                SecurityContextHolder.setContext(context);

                HttpSession session = request.getSession(true);
                session.setAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY, context);

                /**************************************** 공통_세션정보시스템로그 Rest API 호출(tb_ca_l_sesn_log_info_mng 로그인 성공 기록) 시작 ************************************************/
                ConnectionLogClient conn = ApplicationContextProvider.getBean(ConnectionLogClient.class);

                String mbrId = resultVo.getMbrId();
                DrugsafeUtil  util = new DrugsafeUtil();
                String clientIp = util.getClientIp(request);

                ConnectionLogInsertReqVO req = new ConnectionLogInsertReqVO();

                // 로그인구분코드(1 : ID 로그인 , 2 : 애니아이디 로그인)
                req.setLgnSeCd("2");

                // 네트워크 구분코드(1 : 내부망, 2 : 외부망)
                req.setNetSeCd(clientIp != null && clientIp.indexOf("192.168") > -1 ? "1" : "2");

                // 서비스사용자 아이디
                req.setSrvcUserId(mbrId);

                // 요청자IP주소
                req.setRqstrIpAddr(clientIp);

                // 접속구분번호(1 : 로그인, 2:로그아웃) 
                req.setCntnSeNo("1");

                // 접속 상세 설명
                req.setCntnDtlExpln("LoginIn");

                // 인증토큰값(CI 값을 넣을지 확정 안됨.)
                req.setCertTokenVl("");

                // 서비스명
                req.setSrvcNm("kids_pp");

                // 업무구분코드
                req.setTaskSeCd("PP");

                // 등록자 아이디
                req.setRgtrId(mbrId);

                // 수정자 아이디
                req.setMdfrId(mbrId);

                conn.insert(req);
                /**************************************** 공통_세션정보시스템로그 Rest API 호출(tb_ca_l_sesn_log_info_mng 로그인 성공 기록) 끝 ************************************************/

                logger.debug("AnyIdLoginBizService loginByCi(String ci, HttpServletRequest request, HttpServletResponse response) mbrId="+mbrId+", ConnectionLogClient.insert, ConnectionLogInsertReqVO="+req.toString());

                if(!response.isCommitted()){

                    logger.debug("AnyIdLoginBizService loginByCi(String ci, HttpServletRequest request, HttpServletResponse response) status=LoggedIn, redirectUrl="+DEFAULT_LOGGED_IN_REDIRECT+", mbrId="+mbrId);
                    // 홈 화면으로 이동
                    response.sendRedirect(DEFAULT_LOGGED_IN_REDIRECT);
                }
            }
            // CI 기준으로 회원정보가 존재하지 않는 경우, 회원가입 화면으로 이동
            else
            {
                if(!response.isCommitted()){
                    logger.debug("AnyIdLoginBizService loginByCi(String ci, HttpServletRequest request, HttpServletResponse response) status=SignUpSel, redirectUrl="+DEFAULT_SIGN_UP_REDIRECT);
                    response.sendRedirect(DEFAULT_SIGN_UP_REDIRECT);
                }
            }
        }catch(IOException e){
            
        }
    }

    /**
     * 상대 경로만 허용하고, 포털 하위(/pp/)로 제한해 오픈 리다이렉트를 방지합니다.
     */
    String sanitizeRedirectPath(String requested, String fallback) {
        if (requested == null) {
            return fallback;
        }
        String t = requested.trim();
        if (t.isEmpty()) {
            return fallback;
        }
        if (t.contains("://") || t.contains("//") || t.contains("\\")) {
            return fallback;
        }
        if (!t.startsWith("/")) {
            t = "/" + t;
        }
        if (!t.startsWith("/pp/") && !"/pp".equals(t)) {
            return fallback;
        }
        return t;
    }
}

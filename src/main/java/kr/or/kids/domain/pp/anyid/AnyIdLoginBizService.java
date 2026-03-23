package kr.or.kids.domain.pp.anyid;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.pp.auth.service.AuthService;
import kr.or.kids.domain.pp.mbr.mapper.MbrInfoMapper;
import kr.or.kids.domain.pp.mbr.vo.MbrInfoPVO;
import kr.or.kids.domain.pp.mbr.vo.MbrInfoRVO;
import kr.or.kids.global.config.util.MessageContextHolder;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

/**
 * Any-ID CI 기준 로그인 처리 (SSO 콜백 {@code onSsoLoginSuccess} 와 REST {@code /api/pp/auth/anyid/login} 공통).
 * 응답 bizData에 {@code status}, {@code redirectUrl} 등을 채웁니다.
 */
@Service
public class AnyIdLoginBizService {

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
    public ApiPrnDto loginByCi(String ci, HttpServletRequest httpRequest, String redirectUriAfterLogin) {
        if (ci == null || ci.isBlank()) {
            ApiPrnDto err = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            err.setMsg("ci is required");
            return err;
        }

        MbrInfoPVO mbrInfoPVO = new MbrInfoPVO();
        mbrInfoPVO.setLinkInfoIdntfId(ci);

        MbrInfoRVO resultVo = mbrInfoMapper.getMbrInfo(mbrInfoPVO);

        if (resultVo != null) {
            ApiPrnDto apiPrnDto = authService.loginFromAnyId(resultVo);

            Authentication auth = new UsernamePasswordAuthenticationToken(resultVo.getMbrId(), "N/A", List.of(new SimpleGrantedAuthority("ROLE_USER")));

            HashMap<String, Object> bizData = apiPrnDto.getData();
            if(bizData == null){
                bizData = new HashMap<>();
                apiPrnDto.setData(bizData);
            }
            bizData.put("status", "LoggedIn");
            bizData.put("redirectUrl", sanitizeRedirectPath(redirectUriAfterLogin, DEFAULT_LOGGED_IN_REDIRECT));

            SecurityContext context = SecurityContextHolder.createEmptyContext();
            context.setAuthentication(auth);
            SecurityContextHolder.setContext(context);

            HttpSession session = httpRequest.getSession(true);
            session.setAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY, context);

            return apiPrnDto;
        }

        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);
        apiPrnDto.setMsg(MessageContextHolder.getMessage("ui.msg.anyid.signup"));

        HashMap<String, Object> bizData = new HashMap<>();
        bizData.put("status", "SignUpSel");
        bizData.put("ci", ci);
        bizData.put("redirectUrl", sanitizeRedirectPath(DEFAULT_SIGN_UP_REDIRECT, DEFAULT_SIGN_UP_REDIRECT));

        apiPrnDto.setData(bizData);
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

                if(!response.isCommitted()){
                    response.sendRedirect(DEFAULT_LOGGED_IN_REDIRECT);
                }
            }

            if(!response.isCommitted()){
                response.sendRedirect(DEFAULT_SIGN_UP_REDIRECT);
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

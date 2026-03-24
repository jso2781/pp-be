package kr.or.kids.domain.pp.anyid;

import java.io.IOException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import kr.or.anyid.adaptor.Sso;
import kr.or.anyid.adaptor.agency.interfaces.SsoLoginCallback;
import kr.or.anyid.adaptor.core.exception.AdaptorErrorCode;
import kr.or.anyid.adaptor.core.exception.AdaptorException;
import kr.or.kids.domain.pp.external.connectionlog.client.ConnectionLogClient;
import kr.or.kids.domain.pp.external.connectionlog.vo.ConnectionLogInsertReqVO;
import kr.or.kids.global.config.ApplicationContextProvider;
import kr.or.kids.global.util.DrugsafeUtil;

/**
 * anyid adaptor 로그인시 호출됩니다.
 * 본 클래스의 패키지경로는 sso-adaptor-conf-{서버모드}.properties 의
 * anyid.adaptor.agency.handler 에 명시되야합니다:
 *   anyid.adaptor.agency.handler=kr.or.kids.domain.pp.anyid.AnyidHandler
 */
public class AnyidHandler implements SsoLoginCallback {

    private Logger logger = LoggerFactory.getLogger(AnyidHandler.class);

    private Sso sso = new Sso();

    /**
     * anyid adaptor 로그인시 호출됩니다.
     * 
     * 1. accessToken으로 리소스서버에서 사용자 정보 조회 예제
     * 2. refreshToken으로 accessToken 재발급 예제
     * 3. idToken으로 acrValues, certGroupCd 추출
     *    certGroupCd : 01(모바일) 02(금융) 03(민간인증) 04(민간ID) 05(공동) -> 로그인 인증 수단입니다.
     *    acrValues : 01 = 1, 02,03,05 = 2, 04 = 3 -> 현재 로그인한 사용자의 certGroupCd의 그룹입니다.
     *                acrValues는 이후 다른 로직에도 사용하기에 세션 또는 레디스 와 같이 이용기관 자체적으로 현재 로그인한 사용자별로 보관해야합니다.
     *                
     * 4. 이용기관 자체 로그인 로직 코딩영역 -> 본클래스 or 이용기관 클래스 호출 등 로그인로직 개발하면 됩니다.
     * 
     * 유의사항 : accessToken, refreshToken, acrValues, certGroupCd는
     *          이용기관 상황에 맞춰 저장하여 관리.
     *          위 4가지 값은 사용자 로그아웃 전까지는 유출 될 시 보안 사고로 이어질 수 있으므로,
     *          보관에 유의 할 것
     * 
     * @param accessToken : 리소스서버에서 사용자 정보 조회시 필요
     * @param refreshToken : accessToken 재발급시 필요
     * @param idToken : acrValues, certGroupCd 추출시 필요
     * 
     */
    @Override
    public void onSsoLoginSuccess(HttpServletRequest request, HttpServletResponse response, String accessToken, String refreshToken, String idToken, String endPoint){
        // accessToken으로 리소스서버에서 사용자 정보 조회
        try{
            Map<String, Object> resultMap = sso.getUserInfoByAccessToken(accessToken);
            String resultCode = (String) resultMap.get("resultCode");

            logger.debug("AnyidHandler onSsoLoginSuccess resultCode="+resultCode);

            if("0".equals(resultCode)){
//                Map<String, Object> anyidSession = new HashMap<>();
//                anyidSession.put("sso", resultMap.get("userInfo"));
//                request.getSession().setAttribute("anyid", anyidSession);
//                System.out.println("userinfo : " + resultMap.get("userInfo"));

                Map<String, Object> userInfoMap = (Map<String, Object>) resultMap.get("userInfo");

                // CI 추출 (SDK가 이미 복호화해서 줌) → REST /anyid/login 과 동일한 AnyIdLoginBizService 로 세션 생성
                String ci = (String) userInfoMap.get("CI");

                logger.debug("AnyidHandler onSsoLoginSuccess resultCode=0, ci="+ci);

                if(ci != null && !ci.isBlank()){
                    AnyIdLoginBizService svc = ApplicationContextProvider.getBean(AnyIdLoginBizService.class);
                    svc.loginByCi(ci, request, response);
                    return;
                }
            }
        }catch(AdaptorException e){
            System.out.println(e.getAdaptorErrorCode().getCodeMessage());
            // accessToken 만료/재로그인 등 예외 상황은 아래 공통 리다이렉트로 처리
        }catch(Exception e){
            System.err.println(e.getLocalizedMessage());
        }

        // 로그인 후 endPoint(loginPage.uri?tx=XXX)로 리다이렉트
        onSsoSendRedirect(response, endPoint);
    }

    /**
     * anyid adaptor 에러 발생 시 호출됩니다.
     * 에러 발생 시 로그 처리 하고 에러 처리 및 이동할 페이지 코딩하면 됩니다.
     * 
     * @param errorCode : adaptorErrorCode -> adaptor에서 인지 가능한 에러코드, 가이드문서에 명시 되어있습니다.
     *                    Exception -> 기본자바 에러코드. e애서 정보 추출하면 됩니다.
     */
    @Override
    public void onSsoError(HttpServletResponse response, Exception exception) {
        logger.debug("AnyidHandler onSsoError !!");
        String errorMsg = "";

        if (exception instanceof AdaptorException) {
            int adaptorErrorCode = ((AdaptorException) exception).getErrorCode();
            errorMsg = AdaptorErrorCode.fromCode(adaptorErrorCode).getCodeMessage();
        } else if (exception instanceof Exception) {
            errorMsg = exception.getMessage();
        } else {
            errorMsg = AdaptorErrorCode.EXCEPTION_FAIL.getCodeMessage();
        }
        logger.debug("AnyidHandler onSsoError errorMsg : " + errorMsg);

        onSsoSendRedirect(response, "/");
    }

    /**
     * anyid adaptor SsoLogout시 호출됩니다.
     * 이용기관 자체적으로 로그아웃 로직을 연결 or 로직구현 하면 됩니다.
     * 
     */
    @Override
    public void onSsoLogout(HttpServletRequest request) {
        logger.debug("AnyidHandler onSsoLogout");

        /**************************************** 공통_세션정보시스템로그 Rest API 호출(tb_ca_l_sesn_log_info_mng 로그아웃 기록) 시작 ************************************************/
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if(authentication != null && authentication.isAuthenticated()){
            Object principal = authentication.getPrincipal();
            String mbrId = (principal instanceof String) ? (String) principal : null;

            logger.debug("AnyidHandler onSsoLogout mbrId="+mbrId);
            ConnectionLogClient conn = ApplicationContextProvider.getBean(ConnectionLogClient.class);

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
            req.setCntnSeNo("2");

            // 접속 상세 설명
            req.setCntnDtlExpln("LogOut");

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

            logger.debug("AnyidHandler onSsoLogout ConnectionLogClient.insert ConnectionLogInsertReqVO="+req.toString());
            conn.insert(req);
        }
        /**************************************** 공통_세션정보시스템로그 Rest API 호출(tb_ca_l_sesn_log_info_mng 로그아웃 기록) 끝 ************************************************/

        HttpSession session = request.getSession();
        session.invalidate();
    }

    /**
     * anyid adaptor svc to svc시 호출됩니다.
     * 타 이용기관에서 본 이용기관으로 SSO로그인 + 해당페이지 접근 하기 위한 기능입니다.
     * 
     * validation 순서
     * 1. 넘겨받은 endPoint가 본 이용기관이 관리하는 endPoint인지 체크
     *    - 관리하는 endPoint가 아니면 이용기관 자체 예외처리
     * 2. 넘겨받은 endPoint의 acrValues(CheckCcrValues) 요구치와 로그인한 사용자의 acrValues(sessionAcrValues) 비교
     *    - CheckCcrValues >= sessionAcrValues : 페이지 이동
     *    - CheckCcrValues < sessionAcrValues : 재인증 이동
     * 
     * 이용기관에서 수정 할 영역은 {이용기관코딩영역} Start ~ {이용기관코딩영역} End 입니다.
     * 이용기관 상황에 맞게 관리할 endPoint와 acrValues를 맵핑시켜놓고 CheckCcrValues, sessionAcrValues에 세팅만 하면 됩니다.
     * 
     * @param endPoint : 최종 도착지의 contextpath
     *        ReAuthLevelUrl : 
     */
    @Override
    public void onSsoSvcToSvc(HttpServletRequest request, HttpServletResponse response, String endPoint) {
        int result = acrValuesCheck(request, endPoint);
        if (result == 0) {
            onSsoSendRedirect(response, endPoint);
        } else if (result == 1) {
            String acrValues = "";
            onSsoSendRedirect(response, sso.getReAuthLevelUri(endPoint, acrValues));
        }
    }

    @Override
    public void onSsoSendRedirect(HttpServletResponse response, String endPoint) {
        String redirectUrl = endPoint.replaceAll("[\\r\\n]", "");
        try {
            if (endPointCheck(redirectUrl)) {
                if (!response.isCommitted()) {
                    response.sendRedirect(redirectUrl);
                }
            }
        } catch (IllegalStateException e) {
            System.err.println("Failed to send redirect: " + e);
        } catch (IOException e) {
            System.err.println("Failed to send redirect due to I/O error: " + e);
        }
    }

    /**
     * endPoint 검증시 사용될 메소드입니다.
     * 이용기관자체적으로 endPoint 화이트 리스트를 관리하면 됩니다.
     * 아래 구현방법은 자유롭게 하시면 되고 @param endPoint 와 검증 하는 로직 구현 하시면 됩니다.
     * 만약 endPoint에 endPoint?ddd=ddd 와 같이 파라미터가 붙은 경우 알아서 비교로직 만들면 됩니다.
     * @param endPoint : 최종 도착지의 contextpath
     */
    public boolean endPointCheck(String endPoint) {
        // 포털은 모든 endPoint 허용 (필요시 화이트리스트 추가)
        return true;
    }

    /**
     * endPoint의 acrValues 와 사용자의 sessionAcrValues 검증시 사용될 메소드입니다.
     * 이용기관자체적으로 endPoint와 acrValues를  화이트 리스트로 관리하면 됩니다.
     * 아래 구현방법은 자유롭게 하시면 되고 @param endPoint 와 로그인한 사용자의 acrValues 검증 하는 로직 구현 하시면 됩니다.
     * endPointCheck 이후 acrValues 아래와 같은 결과를 리턴하면 됩니다.
     *    0 : [정상]이동하려는 화면의 acrValues 보다 로그인한 사용자의 acrValues가 높아서 화면 이동가능
     *    1 : [재인증필요]이동하려는 화면의 acrValues 보다 로그인한 사용자의 acrValues가 높아서 화면 이동가능 불가능
     *        상위 인증수단을 통해 재로그인 필요함 -> 재로그인 페이지로 이동
     *  999 : [등록 필요 or 검증]화이트리스트에 endPoint 없어서 화면 이동 불가능
     * @param endPoint : 최종 도착지의 contextpath
     * @param sessionAcrValues : 현재 로그인한 사용자의 acrValues
     */
    public int acrValuesCheck(HttpServletRequest request, String endPoint) {
        Map<String, Integer> endPointCheck = new HashMap<>();
        endPointCheck.put("/pp/ko/auth/LoginMethod", 3);
        endPointCheck.put("/", 3);

        HttpSession session = request.getSession();
        Object sessionAcrValuesObj = session.getAttribute("acrValues");
        int sessionAcrValues = sessionAcrValuesObj != null
                ? Integer.parseInt((String) sessionAcrValuesObj) : 3;

        if (endPointCheck.containsKey(getContextPath(endPoint))) {
            int checkAcrValues = endPointCheck.get(getContextPath(endPoint));
            return checkAcrValues >= sessionAcrValues ? 0 : 1;
        }
        return 999;
    }

    public static String getContextPath(String url) {
        try {
            if (url.startsWith("http://") || url.startsWith("https://")) {
                URL parsedUrl = new URL(url);
                return parsedUrl.getPath();
            } else {
                int paramIndex = url.indexOf("?");
                return paramIndex > -1 ? url.substring(0, paramIndex) : url;
            }
        } catch (Exception e) {
            System.err.println(e.getLocalizedMessage());
            return null;
        }
    }
}

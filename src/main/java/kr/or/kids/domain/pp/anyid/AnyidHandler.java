package kr.or.kids.domain.pp.anyid;

import java.io.IOException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.anyid.adaptor.Sso;
import kr.or.anyid.adaptor.agency.interfaces.SsoLoginCallback;
import kr.or.anyid.adaptor.core.exception.AdaptorErrorCode;
import kr.or.anyid.adaptor.core.exception.AdaptorException;

/**
 * anyid adaptor 로그인시 호출됩니다.
 * 본 클래스의 패키지경로는 sso-adaptor-conf-{서버모드}.properties 의
 * anyid.adaptor.agency.handler 에 명시되야합니다:
 *   anyid.adaptor.agency.handler=kr.or.kids.domain.pp.anyid.AnyidHandler
 */
public class AnyidHandler implements SsoLoginCallback {

    private Sso sso = new Sso();

    @Override
    public void onSsoLoginSuccess(HttpServletRequest request, HttpServletResponse response,
                                  String accessToken, String refreshToken, String idToken, String endPoint) {
        System.out.println("onSsoLoginSuccess");

        // accessToken으로 리소스서버에서 사용자 정보 조회
        try {
            Map<String, Object> resultMap = sso.getUserInfoByAccessToken(accessToken);
            String resultCode = (String) resultMap.get("resultCode");
            if ("0".equals(resultCode)) {
                Map<String, Object> anyidSession = new HashMap<>();
                anyidSession.put("sso", resultMap.get("userInfo"));
                request.getSession().setAttribute("anyid", anyidSession);
                System.out.println("userinfo : " + resultMap.get("userInfo"));
            }
        } catch (AdaptorException e) {
            System.out.println(e.getAdaptorErrorCode().getCodeMessage());
            if (e.getErrorCode() == -1012 || e.getErrorCode() == -803) {
                // accessToken 만료 → refreshToken으로 재발급 필요
            } else {
                // 재로그인 처리
            }
        } catch (Exception e) {
            System.err.println(e.getLocalizedMessage());
        }

        // 로그인 후 endPoint(loginPage.uri?tx=XXX)로 리다이렉트
        onSsoSendRedirect(response, endPoint);
    }

    @Override
    public void onSsoError(HttpServletResponse response, Exception exception) {
        System.out.println("onSsoError");
        String errorMsg = "";

        if (exception instanceof AdaptorException) {
            int adaptorErrorCode = ((AdaptorException) exception).getErrorCode();
            errorMsg = AdaptorErrorCode.fromCode(adaptorErrorCode).getCodeMessage();
        } else if (exception instanceof Exception) {
            errorMsg = exception.getMessage();
        } else {
            errorMsg = AdaptorErrorCode.EXCEPTION_FAIL.getCodeMessage();
        }
        System.out.println("errorMsg : " + errorMsg);

        onSsoSendRedirect(response, "/");
    }

    @Override
    public void onSsoLogout(HttpServletRequest request) {
        System.out.println("onSsoLogout");
        HttpSession session = request.getSession();
        session.invalidate();
    }

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

    public boolean endPointCheck(String endPoint) {
        // 포털은 모든 endPoint 허용 (필요시 화이트리스트 추가)
        return true;
    }

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

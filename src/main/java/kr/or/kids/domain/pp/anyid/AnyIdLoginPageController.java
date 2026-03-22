package kr.or.kids.domain.pp.anyid;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * AnyID SSO 어댑터가 인증 완료 후 호출하는 loginPage.uri 처리 컨트롤러.
 *
 * sso-adaptor-conf-dev.properties 설정:
 *   anyid.adaptor.agency.loginPage.uri = /loginPage
 *
 * 흐름:
 *   /oidc/auth?end_point=/pp/ko/auth/LoginMethod
 *   → SSO 인증 → /oidc/redirect
 *   → /loginPage?tx=KMS발급값&end_point=%2Fpp%2Fko%2Fauth%2FLoginMethod
 *   → end_point 가 있으면 해당 경로?tx=KMS발급값 으로 리다이렉트
 *   → 없으면 기본 /pp/ko/auth/LoginMethod?tx=KMS발급값 으로 리다이렉트
 */
@Controller
public class AnyIdLoginPageController {

    private static final String DEFAULT_LOGIN_PAGE = "/pp/ko/auth/LoginMethod";

    @GetMapping("/loginPage")
    public void loginPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String tx        = request.getParameter("tx");
        String endPoint  = request.getParameter("end_point"); // ex) /pp/ko/auth/LoginMethod

        // end_point 가 있으면 그 경로로, 없으면 기본 로그인 페이지로
        String targetPath = StringUtils.isNotBlank(endPoint) ? endPoint : DEFAULT_LOGIN_PAGE;

        // tx 파라미터를 쿼리스트링으로 붙여서 리다이렉트
        String redirectUrl = targetPath + (StringUtils.isNotBlank(tx) ? "?tx=" + tx : "");

        response.sendRedirect(redirectUrl);
    }
}

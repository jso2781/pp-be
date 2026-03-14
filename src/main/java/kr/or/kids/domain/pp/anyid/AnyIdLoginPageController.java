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
 *   /oidc/auth → SSO 인증 → /oidc/redirect → /loginPage?tx=KMS발급값
 *   → React SPA /pp/ko/auth/LoginMethod?tx=KMS발급값 으로 리다이렉트
 */
@Controller
public class AnyIdLoginPageController {

    /**
     * SSO 어댑터가 인증 후 호출하는 엔드포인트.
     * QueryString(tx 포함)을 그대로 React 로그인 페이지로 전달한다.
     */
    @GetMapping("/loginPage")
    public void loginPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String queryString = request.getQueryString(); // "tx=20260313...&..."
        String redirectUrl = "/pp/ko/auth/LoginMethod"
            + (StringUtils.isNotBlank(queryString) ? "?" + queryString : "");
        response.sendRedirect(redirectUrl);
    }
}

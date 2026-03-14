package kr.or.kids.domain.pp.config;

import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import kr.or.anyid.adaptor.agency.AgencyCallbackManager;
import kr.or.anyid.adaptor.core.exception.AdaptorErrorCode;
import kr.or.anyid.adaptor.core.initializer.AdaptorInitializer;
import kr.or.anyid.adaptor.core.utils.PropertiesManager;
import kr.or.anyid.adaptor.web.servlet.AuthServlet;
import kr.or.anyid.adaptor.web.servlet.ErrorServlet;
import kr.or.anyid.adaptor.web.servlet.LoginPageServlet;
import kr.or.anyid.adaptor.web.servlet.LogoutServlet;
import kr.or.anyid.adaptor.web.servlet.ReAuthLevelServlet;
import kr.or.anyid.adaptor.web.servlet.RedirectServlet;
import kr.or.anyid.adaptor.web.servlet.ScheduleServlet;
import kr.or.anyid.adaptor.web.servlet.SsoLoginServlet;
import kr.or.anyid.adaptor.web.servlet.SsoLogoutServlet;
import kr.or.anyid.adaptor.web.servlet.UserCheckServlet;

@Configuration
public class ServletConfig {

    private AdaptorInitializer adaptorInitializer;

    @javax.annotation.PostConstruct
    public void init() {
        try {
            adaptorInitializer = new AdaptorInitializer();
            AgencyCallbackManager.initializeCallbacks();
            this.adaptorInitializer.init();
        } catch (Exception e) {
            throw new RuntimeException(AdaptorErrorCode.CALLBACK_INITIALIZATION_FAILED.getMessage(), e);
        }
        PropertiesManager.adaptorInitFlag = true;  // ScheduleManager 동작에 필수
    }

    @Bean
    public ServletRegistrationBean<AuthServlet> getAuthServletRegistrationBean() {
        ServletRegistrationBean<AuthServlet> registrationBean = new ServletRegistrationBean<>(new AuthServlet());
        registrationBean.addUrlMappings("/oidc/auth");
        return registrationBean;
    }

    @Bean
    public ServletRegistrationBean<ErrorServlet> getErrorServletRegistrationBean() {
        ServletRegistrationBean<ErrorServlet> registrationBean = new ServletRegistrationBean<>(new ErrorServlet());
        registrationBean.addUrlMappings("/oidc/error");
        return registrationBean;
    }

    @Bean
    public ServletRegistrationBean<LoginPageServlet> getLoginPageServletRegistrationBean() {
        ServletRegistrationBean<LoginPageServlet> registrationBean = new ServletRegistrationBean<>(new LoginPageServlet());
        registrationBean.addUrlMappings("/oidc/loginPage");
        return registrationBean;
    }

    @Bean
    public ServletRegistrationBean<LogoutServlet> getLogoutServletRegistrationBean() {
        ServletRegistrationBean<LogoutServlet> registrationBean = new ServletRegistrationBean<>(new LogoutServlet());
        registrationBean.addUrlMappings("/oidc/logout");
        return registrationBean;
    }

    @Bean
    public ServletRegistrationBean<ReAuthLevelServlet> getReAuthLevelServletRegistrationBean() {
        ServletRegistrationBean<ReAuthLevelServlet> registrationBean = new ServletRegistrationBean<>(new ReAuthLevelServlet());
        registrationBean.addUrlMappings("/oidc/reAuthLevel");
        return registrationBean;
    }

    @Bean
    public ServletRegistrationBean<SsoLoginServlet> getSsoLoginServletRegistrationBean() {
        ServletRegistrationBean<SsoLoginServlet> registrationBean = new ServletRegistrationBean<>(new SsoLoginServlet());
        registrationBean.addUrlMappings("/oidc/ssoLogin");
        return registrationBean;
    }

    @Bean
    public ServletRegistrationBean<SsoLogoutServlet> getSsoLogoutServletRegistrationBean() {
        ServletRegistrationBean<SsoLogoutServlet> registrationBean = new ServletRegistrationBean<>(new SsoLogoutServlet());
        registrationBean.addUrlMappings("/oidc/ssoLogout");
        return registrationBean;
    }

    @Bean
    public ServletRegistrationBean<RedirectServlet> getRedirectServletRegistrationBean() {
        ServletRegistrationBean<RedirectServlet> registrationBean = new ServletRegistrationBean<>(new RedirectServlet());
        registrationBean.addUrlMappings("/oidc/redirect");
        return registrationBean;
    }

    @Bean
    public ServletRegistrationBean<UserCheckServlet> getUserCheckServletRegistrationBean() {
        ServletRegistrationBean<UserCheckServlet> registrationBean = new ServletRegistrationBean<>(new UserCheckServlet());
        registrationBean.addUrlMappings("/oidc/userCheck");
        return registrationBean;
    }

    // ScheduleManager가 5초마다 /oidc/schedule 로 GET 요청
    // 미등록 시 404 반복 → "Adaptor Schedules Max Try Excess" 에러
    @Bean
    public ServletRegistrationBean<ScheduleServlet> getScheduleServletRegistrationBean() {
        ServletRegistrationBean<ScheduleServlet> registrationBean = new ServletRegistrationBean<>(new ScheduleServlet());
        registrationBean.addUrlMappings("/oidc/schedule");
        return registrationBean;
    }
}

package kr.or.kids.domain.pp.anyid;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.or.anyid.auth.AnyidAuth;

@RestController
@RequestMapping("/api/pp/auth")
public class AnyIDController {

    @GetMapping("/anyid/init")
    void init(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Map<String, Object> result = new HashMap<String, Object>();
        
        AnyidAuth anyidcert = new AnyidAuth();
        
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        
        String txId = request.getParameter("tx");
        
        result.put("cfg", "/".equalsIgnoreCase(request.getContextPath()) ? "" : request.getContextPath() + "/config/config.anyidc.json");
        result.put("txId", txId);
        result.put("tag", txId);
        result.put("lvl", 3);
        result.put("bypass", 0);
        result.put("theme", "4.2.2");
        result.put("toggle", true);
        
        anyidcert.writeValueAsString(response.getWriter(), result);
    }
    
    @GetMapping("/anyid/sso")
    void sso(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Map<String, Object> result = new HashMap<String, Object>();
    
        AnyidAuth anyidcert = new AnyidAuth();
    
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
    
        result.put("mt", request.getParameter("mt"));
        result.put("portalJoinUri", request.getParameter("portalJoinUri"));
        result.put("ssoByPass", 0);
        result.put("agencyContextPath", ("/".equalsIgnoreCase(request.getContextPath()) ? "" : request.getContextPath()));
    
        anyidcert.writeValueAsString(response.getWriter(), result);
    }

    @GetMapping("/anyid/userinfo")
    void userinfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Map<String, Object> result = new HashMap<String, Object>();
    
        AnyidAuth anyidcert = new AnyidAuth();
    
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
    
        HttpSession session = request.getSession();
        
        if(null != session) {
            Map<String, Object> anyidSession = (Map<String, Object>)session.getAttribute("anyid");
            if(null != anyidSession) {
                Map<String, Object> userInfo = (Map<String, Object>)anyidSession.get("sso");
                result.putAll(userInfo);
            }
        }
        
        anyidcert.writeValueAsString(response.getWriter(), result);
    }
}

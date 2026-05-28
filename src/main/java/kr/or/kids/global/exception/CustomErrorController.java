package kr.or.kids.global.exception;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.autoconfigure.web.ErrorProperties;
import org.springframework.boot.autoconfigure.web.ServerProperties;
import org.springframework.boot.web.error.ErrorAttributeOptions;
import org.springframework.boot.web.servlet.error.ErrorAttributes;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.ServletWebRequest;

import io.swagger.v3.oas.annotations.Hidden;

@Controller
@Hidden
public class CustomErrorController implements ErrorController
{
    private final ErrorAttributes errorAttributes;
    private final ErrorProperties errorProperties;

    public CustomErrorController(ErrorAttributes errorAttributes, ServerProperties serverProperties) {
        this.errorAttributes = errorAttributes;
        this.errorProperties = serverProperties.getError();
    }

    /**
     * ✅ 어떤 클라이언트(브라우저 포함)든 /error는 JSON만 반환
     */
    @RequestMapping(value = "${server.error.path}", produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Map<String, Object>> error(HttpServletRequest request) {

        ServletWebRequest webRequest = new ServletWebRequest(request);

        ErrorAttributeOptions options = ErrorAttributeOptions.defaults();
        if (shouldInclude(errorProperties.getIncludeMessage(), request.getParameter("message"))) {
            options = options.including(ErrorAttributeOptions.Include.MESSAGE);
        }
        if (errorProperties.isIncludeException()) {
            options = options.including(ErrorAttributeOptions.Include.EXCEPTION);
        }
        if (shouldInclude(errorProperties.getIncludeStacktrace(), request.getParameter("trace"))) {
            options = options.including(ErrorAttributeOptions.Include.STACK_TRACE);
        }
        if (shouldInclude(errorProperties.getIncludeBindingErrors(), request.getParameter("errors"))) {
            options = options.including(ErrorAttributeOptions.Include.BINDING_ERRORS);
        }

        Map<String, Object> body = errorAttributes.getErrorAttributes(webRequest, options);

        int status = (int) body.getOrDefault("status", 500);

        return ResponseEntity.status(status).contentType(MediaType.APPLICATION_JSON).body(body);
    }

    private boolean shouldInclude(ErrorProperties.IncludeAttribute includeAttribute, String requestParam) {
        switch (includeAttribute) {
            case ALWAYS:
                return true;
            case ON_PARAM:
                return requestParam != null && !"false".equalsIgnoreCase(requestParam);
            case NEVER:
            default:
                return false;
        }
    }
}

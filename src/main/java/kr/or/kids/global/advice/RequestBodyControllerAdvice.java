package kr.or.kids.global.advice;

import java.io.IOException;
import java.lang.reflect.Type;

import javax.servlet.http.HttpServletRequest;

import org.springframework.core.MethodParameter;
import org.springframework.http.HttpInputMessage;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.mvc.method.annotation.RequestBodyAdvice;

import kr.or.kids.global.util.JwtAudit;

/**
 * @RequestBody를 받는 모든 객체에 JWT 정보를 자동 주입하는 ControllerAdvice
 * 
 * RequestContextHolder를 사용해서 HttpServletRequest를 가져옴
 */
@RestControllerAdvice
public class RequestBodyControllerAdvice implements RequestBodyAdvice {

    @Override
    public boolean supports(MethodParameter methodParameter, Type targetType, Class<? extends HttpMessageConverter<?>> converterType) {
        // @RequestBody 어노테이션이 있는 모든 파라미터 처리
        boolean hasRequestBody = methodParameter.hasParameterAnnotation(RequestBody.class);
//        boolean isVOClass = targetType.getTypeName().endsWith("VO") || targetType.getTypeName().endsWith("PVO");

        return hasRequestBody;
    }

    @Override
    public HttpInputMessage beforeBodyRead(HttpInputMessage inputMessage, MethodParameter parameter, Type targetType, Class<? extends HttpMessageConverter<?>> converterType) throws IOException {
        return inputMessage;
    }

    @Override
    public Object afterBodyRead(Object body, HttpInputMessage inputMessage, MethodParameter parameter, Type targetType, Class<? extends HttpMessageConverter<?>> converterType){
        // HttpServletRequest 가져오기
        HttpServletRequest request = getCurrentHttpServletRequest();

        if(request == null){
            return body;
        }

        // JWT Audit 정보 주입 메서드 호출
        JwtAudit.injectJwtInfo(body, request);

        return body;
    }

    @Override
    public Object handleEmptyBody(Object body, HttpInputMessage inputMessage, MethodParameter parameter, Type targetType, Class<? extends HttpMessageConverter<?>> converterType){
        return body;
    }

    /**
     * RequestContextHolder를 사용해서 현재 HttpServletRequest를 가져옴
     * 
     * @return HttpServletRequest 또는 null
     */
    private HttpServletRequest getCurrentHttpServletRequest(){
        try{
            ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
            if(attributes != null){
                return attributes.getRequest();
            }
        }catch(Exception e){}
        return null;
    }


}
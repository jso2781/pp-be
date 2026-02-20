package kr.or.kids.global.advice;

import java.io.IOException;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.core.MethodParameter;
import org.springframework.http.HttpInputMessage;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.mvc.method.annotation.RequestBodyAdvice;

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

        // JWT 정보 주입 메서드 호출
        injectJwtInfo(body, request);

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

    /**
     * JWT 정보를 객체에 주입한다
     * 
     * @param body VO 객체
     * @param request HttpServletRequest
     */
    private void injectJwtInfo(Object body, HttpServletRequest request) {
        try {
            // JWT 정보 추출
            String mbrId = (String) request.getAttribute("mbrId");

            if(mbrId != null){
                // Audit 속성을 mbrId 설정
                invokeMethodSafely(body, "setRgtrId", mbrId);
                invokeMethodSafely(body, "setMdfrId", mbrId);
            }
        }catch(Exception e){}
    }

    /**
     * 안전한 메서드 호출 방식
     */
    private void invokeMethodSafely(Object target, String methodName, String userId){
        String simpleClassName = target.getClass().getSimpleName();
        try{
            if("ArrayList".equals(simpleClassName)){
                if(target instanceof ArrayList){
                    ArrayList<?> list = (ArrayList<?>)target;

                    for(Object obj : list){
                        Method method = obj.getClass().getMethod(methodName, String.class);
                        method.invoke(obj, userId);
                    }
                }
            }else{
                Method method = target.getClass().getMethod(methodName, String.class);
                method.invoke(target, userId);
            }
        }catch(NoSuchMethodException e){
            // 메서드가 없으면 무시 (선택적 기능)
        }catch(Exception e){
            // 기타 오류는 로깅만
        }
    }
}
package kr.or.kids.global.config;

import javax.servlet.http.HttpServletRequest;

import org.springframework.core.MethodParameter;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.context.request.ServletWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.mvc.method.annotation.ServletModelAttributeMethodProcessor;

import kr.or.kids.global.util.JwtAudit;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class JwtAuditModelAttributeArgumentResolver implements HandlerMethodArgumentResolver {

    // annotationNotRequired=true 로 두면 @ModelAttribute 생략해도 복합객체는 잡을 수 있습니다.
    private final ServletModelAttributeMethodProcessor delegate = new ServletModelAttributeMethodProcessor(true);

    @Override
    public boolean supportsParameter(MethodParameter parameter) {
        // 1) @RequestBody는 제외 (여긴 ModelAttribute 바인딩 Resolver)
        if (parameter.hasParameterAnnotation(RequestBody.class)) return false;

        // 2) 주입 대상 타입만 처리
        Class<?> paramType = parameter.getParameterType();

        // 3) ModelAttribute로 처리될 파라미터만 잡기
        //    @ModelAttribute 명시 OR 복합객체(대부분 VO/DTO)가 모델 바인딩 대상
        boolean hasModelAttr = parameter.hasParameterAnnotation(ModelAttribute.class);
        boolean isComplex = !org.springframework.beans.BeanUtils.isSimpleProperty(paramType);

        return hasModelAttr || isComplex;
    }

    @Override
    public Object resolveArgument(
            MethodParameter parameter,
            ModelAndViewContainer mavContainer,
            NativeWebRequest webRequest,
            WebDataBinderFactory binderFactory
    ) throws Exception {

        // 1) 먼저 기본 ModelAttribute 바인딩 수행
        Object arg = delegate.resolveArgument(parameter, mavContainer, webRequest, binderFactory);

        // 2) request 꺼내서 JWT Audit 주입
        HttpServletRequest request = ((ServletWebRequest) webRequest).getRequest();

        log.debug("=========== JwtAuditModelAttributeArgumentResolver resolveArgument JwtAudit.injectJwtInf call!!");
        JwtAudit.injectJwtInfo(arg, request);

        return arg;
    }
}

package kr.or.kids.global.util;

import java.lang.reflect.Method;
import java.util.ArrayList;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jwts;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class JwtAudit{
    private static String SECRET_KEY; // static으로 실제 사용

    @Value("${jwt.secret-key}")
    private String injectedSecretKey; // Spring이 주입하는 인스턴스 필드

    @PostConstruct
    public void init() {
        SECRET_KEY = injectedSecretKey; // 주입값을 static에 복사
    }

    /**
     * JWT 정보를 객체에 주입한다
     * 
     * @param voObj VO 객체
     * @param request HttpServletRequest
     */
    public static void injectJwtInfo(Object voObj, HttpServletRequest request) {
        if(voObj == null || request == null){
            return;
        }

        // 1. 기존 Audit(등록자, 수정자) 값 존재 여부 먼저 체크
        String rgtrId = getStringValueSafely(voObj, "getRgtrId");
        String mdfrId = getStringValueSafely(voObj, "getMdfrId");

        boolean hasRgtr = rgtrId != null && !rgtrId.isBlank();
        boolean hasMdfr = mdfrId != null && !mdfrId.isBlank();

        // 등록자, 수정자 중 하나라도 이미 값이 설정되어 있으면 아무 것도 안 함(Frontend로부터 넘어온 Audit 정보 우선 적용)
        if(hasRgtr || hasMdfr){
            return;
        }

        String bearer = request.getHeader("Authorization");

        String mbrId = null;

        // Request Header의 Authorization Token 으로부터 mbrId 정보 추출
        if(StringUtils.hasText(bearer) && bearer.startsWith("Bearer ")){
            String token = bearer.substring(7);

            try{
                // JWT 토큰 문자열에서 회원ID(mbrId) 가져옴.
                Claims claims = null;
                try{
                    claims = Jwts.parser().setSigningKey(SECRET_KEY).parseClaimsJws(token).getBody();

                    mbrId = claims.getSubject();
                }
                catch(ExpiredJwtException e){
                    claims = e.getClaims();
                    mbrId = claims.getSubject();
                }

                log.debug("================ JwtAudit injectJwtInfo token mbrId="+mbrId);
            }
            catch(Exception e){
                SecurityContextHolder.clearContext();
                // 여기서 401로 끊을지, 그냥 체인 계속 태울지는 정책 선택
                // 보통은 그냥 체인 진행(뒤에서 인증 실패 처리)해도 됩니다.
            }
        }

        try{
            if(mbrId != null){
                // Audit 속성을 Authorization Token의 mbrId로 설정
                invokeMethodSafely(voObj, "setRgtrId", mbrId);
                invokeMethodSafely(voObj, "setMdfrId", mbrId);
            }
            else{
                invokeMethodSafely(voObj, "setRgtrId", "anonymous");
                invokeMethodSafely(voObj, "setMdfrId", "anonymous");
            }
        }catch(Exception e){}
    }

    /**
     * 특정 setter 존재시 값을 설정함.
     *
     * @param target
     * @param methodName
     * @param userId
     */
    public static void invokeMethodSafely(Object target, String methodName, String userId){
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

    /**
     * 특정 getter 존재시 값을 가져옴.
     * 
     * @param target
     * @param methodName
     * @return
     */
    private static String getStringValueSafely(Object target, String methodName) {
        String simpleClassName = target.getClass().getSimpleName();
        try{
            if("ArrayList".equals(simpleClassName)){
                if(target instanceof ArrayList){
                    ArrayList<?> list = (ArrayList<?>)target;

                    if(!list.isEmpty()){
                        Object obj = list.get(0);
                        Method method = obj.getClass().getMethod(methodName);
                        Object result = method.invoke(obj);
                        return result != null ? result.toString() : null;
                    }
                }

                return null;
            }
            else{
                Method method = target.getClass().getMethod(methodName);
                Object result = method.invoke(target);
                return result != null ? result.toString() : null;
            }
        }
        catch(NoSuchMethodException e){
            // getter 없으면 무시
            return null;
        }
        catch(Exception e){
            return null;
        }
    }
}

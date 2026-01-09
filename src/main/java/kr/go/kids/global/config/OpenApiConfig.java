package kr.go.kids.global.config;

import org.springdoc.core.customizers.OpenApiCustomiser;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import io.swagger.v3.oas.annotations.enums.ParameterIn;
import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.media.StringSchema;
import io.swagger.v3.oas.models.parameters.Parameter;

/**
 * Swagger(OpenAPI 3.0) 설정
 *
 * - UI: /swagger-ui/index.html
 * - Spec(JSON): /v3/api-docs
 */
@Configuration
public class OpenApiConfig {

    @Bean
    public OpenAPI drugsafePpOpenAPI() {
        return new OpenAPI()
            .info(new Info()
                .title("DrugSafe Portal API")
                .description("""
                    DrugSafe User Backend (Spring Boot 2.7.18) OpenAPI 3.0 문서입니다.

                    ## 인증 방식 안내 (Authorize 버튼 사용 안함)
                    본 API는 **Authorization 헤더 기반 토큰**이 아니라, **세션 쿠키(JSESSIONID)** 기반 인증을 사용합니다.
                    - Any-ID 인증 성공 후 프론트(React)에서 **/api/auth/anyid/login** 을 호출하면 서버가 세션을 생성합니다.
                    - 이후 요청은 브라우저가 보관한 **JSESSIONID 쿠키**로 인증됩니다.
                    - 프론트에서 다른 오리진(개발 환경)으로 호출하는 경우, axios/fetch에서 **withCredentials: true** 설정이 필요합니다.

                    ※ Any-ID SDK 중계 엔드포인트(/jsp/**)는 내부 호출용이므로 Swagger에서 숨김 처리했습니다.
                    """)
                .version("v1.0"));
    }

    @Bean
    public OpenApiCustomiser addAcceptLanguageHeaderGlobally() {
        Parameter acceptLanguage = new Parameter()
                .in(ParameterIn.HEADER.toString())
                .name("Accept-Language")
                .description("Language for localization (e.g. ko-KR, en-US, ja-JP)")
                .required(false)
                .schema(new StringSchema()._default("ko"));  // old - ko-KR

        return openApi -> openApi.getPaths().values().forEach(pathItem ->
                pathItem.readOperations().forEach(op -> {
                    // 중복 추가 방지
                    boolean exists = op.getParameters() != null && op.getParameters().stream()
                            .anyMatch(p -> "Accept-Language".equalsIgnoreCase(p.getName())
                                    && "header".equalsIgnoreCase(p.getIn()));
                    if (!exists) op.addParametersItem(acceptLanguage);
                })
        );
    }
}

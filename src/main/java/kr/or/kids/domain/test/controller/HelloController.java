package kr.or.kids.domain.test.controller;

import java.util.Locale;
import java.util.Map;

import org.springframework.context.MessageSource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    private final MessageSource messageSource;

    public HelloController(MessageSource messageSource) {
        this.messageSource = messageSource;
    }

    /**
     * 1) CookieLocaleResolver + lang 파라미터로 Locale 변경됨
     * 2) 또는 Accept-Language 헤더를 참고해서 Locale을 만들어 직접 조회도 가능
     *
     * 예:
     *  - /hello
     *  - /hello?lang=en
     *  - /hello?name=Jin&lang=ko
     */
    @GetMapping("/hello")
    public Map<String, Object> hello(
            @RequestParam(defaultValue = "사용자") String name,
            Locale locale,
            @RequestHeader(name = "Accept-Language", required = false) String acceptLanguage
    ) {
        String msg = messageSource.getMessage("hello", new Object[]{ name }, locale);
        String title = messageSource.getMessage("title.welcome", null, locale);

        return Map.of(
                "locale", locale.toLanguageTag(),
                "acceptLanguage", acceptLanguage,
                "title", title,
                "message", msg
        );
    }
}

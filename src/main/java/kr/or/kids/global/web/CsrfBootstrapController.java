package kr.or.kids.global.web;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * SPA·동일 오리진에서 CSRF 쿠키(XSRF-TOKEN)를 확보하기 위한 경량 엔드포인트.
 * <p>Spring Security {@code CsrfFilter}가 응답에 쿠키를 심도록 GET만 제공한다.</p>
 */
@RestController
@RequestMapping("/api/pp/security")
public class CsrfBootstrapController {

    @GetMapping("/csrf")
    public ResponseEntity<String> bootstrapCsrf() {
        return ResponseEntity.ok("ok");
    }
}

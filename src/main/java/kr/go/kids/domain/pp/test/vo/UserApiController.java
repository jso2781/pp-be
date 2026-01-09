package kr.go.kids.domain.pp.test.vo;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.go.kids.global.exception.ApplicationException;

@RestController
@RequestMapping("/api/users")
public class UserApiController {

    @PostMapping
    public ResponseEntity<?> create(@Valid @RequestBody UserApiForm form) {

//        throw new ApplicationException("U0003");

        // 예시 응답
        return ResponseEntity.ok(Map.of(
                "result", "OK",
                "name", form.getName(),
                "email", form.getEmail()
        ));
    }
}

package kr.go.kids.domain.ca.auth.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.go.kids.domain.ca.auth.service.Auth1Service;
import kr.go.kids.domain.ca.auth.vo.UserLoginReqVO;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;


@RestController
@CrossOrigin
@RequestMapping("/api/auth")
public class Auth1Controller {

    @Autowired
    public Auth1Service auth1Service;

    /**
     * 사용자 로그인
     * @param input
     * @return
     */
    @PostMapping("/user/login")
    public ResponseEntity<ApiPrnDto> login(@RequestBody UserLoginReqVO input) {
        ApiPrnDto apiPrnDto = auth1Service.login(input);
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);

    }

}

package kr.go.kids.domain.auth.controller;

import java.math.BigInteger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.go.kids.domain.auth.service.AuthService;
import kr.go.kids.domain.auth.vo.MbrTokenDVO;
import kr.go.kids.domain.auth.vo.MbrTokenPVO;
import kr.go.kids.global.system.common.vo.ApiPrnDto;

@Tag(name = "Auth1Controller", description = "대국민포털_로그인토큰 관리(JWT)")
@RestController
@RequestMapping(value="/api/auth")
public class AuthController {

    @Autowired
    private AuthService authService;

    @Operation(summary = "대국민포털_로그인 처리", description = "대국민포털_로그인 처리한다.(JWT)")
    @PostMapping(value="/login")
    @ResponseBody
    public ResponseEntity<ApiPrnDto> login(@RequestBody MbrTokenPVO input){
        ApiPrnDto apiPrnDto = authService.login(input);

        if("0".equals(apiPrnDto.getCode())){
            return ResponseEntity.ok(apiPrnDto);
        }else{
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(apiPrnDto);
        }
    }

    /**
     * refreshToken은 헤더로 받는 예시 (바디로 받아도 됨)
     * old parameter - @RequestHeader("X-Refresh-Token") String refreshToken, @RequestHeader(value = "X-App-Id", required = false) String appId
     * @param refreshToken
     * @param appId
     * @return
     */
    @PostMapping("/refresh")
    public ResponseEntity<ApiPrnDto> refresh(@RequestParam(value = "refreshToken") String refreshToken, @RequestParam(value = "tokenId") BigInteger tokenId){
        ApiPrnDto apiPrnDto = authService.refresh(tokenId, refreshToken);

        if("0".equals(apiPrnDto.getCode())){
            return ResponseEntity.ok(apiPrnDto);
        }else{
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(apiPrnDto);
        }
    }

    @PostMapping("/logout")
    public ResponseEntity<ApiPrnDto> logout(Authentication auth, @RequestHeader(value = "X-App-Id", required = false) String appId, @RequestParam(value="tokenId") BigInteger tokenId) {
//      String mbrId = (String) auth.getPrincipal();

        MbrTokenDVO mtd = new MbrTokenDVO();
        mtd.setTokenId(tokenId);

        ApiPrnDto apiPrnDto = authService.logout(mtd);

        if("0".equals(apiPrnDto.getCode())){
            return ResponseEntity.ok(apiPrnDto);
        }else{
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(apiPrnDto);
        }
    }
}

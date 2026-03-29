package kr.or.kids.domain.pp.anyid;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.or.kids.domain.pp.anyid.dto.AnyIdLoginRequest;
import kr.or.kids.domain.pp.anyid.dto.AnyIdLoginResponse;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping("/api/pp/auth")
@Tag(
        name = "인증",
        description = "세션(JSESSIONID) 기반 인증 API입니다. Any-ID 인증이 성공하면 프론트에서 ssob/tag를 받아 /api/auth/anyid/login 으로 전달하고, 서버가 세션을 생성합니다. 이후 요청은 Authorization 헤더가 아니라 쿠키(JSESSIONID)를 사용합니다."
)
public class AnyIdAuthController {

    private final AnyIdAuthService anyIdAuthService;
    private final AnyIdLoginBizService anyIdLoginBizService;

    public AnyIdAuthController(AnyIdAuthService anyIdAuthService, AnyIdLoginBizService anyIdLoginBizService) {
        this.anyIdAuthService = anyIdAuthService;
        this.anyIdLoginBizService = anyIdLoginBizService;
    }

    @PostMapping("/anyid/verifyAndExtractTest")
    public ResponseEntity<ApiPrnDto> verifyAndExtractTest(@RequestBody AnyIdLoginRequest req){
        ApiPrnDto apiPrnDto = anyIdAuthService.verifyAndExtract(req);

        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    @PostMapping("/anyid/getCiFromSsob")
    @Operation(summary = "Any-ID의 본인인증시 인증 완료(success) 후 전달받은 ssob를 백앤드에서 복호화해서 ssob 의 내용중 ci 부분만 다시 화면으로 전달", description = "Any-ID의 본인인증시 인증 완료(success) 후 전달받은 ssob를 백앤드에서 복호화해서 ssob 의 내용중 ci 부분만 다시 화면으로 전달해줌.")
    public ResponseEntity<ApiPrnDto> getCiFromSsob(@RequestBody AnyIdLoginRequest req){
        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> bizData = new HashMap<>();

        try{
            String ci = anyIdAuthService.getCiFromSsob(req.ssob(), req.tag());
            bizData.put("ci", ci);
            apiPrnDto.setData(bizData);
        }catch(Exception e){
            log.debug("AnyIdAuthController getCiFromSsob anyIdAuthService.getCiFromSsob after exception : \n{}", e.getMessage());
            apiPrnDto = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
        }

        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    @PostMapping("/anyid/getUserInfoFromSsob")
    @Operation(summary = "Any-ID의 본인인증시 인증 완료(success) 후 전달받은 ssob를 백앤드에서 복호화해서 ssob 내용 전체(JSON)를 다시 화면으로 전달", description = "Any-ID의 본인인증시 인증 완료(success) 후 전달받은 ssob를 백앤드에서 복호화해서 ssob 내용 전체(JSON)를 다시 화면으로 전달해줌.")
    public ResponseEntity<ApiPrnDto> getUserInfoFromSsob(@RequestBody AnyIdLoginRequest req){
        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);

        try{
            Map<String, Object> oriUserInfoMap = anyIdAuthService.getUserInfoFromSsob(req.ssob(), req.tag());
            HashMap<String, Object> userInfoMap = oriUserInfoMap != null ? new HashMap<>(oriUserInfoMap) : new HashMap<>();

            apiPrnDto.setData(userInfoMap);
        }catch(Exception e){
            log.debug("AnyIdAuthController getUserInfoFromSsob anyIdAuthService.getUserInfoFromSsob after exception : \n{}", e.getMessage());
            apiPrnDto = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
        }

        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    /**
     * Any-ID 인증 결과로 세션 로그인
     *
     * Any-ID 화면에서 인증 성공 후 전달된 ssob/tag를 검증/복호화하여 사용자 정보를 추출하고, Spring Security 세션을 생성합니다.
     * 브라우저는 Set-Cookie로 내려오는 JSESSIONID를 유지해야 하며,
     * 프론트(React)는 axios/fetch에서 withCredentials를 사용해야 합니다.
     *
     */
    @PostMapping("/anyid/login")
    @Operation(
            summary = "Any-ID 인증 결과로 세션 로그인",
            description = "Any-ID 화면에서 인증 성공 후 전달된 ssob/tag를 검증/복호화하여 사용자 정보를 추출하고, Spring Security 세션을 생성합니다. 브라우저는 Set-Cookie로 내려오는 JSESSIONID를 유지해야 하며, 프론트(React)는 axios/fetch에서 withCredentials를 사용해야 합니다."
    )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "검증/추출 성공 및 세션 생성", content = @Content(schema = @Schema(implementation = AnyIdLoginResponse.class))),
            @ApiResponse(responseCode = "400", description = "요청 파라미터 누락 또는 형식 오류"),
            @ApiResponse(responseCode = "401", description = "ssob 검증 실패(위변조/만료 등)"),
            @ApiResponse(responseCode = "500", description = "SDK 처리 오류")
    })
    public ResponseEntity<ApiPrnDto> anyidLogin(@RequestBody AnyIdLoginRequest req, HttpServletRequest httpRequest, HttpServletResponse response){
        // ssob 를 복호화해서 ssob json 내용 중 CI 정보 추출
        String ci = anyIdAuthService.getCiFromSsob(req.ssob(), req.tag());

        ApiPrnDto apiPrnDto = anyIdLoginBizService.loginByCi(ci, httpRequest, req.redirectUri());

        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    @GetMapping("/me")
    @Operation(
            summary = "Any-ID 현재 세션 인증 상태 조회",
            description = "세션(JSESSIONID) 기준으로 현재 로그인 여부와 principal/권한을 반환합니다."
    )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "조회 성공")
    })
    public ResponseEntity<?> me() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth == null || !auth.isAuthenticated() || "anonymousUser".equals(auth.getPrincipal())) {
            return ResponseEntity.ok(java.util.Map.of("authenticated", false));
        }
        return ResponseEntity.ok(java.util.Map.of(
                "authenticated", true,
                "principal", auth.getPrincipal(),
                "authorities", auth.getAuthorities()
        ));
    }

    /**
     * Any-ID 로그아웃 처리(세션 무효화)
     * 1.Spring Security 인증 객체로부터 회원번호를 추출해서 해당 사용자의 로그아웃(lgnSeCd=2, cntnSeNo=2)에 대해 로그 접속이력을 남김.
     * 2.session.invalidate(), SecurityContextHolder.clearContext() 처리
     *
     * @param request
     * @return
     */
    @PostMapping("/anyid/logout")
    @Operation(
            summary = "Any-ID 로그아웃 처리(세션 무효화)",
            description = "현재 세션을 invalidate하고 SecurityContext를 정리합니다."
    )
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "로그아웃 성공")
    })
    public ResponseEntity<ApiPrnDto> logout(HttpServletRequest request) {

        /*
         * 1.Spring Security 인증 객체로부터 회원번호를 추출해서 해당 사용자의 로그아웃(lgnSeCd=2, cntnSeNo=2)에 대해 로그 접속이력을 남김.
         * 2.session.invalidate(), SecurityContextHolder.clearContext() 처리
         */
        ApiPrnDto apiPrnDto = anyIdAuthService.processAnyIdLogout(request);

        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }
}

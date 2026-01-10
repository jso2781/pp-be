package kr.go.kids.domain.test.controller;

import javax.servlet.http.HttpServletRequest;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import kr.go.kids.domain.test.service.UserService;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
import kr.go.kids.global.system.common.vo.PageRequestDto;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


@RestController
@CrossOrigin
@RequestMapping("/api/user")
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * 사용자목록
     * @param uploadFiles 업로드할 파일들
     * @param request HTTP 요청
     * @return API 응답
     */
    @Operation( summary = "사용자 목록 조회", description = "사용자 목록을 조회합니다.")
    @ApiResponse(responseCode = "200", description = "사용자 조회 성공")
    @PostMapping("/list")
    public ResponseEntity<ApiPrnDto> userList(HttpServletRequest request, PageRequestDto pageRequestDto) {

        int pageNum = pageRequestDto != null ? pageRequestDto.getPageNum() : 1;
        int pageSize = pageRequestDto != null ? pageRequestDto.getPageSize() : 10;

        ApiPrnDto apiPrnDto = userService.list(pageNum, pageSize);
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

}

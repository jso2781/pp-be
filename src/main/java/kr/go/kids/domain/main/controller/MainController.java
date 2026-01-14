package kr.go.kids.domain.main.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.go.kids.domain.main.service.MainService;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
import lombok.RequiredArgsConstructor;

@Tag(name = "MainController", description = "대국민포털_메인화면 컨텐츠 조회")
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/api/main")
public class MainController {

    private final MainService mainService;

    @Operation(summary = "대국민포털_메인화면 컨텐츠 조회", description = "대국민포털_메인화면 컨텐츠를 조회한다.")
    @PostMapping
    public ResponseEntity<ApiPrnDto> selectMainContents() {
        ApiPrnDto apiPrnDto = mainService.selectMainContents();
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }
}

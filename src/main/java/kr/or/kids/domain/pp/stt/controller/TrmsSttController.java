package kr.or.kids.domain.pp.stt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.or.kids.domain.pp.stt.service.TrmsSttService;
import kr.or.kids.domain.pp.stt.vo.TrmsSttPVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

@Tag(name = "TrmsSttController", description = "대국민포털_약관법령기본 관리")
@RestController
@RequestMapping(value="/api/stt")
public class TrmsSttController
{
    @Autowired
    private TrmsSttService trmsSttService;

    @Operation(summary = "대국민포털 회원가입용 약관법령 목록 조회", description = "대국민포털 회원가입용 약관법령 목록 조회한다.")
    @PostMapping(value="/selectTrmsListForSignUp")
    @ResponseBody
    public ResponseEntity<ApiPrnDto> selectTrmsListForSignUp()
    {
        ApiPrnDto apiPrnDto = trmsSttService.selectTrmsListForSignUp();

        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    @Operation(summary = "대국민포털_약관법령기본 목록 조회", description = "대국민포털_약관법령기본 목록 조회한다.")
    @PostMapping(value="/selectTrmsSttList")
    @ResponseBody
    public ResponseEntity<ApiPrnDto> selectTrmsSttList(@RequestBody TrmsSttPVO trmsSttPVO)
    {
        ApiPrnDto apiPrnDto = trmsSttService.selectTrmsSttList(trmsSttPVO);

        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    @Operation(summary = "대국민포털_약관법령기본 최신글 단건 조회", description = "대국민포털_약관법령기본 최신글 단건 조회한다.")
    @PostMapping(value="/getTrmsSttLatest")
    @ResponseBody
    public ResponseEntity<ApiPrnDto> getTrmsSttLatest(@RequestBody TrmsSttPVO trmsSttPVO)
    {
    	ApiPrnDto apiPrnDto = trmsSttService.getTrmsSttLatest(trmsSttPVO);

    	ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

}

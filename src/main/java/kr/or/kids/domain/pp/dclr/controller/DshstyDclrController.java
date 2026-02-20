package kr.or.kids.domain.pp.dclr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.or.kids.domain.pp.dclr.service.DshstyDclrService;
import kr.or.kids.domain.pp.dclr.vo.DshstyDclrPVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

@Tag(name = "dshstyDclrController", description = "대국민포털_부정신고 기본 관리")
@RestController
@RequestMapping(value="/api/dshstyDclr")
public class DshstyDclrController
{
    @Autowired
    private DshstyDclrService dshstyDclrService;

    @Operation(summary = "대국민포털_부정신고 기본 목록 조회", description = "대국민포털_부정신고 기본 목록 조회")
    @PostMapping(value="/selectDshstyDclrList")
    @ResponseBody
    public ResponseEntity<ApiPrnDto> selectDshstyDclrList(@RequestBody DshstyDclrPVO dshstyDclrPVO)
    {
    	ApiPrnDto apiPrnDto = dshstyDclrService.selectDshstyDclrList(dshstyDclrPVO);

    	ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    @Operation(summary = "대국민포털_부정신고 기본 정보 입력", description = "대국민포털_부정신고 기본 정보 입력")
    @PostMapping(value="/insertDshstyDclr")
    @ResponseBody
    public ResponseEntity<ApiPrnDto> insertDshstyDclr(@RequestBody DshstyDclrPVO dshstyDclrPVO)
    {
    	ApiPrnDto apiPrnDto = dshstyDclrService.insertDshstyDclr(dshstyDclrPVO);

    	ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }
}

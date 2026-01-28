package kr.go.kids.domain.exprt.controller;

import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.go.kids.domain.exprt.service.ExprtApplyService;
import kr.go.kids.domain.exprt.vo.ExprtApplyIVO;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
import lombok.RequiredArgsConstructor;

@Tag(name = "ExprtApplyController", description = "대국민포털_전문가회원전환신청관리")
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/api/exprt/apply")
public class ExprtApplyController {
    private final ExprtApplyService exprtApplyService;

    @Operation(summary = "대국민포털_전문가회원전환신청관리 사업자등록번호 검증", description = "대국민포털_전문가회원전환신청관리 사업자등록번호로 등록된 기관인지 검증한다.")
    @PostMapping(value = "/existbybrno")
    public ResponseEntity<ApiPrnDto> existsInstByBrno(@RequestBody ExprtApplyIVO exprtApplyIVO) {
        ApiPrnDto apiPrnDto = exprtApplyService.existsInstByBrno(exprtApplyIVO);
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }
    
    @Operation(summary = "대국민포털_전문가회원전환신청관리 이메일 중복체크", description = "대국민포털_전문가회원전환신청관리 이메일 중복체크를 진행한다.")
    @PostMapping(value = "/existbyemail")
    public ResponseEntity<ApiPrnDto> existbyEmail(@RequestBody ExprtApplyIVO exprtApplyIVO) {
        ApiPrnDto apiPrnDto = exprtApplyService.existbyEmail(exprtApplyIVO);
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }    
    
    @Operation(summary = "대국민포털_전문가회원전환신청관리 전환 신청", description = "대국민포털_전문가회원전환신청관리 전문가 회원으로 전환 신청을 처리한다.")
    @PostMapping(consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public ResponseEntity<ApiPrnDto> expertApply(
            @RequestPart("payload") ExprtApplyIVO exprtApplyIVO,
            @RequestPart(value = "file", required = false) MultipartFile file) {
        ApiPrnDto apiPrnDto = exprtApplyService.expertApply(exprtApplyIVO, file);
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }      
}

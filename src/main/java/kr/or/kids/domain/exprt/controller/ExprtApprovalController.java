package kr.or.kids.domain.exprt.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.or.kids.domain.exprt.service.ExprtApprovalService;
import kr.or.kids.domain.exprt.vo.ExprtApprovalPVO;
import kr.or.kids.domain.exprt.vo.ExprtApprovalUVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Tag(name = "ExprtApprovalController", description = "대국민포털_전문가업무신청관리")
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/api/exprt/approval")
public class ExprtApprovalController {
    private final ExprtApprovalService exprtApprovalService;

    @Operation(summary = "대국민포털_전문가업무신청관리 소속 전문가 회원 목록 조회", description = "대국민포털_전문가업무신청관리 담당하고 있는 업무 시스템에 사용 신청한 전문가 회원 현황 목록을 조회한다.")
    @PostMapping(value = "/list")
    public ResponseEntity<ApiPrnDto> selectExprtApprovalList(@RequestBody ExprtApprovalPVO exprtApprovalPVO) {
        ApiPrnDto apiPrnDto = exprtApprovalService.selectExprtApprovalList(exprtApprovalPVO);
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    @Operation(summary = "대국민포털_전문가업무신청관리 소속 전문가 회원 상세 조회", description = "대국민포털_전문가업무신청관리 담당하고 있는 업무 시스템에 사용 신청한 전문가 회원 현황 상세정보를 조회한다.")
    @PostMapping(value = "/get")
    public ResponseEntity<ApiPrnDto> selectExprtApproval(@RequestBody ExprtApprovalPVO exprtApprovalPVO) {
        ApiPrnDto apiPrnDto = exprtApprovalService.selectExprtApproval(exprtApprovalPVO);
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    @Operation(summary = "대국민포털_전문가업무신청관리 업무시스템 권한 목록 조회", description = "대국민포털_전문가업무신청관리 업무시스템의 부여 가능한 권한 목록을 조회한다.")
    @PostMapping(value = "/auth/list")
    public ResponseEntity<ApiPrnDto> selectTaskAuthList(@RequestBody ExprtApprovalPVO exprtApprovalPVO) {
        ApiPrnDto apiPrnDto = exprtApprovalService.selectTaskAuthList(exprtApprovalPVO);
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    @Operation(summary = "대국민포털_전문가업무신청관리 소속 전문가 회원 승인 상태 업데이트", description = "대국민포털_전문가업무신청관리 담당하고 있는 업무 시스템에 사용 신청한 전문가 회원의 승인 상태를 업데이트한다.")
    @PostMapping(value = "/update")
    public ResponseEntity<ApiPrnDto> updateExprtApproval(@RequestBody ExprtApprovalUVO exprtApprovalUVO) {
        ApiPrnDto apiPrnDto = exprtApprovalService.updateExprtApproval(exprtApprovalUVO);
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    @Operation(summary = "대국민포털_전문가업무신청관리 소속 전문가 회원 탈퇴 처리", description = "대국민포털_전문가업무신청관리 담당하고 있는 업무 시스템의 전문가 회원을 탈퇴 처리 한다.")
    @PostMapping(value = "/withdraw")
    public ResponseEntity<ApiPrnDto> withdrawExprtApproval(@RequestBody ExprtApprovalUVO exprtApprovalUVO) {
        ApiPrnDto apiPrnDto = exprtApprovalService.withdrawExprtApproval(exprtApprovalUVO);
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }
}

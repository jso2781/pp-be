package kr.or.kids.domain.exprt.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.or.kids.domain.exprt.service.ExprtTaskService;
import kr.or.kids.domain.exprt.vo.ExprtTaskPVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Tag(name = "ExprtTaskController", description = "대국민포털_전문가내업무관리")
@RestController
@RequiredArgsConstructor
@RequestMapping(value="/api/exprt/task")
public class ExprtTaskController
{
    private final ExprtTaskService exprtTaskService;

    @Operation(summary = "대국민포털_전문가내업무관리 내 업무 조회", description = "대국민포털_전문가내업무관리 전문가 회원의 업무 신청 정보를 조회한다.")
    @PostMapping(value = "/info")
    public ResponseEntity<ApiPrnDto> selectExprtInfo(@RequestBody ExprtTaskPVO exprtTaskPVO) {
        ApiPrnDto apiPrnDto = exprtTaskService.selectExprtInfo(exprtTaskPVO);
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    @Operation(summary = "대국민포털_전문가내업무관리 전문가 회원 전환 신청 취소", description = "대국민포털_전문가내업무관리 전문가 회원 전환 신청을 취소한다.")
    @PostMapping(value = "/apply/withdraw")
    public ResponseEntity<ApiPrnDto> withdrawExprt(@RequestBody ExprtTaskPVO exprtTaskPVO) {
        ApiPrnDto apiPrnDto = exprtTaskService.withdrawExprt(exprtTaskPVO);
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    @Operation(summary = "대국민포털_전문가내업무관리 전문가 회원 업무 신청 취소", description = "대국민포털_전문가내업무관리 사용중인 업무시스템을 사용을 취소한다. ")
    @PostMapping(value = "/withdraw")
    public ResponseEntity<ApiPrnDto> withdrawExprtTask(@RequestBody ExprtTaskPVO exprtTaskPVO) {
        ApiPrnDto apiPrnDto = exprtTaskService.withdrawExprtTask(exprtTaskPVO);
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    @Operation(summary = "대국민포털_전문가내업무관리 전문가 회원 업무 신청", description = "대국민포털_전문가내업무관리 업무시스템을 추가로 신청한다.")
    @PostMapping(value = "/apply")
    public ResponseEntity<ApiPrnDto> applyExprtTask(@RequestBody ExprtTaskPVO exprtTaskPVO) {
        ApiPrnDto apiPrnDto = exprtTaskService.applyExprtTask(exprtTaskPVO);
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    @Operation(summary = "대국민포털_전문가내업무관리 업무시스템에 해당하는 메뉴 목록 조회", description = "대국민포털_전문가내업무관리 업무시스템에 해당하는 메뉴 목록을 조회한다.")
    @PostMapping(value = "/menus")
    public ResponseEntity<ApiPrnDto> selectExprtMenus(@RequestBody ExprtTaskPVO exprtTaskPVO) {
        ApiPrnDto apiPrnDto = exprtTaskService.selectExprtMenus(exprtTaskPVO);
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }
}

package kr.or.kids.domain.pp.dep.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.or.kids.domain.pp.dep.service.OrgchtService;
import kr.or.kids.domain.pp.dep.vo.OrgchtPVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import lombok.RequiredArgsConstructor;

@Tag(name = "OrgchtController", description = "대국민포털_KIDS 조직도 조회")
@RestController
@RequestMapping(value = "/api/pp/dep")
@RequiredArgsConstructor
public class OrgchtController {

    private final OrgchtService orgchtService;

    @Operation(summary = "조직도 트리 조회", description = "본부 및 하위 부서 조직도 트리를 조회한다.")
    @PostMapping(value = "/selectOrgchtTree")
    @ResponseBody
    public ResponseEntity<ApiPrnDto> selectOrgchtTree(@RequestBody(required = false) OrgchtPVO orgchtPVO) {
        ApiPrnDto apiPrnDto = orgchtService.selectOrgchtTree(orgchtPVO);
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    @Operation(summary = "조직도 직원 조회", description = "선택한 부서와 하위 부서의 직원 목록을 조회한다.")
    @PostMapping(value = "/selectOrgchtEmployees")
    @ResponseBody
    public ResponseEntity<ApiPrnDto> selectOrgchtEmployees(@RequestBody OrgchtPVO orgchtPVO) {
        ApiPrnDto apiPrnDto = orgchtService.selectOrgchtEmployees(orgchtPVO);
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }
}

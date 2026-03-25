package kr.or.kids.domain.pp.external.workaccesslog.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.or.kids.domain.pp.external.workaccesslog.client.WorkAccessLogClient;
import kr.or.kids.domain.pp.external.workaccesslog.vo.WorkAccessLogInsertVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import lombok.RequiredArgsConstructor;

@Tag(name = "WorkAccessLogController", description = "업무별 접속 이력 관리")
@RestController
@RequestMapping(value="/api/pp/workAccessLog")
@RequiredArgsConstructor
public class WorkAccessLogController
{
    private final WorkAccessLogClient workAccessLogClient;

    @Operation(summary = "업무별 접속 이력을 입력", description = "업무별 접속 이력을 입력한다.")
    @PostMapping(value="/insert")
    @ResponseBody
    public ResponseEntity<ApiPrnDto> insert(@RequestBody WorkAccessLogInsertVO paramVo)
    {
    	ApiPrnDto apiPrnDto = workAccessLogClient.insert(paramVo);

    	ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }
}

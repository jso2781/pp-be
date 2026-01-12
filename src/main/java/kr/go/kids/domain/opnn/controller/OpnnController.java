package kr.go.kids.domain.opnn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.go.kids.domain.opnn.service.OpnnService;
import kr.go.kids.domain.opnn.vo.OpnnPVO;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;

@Tag(name = "OpnnController", description = "대국민포털_의견제안 관리")
@RestController
@RequestMapping(value="/api/opnn")
public class OpnnController
{
    @Autowired
    private OpnnService opnnService;

    @Operation(summary = "대국민포털_의견제안 입력", description = "대국민포털_의견제안 입력한다.")
    @PostMapping(value="/insertOpnn")
    @ResponseBody
    public ResponseEntity<ApiPrnDto> insertOpnn(@RequestBody OpnnPVO opnnPVO) {

        ApiPrnDto apiPrnDto = opnnService.insertOpnn(opnnPVO);

        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

}

package kr.or.kids.domain.pp.opnn.controller;

import java.math.BigInteger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.or.kids.domain.pp.opnn.service.OpnnService;
import kr.or.kids.domain.pp.opnn.vo.OpnnPVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

@Tag(name = "OpnnController", description = "대국민포털_의견제안 관리")
@RestController
@RequestMapping(value="/api/opnn")
public class OpnnController
{ 
    @Value("${file.storePath}")
    private String savePath;
    
    @Autowired
    private OpnnService opnnService;

    @Operation(summary = "대국민포털_의견제안 입력 ", description = "대국민포털_의견제안 입력한다.")
    @PostMapping(value="/insertOpnn")
    @ResponseBody
    public ResponseEntity<ApiPrnDto> insertOpnn(@ModelAttribute OpnnPVO opnnPVO) {
        opnnPVO.setMenuSn(new BigInteger("111"));//메뉴 일련번호
        opnnPVO.setMenuType("tempType1");//메뉴 유형
        
        ApiPrnDto apiPrnDto = opnnService.insertOpnn(opnnPVO);

        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    
}

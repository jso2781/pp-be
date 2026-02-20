package kr.or.kids.domain.pp.cms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.or.kids.domain.pp.cms.service.CmsService;
import kr.or.kids.domain.pp.cms.vo.CmsPVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

@Tag(name = "CmsController", description = "대국민포털_콘탠츠기본 정보 관리")
@RestController
@RequestMapping(value="/api/cms")
public class CmsController
{
    @Autowired
    private CmsService cmsService;

    @Operation(summary = "대국민포털_콘탠츠기본 정보 조회", description = "대국민포털_콘탠츠기본 정보 조회한다.")
    @PostMapping(value="/getCms")
    @ResponseBody
    public ResponseEntity<ApiPrnDto> getCms(@RequestBody CmsPVO cmsPVO)
    {
    	ApiPrnDto apiPrnDto = cmsService.getCms(cmsPVO);

    	ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }
}

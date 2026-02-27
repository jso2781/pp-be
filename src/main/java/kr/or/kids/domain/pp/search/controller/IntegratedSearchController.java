package kr.or.kids.domain.pp.search.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.or.kids.domain.pp.search.service.IntegratedSearchService;
import kr.or.kids.domain.pp.search.vo.IntegratedSearchPVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

@Tag(name = "IntegratedSearchController", description = "통합검색 관리")
@RestController
@RequestMapping(value="/api/pp/search")
public class IntegratedSearchController
{
    @Autowired
    private IntegratedSearchService integratedSearchService;

    @Operation(summary = "통합검색(키워드 검색) 조회(전체, 주요업무, 정보공개, 기관소식, 기관소개 탭별 목록 정보)", description = "통합검색(키워드 검색) 조회한다.(전체, 주요업무, 정보공개, 기관소식, 기관소개 탭별 목록 정보)")
    @PostMapping(value="/getIntegratedSearchJson")
    @ResponseBody
    public ResponseEntity<ApiPrnDto> getIntegratedSearchJson(@RequestBody IntegratedSearchPVO paramPVO)
    {
        ApiPrnDto apiPrnDto = integratedSearchService.getIntegratedSearchJson(paramPVO);

        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }
}

package kr.or.kids.domain.dur.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.or.kids.domain.dur.service.DurMyDrugInfoService;
import kr.or.kids.domain.dur.vo.DurMyDrugInfoPVO;
import kr.or.kids.domain.dur.vo.DurMyDrugSearchPVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Tag(name = "DurMyDrugInfoController", description = "내가 먹는 약의 DUR 정보")
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/api/dur/mydrug")
public class DurMyDrugInfoController {

    private final DurMyDrugInfoService durMyDrugInfoService;

    @Operation(summary = "대국민포털_내가먹는약의DUR정보 의약품 검색 목록조회", description = "대국민포털_내가먹는약의DUR정보 검색조건에 따라 의약품 목록을 출력한다.")
    @PostMapping(value = "/select/item")
    public ResponseEntity<ApiPrnDto> selectDurMyDrugSearchList(@RequestBody DurMyDrugSearchPVO durMyDrugSearchPVO) {
        ApiPrnDto apiPrnDto = durMyDrugInfoService.selectDurMyDrugSearchList(durMyDrugSearchPVO);
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    @Operation(summary = "대국민포털_내가먹는약의DUR정보 DUR 정보 목록조회", description = "대국민포털_내가먹는약의DUR정보 선택한 목록에 따라 DUR 정보 결과를 출력한다.")
    @PostMapping(value = "/select/result")
    public ResponseEntity<ApiPrnDto> selectDurMyDrugInfoList(@RequestBody List<DurMyDrugInfoPVO> durMyDrugInfoPVOs) {
        ApiPrnDto apiPrnDto = durMyDrugInfoService.selectDurMyDrugInfoList(durMyDrugInfoPVOs);
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }
}

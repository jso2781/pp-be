package kr.or.kids.domain.dur.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.or.kids.domain.dur.service.DurSearchRoomService;
import kr.or.kids.domain.dur.vo.DurEftgrpDetailPVO;
import kr.or.kids.domain.dur.vo.DurPrdctDetailPVO;
import kr.or.kids.domain.dur.vo.DurSearchRoomPVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

@Tag(name = "DurSearchRoomController", description = "DUR 정보 검색 관리")
@RestController
@RequestMapping(value="/api/dur")
public class DurSearchRoomController {

    @Autowired
    private DurSearchRoomService durSearchRoomService;

    @Operation(summary = "DUR 정보 검색", description = "DUR 정보 검색한다.")
    @PostMapping(value="/selectDurSearchRoomList")
    @ResponseBody
    public ResponseEntity<ApiPrnDto> selectDurSearchRoomList(@RequestBody DurSearchRoomPVO durSearchRoomPVO)
    {
        ApiPrnDto apiPrnDto = durSearchRoomService.selectDurSearchRoomList(durSearchRoomPVO);

        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    @Operation(summary = "효능군중복주의 상세 조회(특정 성분의 그룹1 기준으로 조회, 팝업용)", description = "효능군중복주의 상세 조회(특정 성분의 그룹1 기준으로 조회, 팝업용)한다.")
    @PostMapping(value="/selectEftgrpDetailList")
    @ResponseBody
    public ResponseEntity<ApiPrnDto> selectEftgrpDetailList(@RequestBody DurEftgrpDetailPVO durEftgrpDetailPVO)
    {
        ApiPrnDto apiPrnDto = durSearchRoomService.selectEftgrpDetailList(durEftgrpDetailPVO);

        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    @Operation(summary = "제품 상세 조회(특정 성분명 기준으로 조회, 팝업용)", description = "제품 상세 조회(특정 성분명 기준으로 조회, 팝업용)한다.")
    @PostMapping(value="/selectPrdctDetailList")
    @ResponseBody
    public ResponseEntity<ApiPrnDto> selectPrdctDetailList(@RequestBody DurPrdctDetailPVO durPrdctDetailPVO)
    {
        ApiPrnDto apiPrnDto = durSearchRoomService.selectPrdctDetailList(durPrdctDetailPVO);

        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }
}

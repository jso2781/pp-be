package kr.go.kids.domain.dur.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.go.kids.domain.dur.service.DurSearchRoomService;
import kr.go.kids.domain.dur.vo.DurSearchRoomPVO;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;

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
}

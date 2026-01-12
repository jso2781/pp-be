package kr.go.kids.domain.stt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.go.kids.domain.stt.service.TrmsSttService;
import kr.go.kids.domain.stt.vo.TrmsSttPVO;
import kr.go.kids.domain.stt.vo.TrmsSttRVO;

@Tag(name = "TrmsSttController", description = "대국민포털_약관법령기본 관리")
@RestController
@RequestMapping(value="/api/stt")
public class TrmsSttController
{
    @Autowired
    private TrmsSttService trmsSttService;

    @Operation(summary = "대국민포털_약관법령기본 조회", description = "대국민포털_약관법령기본 조회한다.")
    @PostMapping(value="/getTrmsStt")
    @ResponseBody
    public ResponseEntity<TrmsSttRVO> getTrmsStt(@RequestBody TrmsSttPVO trmsSttPVO)
    {
        TrmsSttRVO trmsStt = trmsSttService.getTrmsStt(trmsSttPVO);

        return ResponseEntity.ok(trmsStt);
    }

}

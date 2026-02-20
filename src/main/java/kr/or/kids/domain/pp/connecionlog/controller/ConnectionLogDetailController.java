package kr.or.kids.domain.pp.connecionlog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import kr.or.kids.domain.pp.connecionlog.service.ConnectionLogDetailService;
import kr.or.kids.domain.pp.connecionlog.service.ConnectionLogService;
import kr.or.kids.domain.pp.connecionlog.vo.ConnectionLogInsertReqVO;
import kr.or.kids.domain.pp.connecionlogdetail.vo.ConnectionLogDetailInsertVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

import javax.servlet.http.HttpServletRequest;

@RestController
@CrossOrigin
@RequestMapping("/api/connectionlog/detail")
public class ConnectionLogDetailController {

    @Autowired
    private ConnectionLogDetailService connectionLogDetailService;

    /**
     * 로그인접속정보 등록
     * @param input
     * @return
     */
    @PostMapping("/insert")
    public ResponseEntity<ApiPrnDto> insert(@RequestBody ConnectionLogDetailInsertVO input, HttpServletRequest request) {
        ApiPrnDto apiPrnDto = connectionLogDetailService.insert(input);
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

}

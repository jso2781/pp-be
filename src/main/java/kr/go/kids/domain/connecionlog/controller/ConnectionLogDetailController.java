package kr.go.kids.domain.connecionlog.controller;

import kr.go.kids.domain.connecionlog.service.ConnectionLogDetailService;
import kr.go.kids.domain.connecionlog.service.ConnectionLogService;
import kr.go.kids.domain.connecionlog.vo.ConnectionLogInsertReqVO;
import kr.go.kids.domain.connecionlogdetail.vo.ConnectionLogDetailInsertVO;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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

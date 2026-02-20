package kr.or.kids.domain.connecionlog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import kr.or.kids.domain.connecionlog.service.ConnectionLogService;
import kr.or.kids.domain.connecionlog.vo.ConnectionLogInsertReqVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import kr.or.kids.global.util.DrugsafeUtil;

import javax.servlet.http.HttpServletRequest;

@RestController
@CrossOrigin
@RequestMapping("/api/connectionlog")
public class ConnectionLogController {


    @Autowired
    private ConnectionLogService connectionLogService;

    /**
     * 로그인접속정보 등록
     * @param input
     * @return
     */
    @PostMapping("/insert")
    public ResponseEntity<ApiPrnDto> insert(@RequestBody ConnectionLogInsertReqVO input, HttpServletRequest request) {

        DrugsafeUtil  util = new DrugsafeUtil();
        String clientIp = util.getClientIp(request);

        input.setRqstrIpAddr(clientIp);
        ApiPrnDto apiPrnDto = connectionLogService.insert(input);

        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

}

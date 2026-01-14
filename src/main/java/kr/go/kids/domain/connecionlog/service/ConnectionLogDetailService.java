package kr.go.kids.domain.connecionlog.service;

import kr.go.kids.domain.connecionlog.vo.ConnectionLogInsertReqVO;
import kr.go.kids.domain.connecionlogdetail.vo.ConnectionLogDetailInsertVO;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;


public interface ConnectionLogDetailService {

    /**
     * 접속로그 상세 단건 등록
     * @return API 응답 DTO
     */
    ApiPrnDto insert(ConnectionLogDetailInsertVO insertVO);


}

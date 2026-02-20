package kr.or.kids.domain.connecionlog.service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.connecionlog.vo.ConnectionLogInsertReqVO;
import kr.or.kids.domain.connecionlogdetail.vo.ConnectionLogDetailInsertVO;
import kr.or.kids.global.system.common.vo.ApiPrnDto;


public interface ConnectionLogDetailService {

    /**
     * 접속로그 상세 단건 등록
     * @return API 응답 DTO
     */
    ApiPrnDto insert(ConnectionLogDetailInsertVO insertVO);


}

package kr.or.kids.domain.pp.connecionlog.service;

import kr.or.kids.domain.pp.connecionlog.vo.ConnectionLogInsertReqVO;
import kr.or.kids.global.system.common.vo.ApiPrnDto;


public interface ConnectionLogService {

    /**
     * 접속로그 단건 등록
     * @return API 응답 DTO
     */
    ApiPrnDto insert(ConnectionLogInsertReqVO paramVO);

}

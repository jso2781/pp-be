package kr.go.kids.domain.connecionlog.service;

import kr.go.kids.domain.connecionlog.vo.ConnectionLogInsertReqVO;
import kr.go.kids.global.system.common.vo.ApiPrnDto;


public interface ConnectionLogService {

    /**
     * 접속로그 단건 등록
     * @return API 응답 DTO
     */
    ApiPrnDto insert(ConnectionLogInsertReqVO paramVO);

}

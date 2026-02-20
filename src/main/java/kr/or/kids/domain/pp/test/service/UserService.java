package kr.or.kids.domain.pp.test.service;


import kr.or.kids.global.system.common.vo.ApiPrnDto;

/**
 * 사용자 서비스 인터페이스
 */
public interface UserService {

    /**
     * 사용자 목록
     * @return API 응답 DTO
     */
  ApiPrnDto list(int pageNum,int  pageSize);

}

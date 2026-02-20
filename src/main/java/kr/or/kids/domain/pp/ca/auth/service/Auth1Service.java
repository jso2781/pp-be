package kr.or.kids.domain.pp.ca.auth.service;

import kr.or.kids.domain.pp.ca.auth.vo.UserLoginReqVO;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

public interface Auth1Service {


    /**
     * 사용자 로그인
     * @return API 응답 DTO
     */
    ApiPrnDto  login(UserLoginReqVO loginVO);


}

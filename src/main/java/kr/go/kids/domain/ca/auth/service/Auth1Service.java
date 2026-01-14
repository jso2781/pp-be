package kr.go.kids.domain.ca.auth.service;

import kr.go.kids.domain.ca.auth.vo.UserLoginReqVO;
import kr.go.kids.global.system.common.vo.ApiPrnDto;

public interface Auth1Service {


    /**
     * 사용자 로그인
     * @return API 응답 DTO
     */
    ApiPrnDto  login(UserLoginReqVO loginVO);


}

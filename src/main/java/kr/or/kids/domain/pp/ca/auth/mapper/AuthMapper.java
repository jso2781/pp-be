package kr.or.kids.domain.pp.ca.auth.mapper;


import org.apache.ibatis.annotations.Mapper;

import kr.or.kids.domain.pp.ca.auth.vo.UserLoginReqVO;
import kr.or.kids.domain.pp.ca.auth.vo.UserLoginResVO;

@Mapper
public interface AuthMapper {

    /**  로그인 사용자 정보 조회 */
    UserLoginResVO loginData(UserLoginReqVO param);

}

package kr.or.kids.domain.test.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.or.kids.domain.test.vo.UserDataResVO;

import java.util.List;

@Mapper
public interface UserMapper {

    List<UserDataResVO> list();

}

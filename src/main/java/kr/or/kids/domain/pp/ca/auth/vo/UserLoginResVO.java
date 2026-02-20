package kr.or.kids.domain.pp.ca.auth.vo;

import lombok.Data;

@Data
public class UserLoginResVO {

    private String userId;          // 사용자 일련번호
    private String userLoginId;     // 사용자로그인ID
    private String userPw;          // 비밀번호
    private String userName;        // 사용자명
    private String userEmail;       // 사용자 이메일
    private String delYn;           // 삭제 여부

}

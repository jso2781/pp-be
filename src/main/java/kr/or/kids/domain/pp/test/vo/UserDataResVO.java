package kr.or.kids.domain.pp.test.vo;

import lombok.Data;

@Data
public class UserDataResVO {

    private Integer userId;         // 사용자번호
    private String userLoginId;     // 사용자로그인ID
    private String userName;        // 사용자명
    private String userEmail;       // 사용자이메일
    private String delYn;           // 삭제 여부
    private Integer inAdminId;      // 등록 관리자 번호
    private String inDatetime;      // 등록 시간
    private Integer upAdminId;      // 수정 관리자 번호
    private String upDatetime;      // 수정 시간

}

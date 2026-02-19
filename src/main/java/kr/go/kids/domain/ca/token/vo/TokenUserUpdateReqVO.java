package kr.go.kids.domain.ca.token.vo;

import lombok.Data;

/**
 * 토큰 사용자수정 요청 VO
 */
@Data
public class TokenUserUpdateReqVO {

    private String tokenSn;         // 토큰일련번호
    private Long adminId;        // 관리자 번호
    private Long userId;         // 사용자번호
    private String prgrmId;           // 프로그램아이디
    private String updtTokenCn;    // 갱신토큰내용
    private String acsTokenCn;     // 접근토큰내용
    private Integer upAdminId;      // 수정 관리자 번호

}

package kr.go.kids.domain.ca.token.vo;

import lombok.Data;

/**
 * 토큰 삭제 요청 VO
 */
@Data
public class TokenDeleteReqVO {
    private String tokenSn;         // 토큰일련번호
}
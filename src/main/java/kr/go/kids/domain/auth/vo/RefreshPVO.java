package kr.go.kids.domain.auth.vo;

import java.math.BigInteger;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "JWT Token Refresh 요청", description = "JWT Token Refresh 요청 Parameter VO")
public class RefreshPVO {
    /**
     * JWT토큰일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "JWT토큰일련번호", type = "BigInteger")
    private BigInteger tokenSn;

    /**
     * JWT_Refresh_Token
     */
    @Schema(description = "JWT_Refresh_Token", type = "String")
    private String refreshToken;

    public BigInteger getTokenSn()
    {
        return tokenSn;
    }
    public void setTokenSn(BigInteger tokenSn)
    {
        this.tokenSn = tokenSn;
    }
    public String getRefreshToken() {
        return refreshToken;
    }
    public void setRefreshToken(String refreshToken) {
        this.refreshToken = refreshToken;
    }
}

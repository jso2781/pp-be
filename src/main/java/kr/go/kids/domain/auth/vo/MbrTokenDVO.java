package kr.go.kids.domain.auth.vo;

import java.math.BigInteger;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;


@Schema(name = "대국민포털_회원_TOKEN", description = "대국민포털_회원_TOKEN Delete Parameter VO")
public class MbrTokenDVO
{
    /**
     * JWT토큰ID
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "JWT토큰ID", type = "BigInteger")
    private BigInteger tokenId;

    public BigInteger getTokenId()
    {
        return tokenId;
    }
    public void setTokenId(BigInteger tokenId)
    {
        this.tokenId = tokenId;
    }

}
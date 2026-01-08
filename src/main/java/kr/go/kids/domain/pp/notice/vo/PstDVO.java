package kr.go.kids.domain.pp.notice.vo;

import java.math.BigInteger;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;


@Schema(name = "대국민포털_게시물기본", description = "대국민포털_게시물기본 Delete Parameter VO")
public class PstDVO
{
    /**
     * 게시물일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "게시물일련번호", type = "BigInteger")
    private BigInteger pstSn;

    public BigInteger getPstSn()
    {
        return pstSn;
    }
    public void setPstSn(BigInteger pstSn)
    {
        this.pstSn = pstSn;
    }

}
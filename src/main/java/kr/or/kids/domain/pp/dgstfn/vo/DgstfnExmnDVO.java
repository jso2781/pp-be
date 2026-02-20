package kr.or.kids.domain.pp.dgstfn.vo;

import java.math.BigInteger;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;


@Schema(name = "대국민포털_만족도조사기본", description = "대국민포털_만족도조사기본 Delete Parameter VO")
public class DgstfnExmnDVO
{
    /**
     * 만족도조사일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "만족도조사일련번호", type = "BigInteger")
    private BigInteger dgstfnExmnSn;

    public BigInteger getDgstfnExmnSn()
    {
        return dgstfnExmnSn;
    }
    public void setDgstfnExmnSn(BigInteger dgstfnExmnSn)
    {
        this.dgstfnExmnSn = dgstfnExmnSn;
    }

}
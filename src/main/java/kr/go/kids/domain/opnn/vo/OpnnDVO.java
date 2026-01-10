package kr.go.kids.domain.opnn.vo;

import java.math.BigInteger;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;


@Schema(name = "대국민포털_의견제안", description = "대국민포털_의견제안 Delete Parameter VO")
public class OpnnDVO
{
    /**
     * 의견일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "의견일련번호", type = "BigInteger")
    private BigInteger opnnSn;

    public BigInteger getOpnnSn()
    {
        return opnnSn;
    }
    public void setOpnnSn(BigInteger opnnSn)
    {
        this.opnnSn = opnnSn;
    }

}
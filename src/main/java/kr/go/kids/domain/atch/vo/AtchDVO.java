package kr.go.kids.domain.atch.vo;

import java.math.BigInteger;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;


@Schema(name = "공통_첨부파일기본", description = "공통_첨부파일기본 Delete Parameter VO")
public class AtchDVO
{
    /**
     * 첨부파일일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "첨부파일일련번호", type = "BigInteger")
    private BigInteger atchFileSn;

    public BigInteger getAtchFileSn()
    {
        return atchFileSn;
    }
    public void setAtchFileSn(BigInteger atchFileSn)
    {
        this.atchFileSn = atchFileSn;
    }

}
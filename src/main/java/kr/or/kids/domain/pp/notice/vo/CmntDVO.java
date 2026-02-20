package kr.or.kids.domain.pp.notice.vo;

import java.math.BigInteger;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;


@Schema(name = "대국민포털_댓글기본", description = "대국민포털_댓글기본 Delete Parameter VO")
public class CmntDVO
{
    /**
     * 댓글일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "댓글일련번호", type = "BigInteger")
    private BigInteger cmntSn;

    public BigInteger getCmntSn()
    {
        return cmntSn;
    }
    public void setCmntSn(BigInteger cmntSn)
    {
        this.cmntSn = cmntSn;
    }

}
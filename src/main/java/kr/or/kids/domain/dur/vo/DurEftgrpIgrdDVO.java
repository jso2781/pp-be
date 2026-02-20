package kr.or.kids.domain.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_DUR효능군중복성분기본", description = "대국민포털_DUR효능군중복성분기본 Delete Parameter VO")
public class DurEftgrpIgrdDVO
{
    /**
     * 효능군중복일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "효능군중복일련번호", type = "String")
    private String eftgrpDpcnSn;

    public String getEftgrpDpcnSn()
    {
        return eftgrpDpcnSn;
    }
    public void setEftgrpDpcnSn(String eftgrpDpcnSn)
    {
        this.eftgrpDpcnSn = eftgrpDpcnSn;
    }

}
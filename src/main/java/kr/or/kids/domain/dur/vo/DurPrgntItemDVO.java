package kr.or.kids.domain.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_DUR임부금기품목기본", description = "대국민포털_DUR임부금기품목기본 Delete Parameter VO")
public class DurPrgntItemDVO
{
    /**
     * 임부금기일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "임부금기일련번호", type = "String")
    private String prgntBannSn;

    public String getPrgntBannSn()
    {
        return prgntBannSn;
    }
    public void setPrgntBannSn(String prgntBannSn)
    {
        this.prgntBannSn = prgntBannSn;
    }

}
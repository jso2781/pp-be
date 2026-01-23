package kr.go.kids.domain.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_DUR병용금기기본", description = "대국민포털_DUR병용금기기본 Delete Parameter VO")
public class DurConcBannDVO
{
    /**
     * 병용금기일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "병용금기일련번호", type = "String")
    private String concBannSn;

    public String getDurConcBannSn()
    {
        return concBannSn;
    }
    public void setDurConcBannSn(String concBannSn)
    {
        this.concBannSn = concBannSn;
    }

}
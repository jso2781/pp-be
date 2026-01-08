package kr.go.kids.domain.pp.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_DUR병용금기기본", description = "대국민포털_DUR병용금기기본 Delete Parameter VO")
public class ConcBannDVO
{
    /**
     * 병용금기일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "병용금기일련번호", type = "String")
    private String concBannSn;

    public String getConcBannSn()
    {
        return concBannSn;
    }
    public void setConcBannSn(String concBannSn)
    {
        this.concBannSn = concBannSn;
    }

}
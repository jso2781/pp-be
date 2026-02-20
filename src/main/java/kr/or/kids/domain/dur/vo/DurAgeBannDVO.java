package kr.or.kids.domain.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_DUR연령금기기본", description = "대국민포털_DUR연령금기기본 Delete Parameter VO")
public class DurAgeBannDVO
{
    /**
     * 연령금기일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "연령금기일련번호", type = "String")
    private String ageBannSn;

    public String getAgeBannSn()
    {
        return ageBannSn;
    }
    public void setAgeBannSn(String ageBannSn)
    {
        this.ageBannSn = ageBannSn;
    }

}
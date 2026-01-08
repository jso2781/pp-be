package kr.go.kids.domain.pp.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_DUR노인주의기본", description = "대국민포털_DUR노인주의기본 Delete Parameter VO")
public class DurSnctzDVO
{
    /**
     * 노인주의일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "노인주의일련번호", type = "String")
    private String snctzCutnSn;

    public String getSnctzCutnSn()
    {
        return snctzCutnSn;
    }
    public void setSnctzCutnSn(String snctzCutnSn)
    {
        this.snctzCutnSn = snctzCutnSn;
    }

}
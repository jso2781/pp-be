package kr.go.kids.domain.pp.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_DUR노인주의해열진통소염제기본", description = "대국민포털_DUR노인주의해열진통소염제기본 Delete Parameter VO")
public class DurSnctzMedDVO
{
    /**
     * 노인주의약일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "노인주의약일련번호", type = "String")
    private String snctzCutnMedSn;

    public String getSnctzCutnMedSn()
    {
        return snctzCutnMedSn;
    }
    public void setSnctzCutnMedSn(String snctzCutnMedSn)
    {
        this.snctzCutnMedSn = snctzCutnMedSn;
    }

}
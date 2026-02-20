package kr.or.kids.domain.pp.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_DUR투여기간주의기본", description = "대국민포털_DUR투여기간주의기본 Delete Parameter VO")
public class DurDosageDVO
{
    /**
     * 투여기간주의일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "투여기간주의일련번호", type = "String")
    private String adminPrdCutnSn;

    public String getAdminPrdCutnSn()
    {
        return adminPrdCutnSn;
    }
    public void setAdminPrdCutnSn(String adminPrdCutnSn)
    {
        this.adminPrdCutnSn = adminPrdCutnSn;
    }

}
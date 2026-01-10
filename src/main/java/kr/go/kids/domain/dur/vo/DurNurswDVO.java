package kr.go.kids.domain.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_DUR수유부주의기본", description = "대국민포털_DUR수유부주의기본 Delete Parameter VO")
public class DurNurswDVO
{
    /**
     * 수유부주의일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "수유부주의일련번호", type = "String")
    private String nurswCutnSn;

    public String getNurswCutnSn()
    {
        return nurswCutnSn;
    }
    public void setNurswCutnSn(String nurswCutnSn)
    {
        this.nurswCutnSn = nurswCutnSn;
    }

}
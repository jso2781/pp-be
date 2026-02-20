package kr.or.kids.domain.pp.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_DUR용량주의기본", description = "대국민포털_DUR용량주의기본 Delete Parameter VO")
public class DurCpctDVO
{
    /**
     * 용량주의일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "용량주의일련번호", type = "String")
    private String cpctCutnSn;

    public String getCpctCutnSn()
    {
        return cpctCutnSn;
    }
    public void setCpctCutnSn(String cpctCutnSn)
    {
        this.cpctCutnSn = cpctCutnSn;
    }

}
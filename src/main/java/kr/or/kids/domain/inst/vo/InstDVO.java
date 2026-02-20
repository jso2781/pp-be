package kr.or.kids.domain.inst.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_기관정보기본", description = "대국민포털_기관정보기본 Delete Parameter VO")
public class InstDVO
{
    /**
     * 사업자등록번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "사업자등록번호", type = "String")
    private String brno;

    public String getBrno()
    {
        return brno;
    }
    public void setBrno(String brno)
    {
        this.brno = brno;
    }

}
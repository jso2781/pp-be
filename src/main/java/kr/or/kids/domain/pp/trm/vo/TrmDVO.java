package kr.or.kids.domain.pp.trm.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_용어기본", description = "대국민포털_용어기본 Delete Parameter VO")
public class TrmDVO
{
    /**
     * 표준용어명
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "표준용어명", type = "String")
    private String stdTrmNm;

    public String getStdTrmNm()
    {
        return stdTrmNm;
    }
    public void setStdTrmNm(String stdTrmNm)
    {
        this.stdTrmNm = stdTrmNm;
    }

}
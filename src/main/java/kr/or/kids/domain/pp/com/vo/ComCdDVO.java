package kr.or.kids.domain.pp.com.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "공통_공통코드기본", description = "공통_공통코드기본 Delete Parameter VO")
public class ComCdDVO
{
    /**
     * 공통코드
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "공통코드", type = "String")
    private String comCd;

    public String getComCd()
    {
        return comCd;
    }
    public void setComCd(String comCd)
    {
        this.comCd = comCd;
    }

}
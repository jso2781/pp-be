package kr.or.kids.domain.com.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "공통_공통코드기본", description = "공통_공통코드기본 Search Parameter VO")
public class ComCdPVO
{
    /**
     * 공통코드
     */
    @Schema(description = "공통코드", type = "String")
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
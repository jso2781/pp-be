package kr.or.kids.domain.pp.dmn.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_도메인기본", description = "대국민포털_도메인기본 Delete Parameter VO")
public class DmnDVO
{
    /**
     * 공통표준도메인명
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "공통표준도메인명", type = "String")
    private String comStdDmnNm;

    public String getComStdDmnNm()
    {
        return comStdDmnNm;
    }
    public void setComStdDmnNm(String comStdDmnNm)
    {
        this.comStdDmnNm = comStdDmnNm;
    }

}
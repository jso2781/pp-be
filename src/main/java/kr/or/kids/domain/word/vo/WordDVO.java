package kr.or.kids.domain.word.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_단어기본", description = "대국민포털_단어기본 Delete Parameter VO")
public class WordDVO
{
    /**
     * 공통표준단어명
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "공통표준단어명", type = "String")
    private String comStdWordNm;

    public String getComStdWordNm()
    {
        return comStdWordNm;
    }
    public void setComStdWordNm(String comStdWordNm)
    {
        this.comStdWordNm = comStdWordNm;
    }

}
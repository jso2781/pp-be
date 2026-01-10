package kr.go.kids.domain.notice.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_게시판기본", description = "대국민포털_게시판기본 Delete Parameter VO")
public class BbsDVO
{
    /**
     * 게시판아이디
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "게시판아이디", type = "String")
    private String bbsId;

    public String getBbsId()
    {
        return bbsId;
    }
    public void setBbsId(String bbsId)
    {
        this.bbsId = bbsId;
    }

}
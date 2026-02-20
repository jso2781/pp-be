package kr.or.kids.domain.auth.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_게시판권한기본", description = "대국민포털_게시판권한기본 Delete Parameter VO")
public class BbsAuthrtDVO
{
    /**
     * 게시판아이디
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "게시판아이디", type = "String")
    private String bbsId;

    /**
     * 권한코드
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "권한코드", type = "String")
    private String authrtCd;

    public String getBbsId()
    {
        return bbsId;
    }
    public void setBbsId(String bbsId)
    {
        this.bbsId = bbsId;
    }
    public String getAuthrtCd()
    {
        return authrtCd;
    }
    public void setAuthrtCd(String authrtCd)
    {
        this.authrtCd = authrtCd;
    }

}
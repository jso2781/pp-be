package kr.or.kids.domain.auth.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_게시판권한기본", description = "대국민포털_게시판권한기본 Search Parameter VO")
public class BbsAuthrtPVO
{
    /**
     * 게시판아이디
     */
    @Schema(description = "게시판아이디", type = "String")
    private String bbsId;

    /**
     * 권한코드
     */
    @Schema(description = "권한코드", type = "String")
    private String authrtCd;

    /**
     * 등록자아이디
     */
    @Schema(description = "등록자아이디", type = "String")
    private String rgtrId;

    /**
     * 등록일시
     */
    @Schema(description = "등록일시", type = "String")
    private String regDt;

    /**
     * 수정자아이디
     */
    @Schema(description = "수정자아이디", type = "String")
    private String mdfrId;

    /**
     * 수정일시
     */
    @Schema(description = "수정일시", type = "String")
    private String mdfcnDt;

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
    public String getRgtrId()
    {
        return rgtrId;
    }
    public void setRgtrId(String rgtrId)
    {
        this.rgtrId = rgtrId;
    }
    public String getRegDt()
    {
        return regDt;
    }

    
    public String getMdfrId()
    {
        return mdfrId;
    }
    public void setMdfrId(String mdfrId)
    {
        this.mdfrId = mdfrId;
    }
    public String getMdfcnDt()
    {
        return mdfcnDt;
    }
    public void setMdfcnDt(String mdfcnDt)
    {
        this.mdfcnDt = mdfcnDt;
    }

}
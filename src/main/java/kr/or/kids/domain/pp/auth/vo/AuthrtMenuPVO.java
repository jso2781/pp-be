package kr.or.kids.domain.pp.auth.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_권한메뉴기본", description = "대국민포털_권한메뉴기본 Search Parameter VO")
public class AuthrtMenuPVO
{
    /**
     * 권한코드
     */
    @Schema(description = "권한코드", type = "String")
    private String authrtCd;

    /**
     * 메뉴일련번호
     */
    @Schema(description = "메뉴일련번호", type = "Long")
    private Long menuSn;

    /**
     * 권한메뉴역할비고
     */
    @Schema(description = "권한메뉴역할비고", type = "String")
    private String authrtMenuRoleRmrk;

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

    public String getAuthrtCd()
    {
        return authrtCd;
    }
    public void setAuthrtCd(String authrtCd)
    {
        this.authrtCd = authrtCd;
    }
    public Long getMenuSn()
    {
        return menuSn;
    }
    public void setMenuSn(Long menuSn)
    {
        this.menuSn = menuSn;
    }
    public String getAuthrtMenuRoleRmrk()
    {
        return authrtMenuRoleRmrk;
    }
    public void setAuthrtMenuRoleRmrk(String authrtMenuRoleRmrk)
    {
        this.authrtMenuRoleRmrk = authrtMenuRoleRmrk;
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
    public void setRegDt(String regDt)
    {
        this.regDt = regDt;
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
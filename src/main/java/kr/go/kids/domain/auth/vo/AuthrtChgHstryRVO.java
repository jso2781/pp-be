package kr.go.kids.domain.auth.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_권한변경이력기본", description = "대국민포털_권한변경이력기본 Search Result VO")
public class AuthrtChgHstryRVO
{
    /**
     * 권한변경일련번호
     */
    @Schema(description = "권한변경일련번호", type = "Long")
    private Long authrtChgSn;

    /**
     * 권한코드
     */
    @Schema(description = "권한코드", type = "String")
    private String authrtCd;

    /**
     * 메뉴일련번호
     */
    @Schema(description = "메뉴일련번호", type = "String")
    private String menuSn;

    /**
     * 적용대상유형
     */
    @Schema(description = "적용대상유형", type = "String")
    private String aplcnTrgtType;

    /**
     * 변경역할목록
     */
    @Schema(description = "변경역할목록", type = "String")
    private String chgRoleList;

    /**
     * 적용대상
     */
    @Schema(description = "적용대상", type = "String")
    private String aplcnTrgt;

    /**
     * 변경유형
     */
    @Schema(description = "변경유형", type = "String")
    private String chgType;

    /**
     * 비고
     */
    @Schema(description = "비고", type = "String")
    private String rmrk;

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
     * 등록프로그램아이디
     */
    @Schema(description = "등록프로그램아이디", type = "String")
    private String regPrgrmId;

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

    /**
     * 수정프로그램아이디
     */
    @Schema(description = "수정프로그램아이디", type = "String")
    private String mdfcnPrgrmId;

    public Long getAuthrtChgSn()
    {
        return authrtChgSn;
    }
    public void setAuthrtChgSn(Long authrtChgSn)
    {
        this.authrtChgSn = authrtChgSn;
    }
    public String getAuthrtCd()
    {
        return authrtCd;
    }
    public void setAuthrtCd(String authrtCd)
    {
        this.authrtCd = authrtCd;
    }
    public String getMenuSn()
    {
        return menuSn;
    }
    public void setMenuSn(String menuSn)
    {
        this.menuSn = menuSn;
    }
    public String getAplcnTrgtType()
    {
        return aplcnTrgtType;
    }
    public void setAplcnTrgtType(String aplcnTrgtType)
    {
        this.aplcnTrgtType = aplcnTrgtType;
    }
    public String getChgRoleList()
    {
        return chgRoleList;
    }
    public void setChgRoleList(String chgRoleList)
    {
        this.chgRoleList = chgRoleList;
    }
    public String getAplcnTrgt()
    {
        return aplcnTrgt;
    }
    public void setAplcnTrgt(String aplcnTrgt)
    {
        this.aplcnTrgt = aplcnTrgt;
    }
    public String getChgType()
    {
        return chgType;
    }
    public void setChgType(String chgType)
    {
        this.chgType = chgType;
    }
    public String getRmrk()
    {
        return rmrk;
    }
    public void setRmrk(String rmrk)
    {
        this.rmrk = rmrk;
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
    public String getRegPrgrmId()
    {
        return regPrgrmId;
    }
    public void setRegPrgrmId(String regPrgrmId)
    {
        this.regPrgrmId = regPrgrmId;
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
    public String getMdfcnPrgrmId()
    {
        return mdfcnPrgrmId;
    }
    public void setMdfcnPrgrmId(String mdfcnPrgrmId)
    {
        this.mdfcnPrgrmId = mdfcnPrgrmId;
    }

}
package kr.or.kids.domain.auth.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_권한변경이력기본", description = "대국민포털_권한변경이력기본 Search Parameter VO")
public class AuthrtChgHstryPVO
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
    private String aplcnTrgtTypeCd;

    /**
     * 변경역할목록
     */
    @Schema(description = "변경역할목록", type = "String")
    private String chgRoleListCn;

    /**
     * 적용대상
     */
    @Schema(description = "적용대상", type = "String")
    private String aplcnTrgtNm;

    /**
     * 변경유형
     */
    @Schema(description = "변경유형", type = "String")
    private String chgTypeCd;

    /**
     * 비고
     */
    @Schema(description = "비고", type = "String")
    private String authrtChgRmrkCn;

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
    public String getAplcnTrgtTypeCd()
    {
        return aplcnTrgtTypeCd;
    }
    public void setAplcnTrgtTypeCd(String aplcnTrgtTypeCd)
    {
        this.aplcnTrgtTypeCd = aplcnTrgtTypeCd;
    }
    public String getChgRoleListCn()
    {
        return chgRoleListCn;
    }
    public void setChgRoleListCn(String chgRoleListCn)
    {
        this.chgRoleListCn = chgRoleListCn;
    }
    public String getAplcnTrgtNm()
    {
        return aplcnTrgtNm;
    }
    public void setAplcnTrgtNm(String aplcnTrgtNm)
    {
        this.aplcnTrgtNm = aplcnTrgtNm;
    }
    public String getChgTypeCd()
    {
        return chgTypeCd;
    }
    public void setChgTypeCd(String chgTypeCd)
    {
        this.chgTypeCd = chgTypeCd;
    }
    public String getAuthrtChgRmrkCn()
    {
        return authrtChgRmrkCn;
    }
    public void setAuthrtChgRmrkCn(String authrtChgRmrkCn)
    {
        this.authrtChgRmrkCn = authrtChgRmrkCn;
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
package kr.go.kids.domain.auth.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_메뉴상세", description = "대국민포털_메뉴상세 Search Parameter VO")
public class MenuDPVO
{
    /**
     * 메뉴일련번호
     */
    @Schema(description = "메뉴일련번호", type = "Long")
    private Long menuSn;

    /**
     * 메뉴URL주소
     */
    @Schema(description = "메뉴URL주소", type = "String")
    private String menuUrlAddr;

    /**
     * 메뉴새창명
     */
    @Schema(description = "메뉴새창명", type = "String")
    private String menuNpagNm;

    /**
     * 개인정보포함여부
     */
    @Schema(description = "개인정보포함여부", type = "String")
    private String prvcInclYn;

    /**
     * 만족도조사여부
     */
    @Schema(description = "만족도조사여부", type = "String")
    private String dgstfnExmnYn;

    /**
     * 메뉴노출여부
     */
    @Schema(description = "메뉴노출여부", type = "String")
    private String menuExpsrYn;

    /**
     * 부서정보노출여부
     */
    @Schema(description = "부서정보노출여부", type = "String")
    private String deptInfoExpsrYn;

    /**
     * 담당자정보노출여부
     */
    @Schema(description = "담당자정보노출여부", type = "String")
    private String picInfoExpsrYn;

    /**
     * 메뉴공공누리저작권유형코드
     */
    @Schema(description = "메뉴공공누리저작권유형코드", type = "String")
    private String menuKoglCprgtTypeCd;

    /**
     * 메뉴담당자아이디
     */
    @Schema(description = "메뉴담당자아이디", type = "String")
    private String menuPicId;

    /**
     * 메뉴담당부서번호
     */
    @Schema(description = "메뉴담당부서번호", type = "String")
    private String menuTkcgDeptNo;

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

    public Long getMenuSn()
    {
        return menuSn;
    }
    public void setMenuSn(Long menuSn)
    {
        this.menuSn = menuSn;
    }
    public String getMenuUrlAddr()
    {
        return menuUrlAddr;
    }
    public void setMenuUrlAddr(String menuUrlAddr)
    {
        this.menuUrlAddr = menuUrlAddr;
    }
    public String getMenuNpagNm()
    {
        return menuNpagNm;
    }
    public void setMenuNpagNm(String menuNpagNm)
    {
        this.menuNpagNm = menuNpagNm;
    }
    public String getPrvcInclYn()
    {
        return prvcInclYn;
    }
    public void setPrvcInclYn(String prvcInclYn)
    {
        this.prvcInclYn = prvcInclYn;
    }
    public String getDgstfnExmnYn()
    {
        return dgstfnExmnYn;
    }
    public void setDgstfnExmnYn(String dgstfnExmnYn)
    {
        this.dgstfnExmnYn = dgstfnExmnYn;
    }
    public String getMenuExpsrYn()
    {
        return menuExpsrYn;
    }
    public void setMenuExpsrYn(String menuExpsrYn)
    {
        this.menuExpsrYn = menuExpsrYn;
    }
    public String getDeptInfoExpsrYn()
    {
        return deptInfoExpsrYn;
    }
    public void setDeptInfoExpsrYn(String deptInfoExpsrYn)
    {
        this.deptInfoExpsrYn = deptInfoExpsrYn;
    }
    public String getPicInfoExpsrYn()
    {
        return picInfoExpsrYn;
    }
    public void setPicInfoExpsrYn(String picInfoExpsrYn)
    {
        this.picInfoExpsrYn = picInfoExpsrYn;
    }
    public String getMenuKoglCprgtTypeCd()
    {
        return menuKoglCprgtTypeCd;
    }
    public void setMenuKoglCprgtTypeCd(String menuKoglCprgtTypeCd)
    {
        this.menuKoglCprgtTypeCd = menuKoglCprgtTypeCd;
    }
    public String getMenuPicId()
    {
        return menuPicId;
    }
    public void setMenuPicId(String menuPicId)
    {
        this.menuPicId = menuPicId;
    }
    public String getMenuTkcgDeptNo()
    {
        return menuTkcgDeptNo;
    }
    public void setMenuTkcgDeptNo(String menuTkcgDeptNo)
    {
        this.menuTkcgDeptNo = menuTkcgDeptNo;
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
package kr.or.kids.domain.pp.auth.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_역할기본", description = "대국민포털_역할기본 Search Result VO")
public class RoleRVO
{
    /**
     * 역할코드
     */
    @Schema(description = "역할코드", type = "String")
    private String roleCd;

    /**
     * 역할명
     */
    @Schema(description = "역할명", type = "String")
    private String roleNm;

    /**
     * 역할유형
     */
    @Schema(description = "역할유형", type = "String")
    private String roleType;

    /**
     * 역할설명내용
     */
    @Schema(description = "역할설명내용", type = "String")
    private String roleExplnCn;

    /**
     * 사용여부
     */
    @Schema(description = "사용여부", type = "String")
    private String useYn;

    /**
     * 작성자부서명
     */
    @Schema(description = "작성자부서명", type = "String")
    private String wrtrDeptNm;

    /**
     * 수정자부서명
     */
    @Schema(description = "수정자부서명", type = "String")
    private String mdfrDeptNm;

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

    public String getRoleCd()
    {
        return roleCd;
    }
    public void setRoleCd(String roleCd)
    {
        this.roleCd = roleCd;
    }
    public String getRoleNm()
    {
        return roleNm;
    }
    public void setRoleNm(String roleNm)
    {
        this.roleNm = roleNm;
    }
    public String getRoleType()
    {
        return roleType;
    }
    public void setRoleType(String roleType)
    {
        this.roleType = roleType;
    }
    public String getRoleExplnCn()
    {
        return roleExplnCn;
    }
    public void setRoleExplnCn(String roleExplnCn)
    {
        this.roleExplnCn = roleExplnCn;
    }
    public String getUseYn()
    {
        return useYn;
    }
    public void setUseYn(String useYn)
    {
        this.useYn = useYn;
    }
    public String getWrtrDeptNm()
    {
        return wrtrDeptNm;
    }
    public void setWrtrDeptNm(String wrtrDeptNm)
    {
        this.wrtrDeptNm = wrtrDeptNm;
    }
    public String getMdfrDeptNm()
    {
        return mdfrDeptNm;
    }
    public void setMdfrDeptNm(String mdfrDeptNm)
    {
        this.mdfrDeptNm = mdfrDeptNm;
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
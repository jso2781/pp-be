package kr.go.kids.domain.emp.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_관리자정보기본", description = "대국민포털_관리자정보기본 Search Parameter VO")
public class EmpPVO
{
    /**
     * 직원번호
     */
    @Schema(description = "직원번호", type = "String")
    private String empNo;

    /**
     * 관리자암호화비밀번호
     */
    @Schema(description = "관리자암호화비밀번호", type = "String")
    private String mngrEnpswd;

    /**
     * 임시비밀번호여부
     */
    @Schema(description = "임시비밀번호여부", type = "String")
    private String tmprPswdYn;

    /**
     * 비밀번호오류횟수
     */
    @Schema(description = "비밀번호오류횟수", type = "Integer")
    private Integer pswdErrNmtm;

    /**
     * 이전암호화비밀번호
     */
    @Schema(description = "이전암호화비밀번호", type = "String")
    private String bfrEnpswd;

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

    public String getEmpNo()
    {
        return empNo;
    }
    public void setEmpNo(String empNo)
    {
        this.empNo = empNo;
    }
    public String getMngrEnpswd()
    {
        return mngrEnpswd;
    }
    public void setMngrEnpswd(String mngrEnpswd)
    {
        this.mngrEnpswd = mngrEnpswd;
    }
    public String getTmprPswdYn()
    {
        return tmprPswdYn;
    }
    public void setTmprPswdYn(String tmprPswdYn)
    {
        this.tmprPswdYn = tmprPswdYn;
    }
    public Integer getPswdErrNmtm()
    {
        return pswdErrNmtm;
    }
    public void setPswdErrNmtm(Integer pswdErrNmtm)
    {
        this.pswdErrNmtm = pswdErrNmtm;
    }
    public String getBfrEnpswd()
    {
        return bfrEnpswd;
    }
    public void setBfrEnpswd(String bfrEnpswd)
    {
        this.bfrEnpswd = bfrEnpswd;
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
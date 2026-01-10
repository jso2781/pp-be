package kr.go.kids.domain.auth.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_권한기본", description = "대국민포털_권한기본 Search Parameter VO")
public class AuthrtPVO
{
    /**
     * 권한코드
     */
    @Schema(description = "권한코드", type = "String")
    private String authrtCd;

    /**
     * 상위권한코드
     */
    @Schema(description = "상위권한코드", type = "Long")
    private Long upAuthrtCd;

    /**
     * 업무구분코드
     */
    @Schema(description = "업무구분코드", type = "String")
    private String taskSeCd;

    /**
     * 권한명
     */
    @Schema(description = "권한명", type = "String")
    private String authrtNm;

    /**
     * 권한유형
     */
    @Schema(description = "권한유형", type = "String")
    private String authrtType;

    /**
     * 권한설명
     */
    @Schema(description = "권한설명", type = "String")
    private String authrtExpln;

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

    public String getAuthrtCd()
    {
        return authrtCd;
    }
    public void setAuthrtCd(String authrtCd)
    {
        this.authrtCd = authrtCd;
    }
    public Long getUpAuthrtCd()
    {
        return upAuthrtCd;
    }
    public void setUpAuthrtCd(Long upAuthrtCd)
    {
        this.upAuthrtCd = upAuthrtCd;
    }
    public String getTaskSeCd()
    {
        return taskSeCd;
    }
    public void setTaskSeCd(String taskSeCd)
    {
        this.taskSeCd = taskSeCd;
    }
    public String getAuthrtNm()
    {
        return authrtNm;
    }
    public void setAuthrtNm(String authrtNm)
    {
        this.authrtNm = authrtNm;
    }
    public String getAuthrtType()
    {
        return authrtType;
    }
    public void setAuthrtType(String authrtType)
    {
        this.authrtType = authrtType;
    }
    public String getAuthrtExpln()
    {
        return authrtExpln;
    }
    public void setAuthrtExpln(String authrtExpln)
    {
        this.authrtExpln = authrtExpln;
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
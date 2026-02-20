package kr.or.kids.domain.auth.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_권한기본", description = "대국민포털_권한기본 Search Result VO")
public class AuthrtRVO
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
    private String authrtTypeCd;

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
    public String getAuthrtTypeCd()
    {
        return authrtTypeCd;
    }
    public void setAuthrtTypeCd(String authrtTypeCd)
    {
        this.authrtTypeCd = authrtTypeCd;
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
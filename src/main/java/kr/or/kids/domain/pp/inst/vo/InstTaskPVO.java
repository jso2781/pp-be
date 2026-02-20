package kr.or.kids.domain.pp.inst.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_기관업무기본", description = "대국민포털_기관업무기본 Search Parameter VO")
public class InstTaskPVO
{
    /**
     * 사업자등록번호
     */
    @Schema(description = "사업자등록번호", type = "String")
    private String brno;

    /**
     * 업무구분코드
     */
    @Schema(description = "업무구분코드", type = "String")
    private String taskSeCd;

    /**
     * 회원아이디
     */
    @Schema(description = "회원아이디", type = "String")
    private String mbrId;

    /**
     * 사용여부
     */
    @Schema(description = "사용여부", type = "String")
    private String useYn;

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

    public String getBrno()
    {
        return brno;
    }
    public void setBrno(String brno)
    {
        this.brno = brno;
    }
    public String getTaskSeCd()
    {
        return taskSeCd;
    }
    public void setTaskSeCd(String taskSeCd)
    {
        this.taskSeCd = taskSeCd;
    }
    public String getMbrId()
    {
        return mbrId;
    }
    public void setMbrId(String mbrId)
    {
        this.mbrId = mbrId;
    }
    public String getUseYn()
    {
        return useYn;
    }
    public void setUseYn(String useYn)
    {
        this.useYn = useYn;
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
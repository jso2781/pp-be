package kr.or.kids.domain.task.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_업무코드기본", description = "대국민포털_업무코드기본 Search Parameter VO")
public class TaskCdPVO
{
    /**
     * 업무코드
     */
    @Schema(description = "업무코드", type = "String")
    private String taskCd;

    /**
     * 업무코드명
     */
    @Schema(description = "업무코드명", type = "String")
    private String taskCdNm;

    /**
     * 상위업무코드
     */
    @Schema(description = "상위업무코드", type = "String")
    private String upTaskCd;

    /**
     * 업무코드값
     */
    @Schema(description = "업무코드값", type = "String")
    private String taskCdVl;

    /**
     * 업무코드설명
     */
    @Schema(description = "업무코드설명", type = "String")
    private String taskCdExpln;

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

    public String getTaskCd()
    {
        return taskCd;
    }
    public void setTaskCd(String taskCd)
    {
        this.taskCd = taskCd;
    }
    public String getTaskCdNm()
    {
        return taskCdNm;
    }
    public void setTaskCdNm(String taskCdNm)
    {
        this.taskCdNm = taskCdNm;
    }
    public String getUpTaskCd()
    {
        return upTaskCd;
    }
    public void setUpTaskCd(String upTaskCd)
    {
        this.upTaskCd = upTaskCd;
    }
    public String getTaskCdVl()
    {
        return taskCdVl;
    }
    public void setTaskCdVl(String taskCdVl)
    {
        this.taskCdVl = taskCdVl;
    }
    public String getTaskCdExpln()
    {
        return taskCdExpln;
    }
    public void setTaskCdExpln(String taskCdExpln)
    {
        this.taskCdExpln = taskCdExpln;
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
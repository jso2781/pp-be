package kr.or.kids.domain.pp.form.vo;

import java.math.BigInteger;
import io.swagger.v3.oas.annotations.media.Schema;


@Schema(name = "대국민포털_양식기본", description = "대국민포털_양식기본 Search Parameter VO")
public class FormPVO
{
    /**
     * 양식일련번호
     */
    @Schema(description = "양식일련번호", type = "BigInteger")
    private BigInteger formSn;

    /**
     * 업무코드
     */
    @Schema(description = "업무코드", type = "String")
    private String taskCd;

    /**
     * 양식명
     */
    @Schema(description = "양식명", type = "String")
    private String formNm;

    /**
     * 양식경로
     */
    @Schema(description = "양식경로", type = "String")
    private String formPath;

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

    public BigInteger getFormSn()
    {
        return formSn;
    }
    public void setFormSn(BigInteger formSn)
    {
        this.formSn = formSn;
    }
    public String getTaskCd()
    {
        return taskCd;
    }
    public void setTaskCd(String taskCd)
    {
        this.taskCd = taskCd;
    }
    public String getFormNm()
    {
        return formNm;
    }
    public void setFormNm(String formNm)
    {
        this.formNm = formNm;
    }
    public String getFormPath()
    {
        return formPath;
    }
    public void setFormPath(String formPath)
    {
        this.formPath = formPath;
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
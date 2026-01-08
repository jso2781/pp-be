package kr.go.kids.domain.pp.trm.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_용어기본", description = "대국민포털_용어기본 Search Result VO")
public class TrmRVO
{
    /**
     * 표준용어명
     */
    @Schema(description = "표준용어명", type = "String")
    private String stdTrmNm;

    /**
     * 시스템구분명
     */
    @Schema(description = "시스템구분명", type = "String")
    private String sysSeNm;

    /**
     * 항목원천명
     */
    @Schema(description = "항목원천명", type = "String")
    private String artclSouNm;

    /**
     * 표준용어영문약어명
     */
    @Schema(description = "표준용어영문약어명", type = "String")
    private String stdTrmEngAbbrNm;

    /**
     * 속성유형명
     */
    @Schema(description = "속성유형명", type = "String")
    private String atrbTypeNm;

    /**
     * 공통표준도메인명
     */
    @Schema(description = "공통표준도메인명", type = "String")
    private String comStdDmnNm;

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

    public String getStdTrmNm()
    {
        return stdTrmNm;
    }
    public void setStdTrmNm(String stdTrmNm)
    {
        this.stdTrmNm = stdTrmNm;
    }
    public String getSysSeNm()
    {
        return sysSeNm;
    }
    public void setSysSeNm(String sysSeNm)
    {
        this.sysSeNm = sysSeNm;
    }
    public String getArtclSouNm()
    {
        return artclSouNm;
    }
    public void setArtclSouNm(String artclSouNm)
    {
        this.artclSouNm = artclSouNm;
    }
    public String getStdTrmEngAbbrNm()
    {
        return stdTrmEngAbbrNm;
    }
    public void setStdTrmEngAbbrNm(String stdTrmEngAbbrNm)
    {
        this.stdTrmEngAbbrNm = stdTrmEngAbbrNm;
    }
    public String getAtrbTypeNm()
    {
        return atrbTypeNm;
    }
    public void setAtrbTypeNm(String atrbTypeNm)
    {
        this.atrbTypeNm = atrbTypeNm;
    }
    public String getComStdDmnNm()
    {
        return comStdDmnNm;
    }
    public void setComStdDmnNm(String comStdDmnNm)
    {
        this.comStdDmnNm = comStdDmnNm;
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
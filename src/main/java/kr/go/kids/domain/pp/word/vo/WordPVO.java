package kr.go.kids.domain.pp.word.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_단어기본", description = "대국민포털_단어기본 Search Parameter VO")
public class WordPVO
{
    /**
     * 공통표준단어명
     */
    @Schema(description = "공통표준단어명", type = "String")
    private String comStdWordNm;

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
     * 공통표준단어영문약어명
     */
    @Schema(description = "공통표준단어영문약어명", type = "String")
    private String comStdWordEngAbbrNm;

    /**
     * 공통표준단어영문명
     */
    @Schema(description = "공통표준단어영문명", type = "String")
    private String comStdWordEngNm;

    /**
     * 공통표준단어설명
     */
    @Schema(description = "공통표준단어설명", type = "String")
    private String comStdWordExpln;

    /**
     * 형식단어여부
     */
    @Schema(description = "형식단어여부", type = "String")
    private String frmWordYn;

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

    public String getComStdWordNm()
    {
        return comStdWordNm;
    }
    public void setComStdWordNm(String comStdWordNm)
    {
        this.comStdWordNm = comStdWordNm;
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
    public String getComStdWordEngAbbrNm()
    {
        return comStdWordEngAbbrNm;
    }
    public void setComStdWordEngAbbrNm(String comStdWordEngAbbrNm)
    {
        this.comStdWordEngAbbrNm = comStdWordEngAbbrNm;
    }
    public String getComStdWordEngNm()
    {
        return comStdWordEngNm;
    }
    public void setComStdWordEngNm(String comStdWordEngNm)
    {
        this.comStdWordEngNm = comStdWordEngNm;
    }
    public String getComStdWordExpln()
    {
        return comStdWordExpln;
    }
    public void setComStdWordExpln(String comStdWordExpln)
    {
        this.comStdWordExpln = comStdWordExpln;
    }
    public String getFrmWordYn()
    {
        return frmWordYn;
    }
    public void setFrmWordYn(String frmWordYn)
    {
        this.frmWordYn = frmWordYn;
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
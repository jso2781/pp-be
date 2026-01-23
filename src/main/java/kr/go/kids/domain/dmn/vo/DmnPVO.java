package kr.go.kids.domain.dmn.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_도메인기본", description = "대국민포털_도메인기본 Search Parameter VO")
public class DmnPVO
{
    /**
     * 공통표준도메인명
     */
    @Schema(description = "공통표준도메인명", type = "String")
    private String comStdDmnNm;

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
     * 공통표준도메인분류명
     */
    @Schema(description = "공통표준도메인분류명", type = "String")
    private String comStdDmnClsfNm;

    /**
     * 공통표준도메인그룹명
     */
    @Schema(description = "공통표준도메인그룹명", type = "String")
    private String comStdDmnGroupNm;

    /**
     * 공통표준도메인설명
     */
    @Schema(description = "공통표준도메인설명", type = "String")
    private String comStdDmnExpln;

    /**
     * 도메인유형명
     */
    @Schema(description = "도메인유형명", type = "String")
    private String dmnTypeNm;

    /**
     * 도메인길이
     */
    @Schema(description = "도메인길이", type = "Long")
    private Long dmnLen;

    /**
     * 도메인소수점길이
     */
    @Schema(description = "도메인소수점길이", type = "Long")
    private Long dmnDcptLen;

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

    public String getComStdDmnNm()
    {
        return comStdDmnNm;
    }
    public void setComStdDmnNm(String comStdDmnNm)
    {
        this.comStdDmnNm = comStdDmnNm;
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
    public String getComStdDmnClsfNm()
    {
        return comStdDmnClsfNm;
    }
    public void setComStdDmnClsfNm(String comStdDmnClsfNm)
    {
        this.comStdDmnClsfNm = comStdDmnClsfNm;
    }
    public String getComStdDmnGroupNm()
    {
        return comStdDmnGroupNm;
    }
    public void setComStdDmnGroupNm(String comStdDmnGroupNm)
    {
        this.comStdDmnGroupNm = comStdDmnGroupNm;
    }
    public String getComStdDmnExpln()
    {
        return comStdDmnExpln;
    }
    public void setComStdDmnExpln(String comStdDmnExpln)
    {
        this.comStdDmnExpln = comStdDmnExpln;
    }
    public String getDmnTypeNm()
    {
        return dmnTypeNm;
    }
    public void setDmnTypeNm(String dmnTypeNm)
    {
        this.dmnTypeNm = dmnTypeNm;
    }
    public Long getDmnLen()
    {
        return dmnLen;
    }
    public void setDmnLen(Long dmnLen)
    {
        this.dmnLen = dmnLen;
    }
    public Long getDmnDcptLen()
    {
        return dmnDcptLen;
    }
    public void setDmnDcptLen(Long dmnDcptLen)
    {
        this.dmnDcptLen = dmnDcptLen;
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
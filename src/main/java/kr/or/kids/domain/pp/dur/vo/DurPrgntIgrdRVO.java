package kr.or.kids.domain.pp.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_DUR임부금기성분기본", description = "대국민포털_DUR임부금기성분기본 Search Result VO")
public class DurPrgntIgrdRVO
{
    /**
     * 임부금기일련번호
     */
    @Schema(description = "임부금기일련번호", type = "String")
    private String prgntBannSn;

    /**
     * 성분명
     */
    @Schema(description = "성분명", type = "String")
    private String igrdNm;

    /**
     * 금기등급
     */
    @Schema(description = "금기등급", type = "String")
    private String bannGrd;

    /**
     * 비고
     */
    @Schema(description = "비고", type = "String")
    private String rmrk;

    /**
     * 상세내용
     */
    @Schema(description = "상세내용", type = "String")
    private String dtlCn;

    /**
     * 식약처제품명
     */
    @Schema(description = "식약처제품명", type = "String")
    private String mfdsPrdctNm;

    /**
     * 식약처성분코드
     */
    @Schema(description = "식약처성분코드", type = "String")
    private String mfdsIgrdCd;

    /**
     * 식약처성분명
     */
    @Schema(description = "식약처성분명", type = "String")
    private String mfdsIgrdNm;

    /**
     * 적용년월
     */
    @Schema(description = "적용년월", type = "String")
    private String aplcnYm;

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

    public String getPrgntBannSn()
    {
        return prgntBannSn;
    }
    public void setPrgntBannSn(String prgntBannSn)
    {
        this.prgntBannSn = prgntBannSn;
    }
    public String getIgrdNm()
    {
        return igrdNm;
    }
    public void setIgrdNm(String igrdNm)
    {
        this.igrdNm = igrdNm;
    }
    public String getBannGrd()
    {
        return bannGrd;
    }
    public void setBannGrd(String bannGrd)
    {
        this.bannGrd = bannGrd;
    }
    public String getRmrk()
    {
        return rmrk;
    }
    public void setRmrk(String rmrk)
    {
        this.rmrk = rmrk;
    }
    public String getDtlCn()
    {
        return dtlCn;
    }
    public void setDtlCn(String dtlCn)
    {
        this.dtlCn = dtlCn;
    }
    public String getMfdsPrdctNm()
    {
        return mfdsPrdctNm;
    }
    public void setMfdsPrdctNm(String mfdsPrdctNm)
    {
        this.mfdsPrdctNm = mfdsPrdctNm;
    }
    public String getMfdsIgrdCd()
    {
        return mfdsIgrdCd;
    }
    public void setMfdsIgrdCd(String mfdsIgrdCd)
    {
        this.mfdsIgrdCd = mfdsIgrdCd;
    }
    public String getMfdsIgrdNm()
    {
        return mfdsIgrdNm;
    }
    public void setMfdsIgrdNm(String mfdsIgrdNm)
    {
        this.mfdsIgrdNm = mfdsIgrdNm;
    }
    public String getAplcnYm()
    {
        return aplcnYm;
    }
    public void setAplcnYm(String aplcnYm)
    {
        this.aplcnYm = aplcnYm;
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
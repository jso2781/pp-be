package kr.go.kids.domain.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_DUR임부금기품목기본", description = "대국민포털_DUR임부금기품목기본 Search Result VO")
public class DurPrgntItemRVO
{
    /**
     * 임부금기일련번호
     */
    @Schema(description = "임부금기일련번호", type = "String")
    private String prgntBannSn;

    /**
     * 제품코드
     */
    @Schema(description = "제품코드", type = "String")
    private String prdctCd;

    /**
     * 성분명
     */
    @Schema(description = "성분명", type = "String")
    private String igrdNm;

    /**
     * 성분코드
     */
    @Schema(description = "성분코드", type = "String")
    private String igrdCd;

    /**
     * 제품명
     */
    @Schema(description = "제품명", type = "String")
    private String prdctNm;

    /**
     * 업체명
     */
    @Schema(description = "업체명", type = "String")
    private String bzentyNm;

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
     * 고시일자
     */
    @Schema(description = "고시일자", type = "String")
    private String ancmntYmd;

    /**
     * 고시번호
     */
    @Schema(description = "고시번호", type = "String")
    private String ancmntNo;

    /**
     * 금기등급
     */
    @Schema(description = "금기등급", type = "Integer")
    private Integer bannGrd;

    /**
     * 상세정보
     */
    @Schema(description = "상세정보", type = "String")
    private String dtlInfo;

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
    public String getPrdctCd()
    {
        return prdctCd;
    }
    public void setPrdctCd(String prdctCd)
    {
        this.prdctCd = prdctCd;
    }
    public String getIgrdNm()
    {
        return igrdNm;
    }
    public void setIgrdNm(String igrdNm)
    {
        this.igrdNm = igrdNm;
    }
    public String getIgrdCd()
    {
        return igrdCd;
    }
    public void setIgrdCd(String igrdCd)
    {
        this.igrdCd = igrdCd;
    }
    public String getPrdctNm()
    {
        return prdctNm;
    }
    public void setPrdctNm(String prdctNm)
    {
        this.prdctNm = prdctNm;
    }
    public String getBzentyNm()
    {
        return bzentyNm;
    }
    public void setBzentyNm(String bzentyNm)
    {
        this.bzentyNm = bzentyNm;
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
    public String getAncmntYmd()
    {
        return ancmntYmd;
    }
    public void setAncmntYmd(String ancmntYmd)
    {
        this.ancmntYmd = ancmntYmd;
    }
    public String getAncmntNo()
    {
        return ancmntNo;
    }
    public void setAncmntNo(String ancmntNo)
    {
        this.ancmntNo = ancmntNo;
    }
    public Integer getBannGrd()
    {
        return bannGrd;
    }
    public void setBannGrd(Integer bannGrd)
    {
        this.bannGrd = bannGrd;
    }
    public String getDtlInfo()
    {
        return dtlInfo;
    }
    public void setDtlInfo(String dtlInfo)
    {
        this.dtlInfo = dtlInfo;
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
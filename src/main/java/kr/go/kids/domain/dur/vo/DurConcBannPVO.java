package kr.go.kids.domain.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_DUR병용금기기본", description = "대국민포털_DUR병용금기기본 Search Parameter VO")
public class DurConcBannPVO
{
    /**
     * 병용금기일련번호
     */
    @Schema(description = "병용금기일련번호", type = "String")
    private String concBannSn;

    /**
     * 제품코드1
     */
    @Schema(description = "제품코드1", type = "String")
    private String prdctCd1;

    /**
     * 제품코드2
     */
    @Schema(description = "제품코드2", type = "String")
    private String prdctCd2;

    /**
     * 성분명1
     */
    @Schema(description = "성분명1", type = "String")
    private String igrdNm1;

    /**
     * 성분코드1
     */
    @Schema(description = "성분코드1", type = "String")
    private String igrdCd1;

    /**
     * 제품명1
     */
    @Schema(description = "제품명1", type = "String")
    private String prdctNm1;

    /**
     * 업체명1
     */
    @Schema(description = "업체명1", type = "String")
    private String bzentyNm1;

    /**
     * 구분1
     */
    @Schema(description = "구분1", type = "String")
    private String se1;

    /**
     * 식약처제품명1
     */
    @Schema(description = "식약처제품명1", type = "String")
    private String mfdsPrdctNm1;

    /**
     * 식약처성분코드1
     */
    @Schema(description = "식약처성분코드1", type = "String")
    private String mfdsIgrdCd1;

    /**
     * 식약처성분명1
     */
    @Schema(description = "식약처성분명1", type = "String")
    private String mfdsIgrdNm1;

    /**
     * 성분명2
     */
    @Schema(description = "성분명2", type = "String")
    private String igrdNm2;

    /**
     * 성분코드2
     */
    @Schema(description = "성분코드2", type = "String")
    private String igrdCd2;

    /**
     * 제품명2
     */
    @Schema(description = "제품명2", type = "String")
    private String prdctNm2;

    /**
     * 업체명2
     */
    @Schema(description = "업체명2", type = "String")
    private String bzentyNm2;

    /**
     * 구분2
     */
    @Schema(description = "구분2", type = "String")
    private String se2;

    /**
     * 식약처제품명2
     */
    @Schema(description = "식약처제품명2", type = "String")
    private String mfdsPrdctNm2;

    /**
     * 식약처성분코드2
     */
    @Schema(description = "식약처성분코드2", type = "String")
    private String mfdsIgrdCd2;

    /**
     * 식약처성분명2
     */
    @Schema(description = "식약처성분명2", type = "String")
    private String mfdsIgrdNm2;

    /**
     * 고시번호
     */
    @Schema(description = "고시번호", type = "String")
    private String ancmntNo;

    /**
     * 고시적용일
     */
    @Schema(description = "고시적용일", type = "String")
    private String ancmntAplcnDay;

    /**
     * 주의사항
     */
    @Schema(description = "주의사항", type = "String")
    private String cutnMttr;

    /**
     * 비고
     */
    @Schema(description = "비고", type = "String")
    private String rmrkCn;

    /**
     * 유형코드
     */
    @Schema(description = "유형코드", type = "String")
    private String typeCd;

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

    public String getDurConcBannSn()
    {
        return concBannSn;
    }
    public void setDurConcBannSn(String concBannSn)
    {
        this.concBannSn = concBannSn;
    }
    public String getPrdctCd1()
    {
        return prdctCd1;
    }
    public void setPrdctCd1(String prdctCd1)
    {
        this.prdctCd1 = prdctCd1;
    }
    public String getPrdctCd2()
    {
        return prdctCd2;
    }
    public void setPrdctCd2(String prdctCd2)
    {
        this.prdctCd2 = prdctCd2;
    }
    public String getIgrdNm1()
    {
        return igrdNm1;
    }
    public void setIgrdNm1(String igrdNm1)
    {
        this.igrdNm1 = igrdNm1;
    }
    public String getIgrdCd1()
    {
        return igrdCd1;
    }
    public void setIgrdCd1(String igrdCd1)
    {
        this.igrdCd1 = igrdCd1;
    }
    public String getPrdctNm1()
    {
        return prdctNm1;
    }
    public void setPrdctNm1(String prdctNm1)
    {
        this.prdctNm1 = prdctNm1;
    }
    public String getBzentyNm1()
    {
        return bzentyNm1;
    }
    public void setBzentyNm1(String bzentyNm1)
    {
        this.bzentyNm1 = bzentyNm1;
    }
    public String getSe1()
    {
        return se1;
    }
    public void setSe1(String se1)
    {
        this.se1 = se1;
    }
    public String getMfdsPrdctNm1()
    {
        return mfdsPrdctNm1;
    }
    public void setMfdsPrdctNm1(String mfdsPrdctNm1)
    {
        this.mfdsPrdctNm1 = mfdsPrdctNm1;
    }
    public String getMfdsIgrdCd1()
    {
        return mfdsIgrdCd1;
    }
    public void setMfdsIgrdCd1(String mfdsIgrdCd1)
    {
        this.mfdsIgrdCd1 = mfdsIgrdCd1;
    }
    public String getMfdsIgrdNm1()
    {
        return mfdsIgrdNm1;
    }
    public void setMfdsIgrdNm1(String mfdsIgrdNm1)
    {
        this.mfdsIgrdNm1 = mfdsIgrdNm1;
    }
    public String getIgrdNm2()
    {
        return igrdNm2;
    }
    public void setIgrdNm2(String igrdNm2)
    {
        this.igrdNm2 = igrdNm2;
    }
    public String getIgrdCd2()
    {
        return igrdCd2;
    }
    public void setIgrdCd2(String igrdCd2)
    {
        this.igrdCd2 = igrdCd2;
    }
    public String getPrdctNm2()
    {
        return prdctNm2;
    }
    public void setPrdctNm2(String prdctNm2)
    {
        this.prdctNm2 = prdctNm2;
    }
    public String getBzentyNm2()
    {
        return bzentyNm2;
    }
    public void setBzentyNm2(String bzentyNm2)
    {
        this.bzentyNm2 = bzentyNm2;
    }
    public String getSe2()
    {
        return se2;
    }
    public void setSe2(String se2)
    {
        this.se2 = se2;
    }
    public String getMfdsPrdctNm2()
    {
        return mfdsPrdctNm2;
    }
    public void setMfdsPrdctNm2(String mfdsPrdctNm2)
    {
        this.mfdsPrdctNm2 = mfdsPrdctNm2;
    }
    public String getMfdsIgrdCd2()
    {
        return mfdsIgrdCd2;
    }
    public void setMfdsIgrdCd2(String mfdsIgrdCd2)
    {
        this.mfdsIgrdCd2 = mfdsIgrdCd2;
    }
    public String getMfdsIgrdNm2()
    {
        return mfdsIgrdNm2;
    }
    public void setMfdsIgrdNm2(String mfdsIgrdNm2)
    {
        this.mfdsIgrdNm2 = mfdsIgrdNm2;
    }
    public String getAncmntNo()
    {
        return ancmntNo;
    }
    public void setAncmntNo(String ancmntNo)
    {
        this.ancmntNo = ancmntNo;
    }
    public String getAncmntAplcnDay()
    {
        return ancmntAplcnDay;
    }
    public void setAncmntAplcnDay(String ancmntAplcnDay)
    {
        this.ancmntAplcnDay = ancmntAplcnDay;
    }
    public String getCutnMttr()
    {
        return cutnMttr;
    }
    public void setCutnMttr(String cutnMttr)
    {
        this.cutnMttr = cutnMttr;
    }
    public String getRmrkCn()
    {
        return rmrkCn;
    }
    public void setRmrkCn(String rmrkCn)
    {
        this.rmrkCn = rmrkCn;
    }
    public String getTypeCd()
    {
        return typeCd;
    }
    public void setTypeCd(String typeCd)
    {
        this.typeCd = typeCd;
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
package kr.go.kids.domain.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_DUR노인주의해열진통소염제기본", description = "대국민포털_DUR노인주의해열진통소염제기본 Search Parameter VO")
public class DurSnctzMedPVO
{
    /**
     * 노인주의약일련번호
     */
    @Schema(description = "노인주의약일련번호", type = "String")
    private String snctzCutnMedSn;

    /**
     * 제품코드
     */
    @Schema(description = "제품코드", type = "String")
    private String prdctCd;

    /**
     * 성분코드
     */
    @Schema(description = "성분코드", type = "String")
    private String igrdCd;

    /**
     * 성분명
     */
    @Schema(description = "성분명", type = "String")
    private String igrdNm;

    /**
     * 제품명
     */
    @Schema(description = "제품명", type = "String")
    private String prdctNm;

    /**
     * 업소명
     */
    @Schema(description = "업소명", type = "String")
    private String entpNm;

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
     * 약품상세정보
     */
    @Schema(description = "약품상세정보", type = "String")
    private String mdcnDtlInfo;

    /**
     * 적용년월
     */
    @Schema(description = "적용년월", type = "String")
    private String aplcnYm;

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

    public String getSnctzCutnMedSn()
    {
        return snctzCutnMedSn;
    }
    public void setSnctzCutnMedSn(String snctzCutnMedSn)
    {
        this.snctzCutnMedSn = snctzCutnMedSn;
    }
    public String getPrdctCd()
    {
        return prdctCd;
    }
    public void setPrdctCd(String prdctCd)
    {
        this.prdctCd = prdctCd;
    }
    public String getIgrdCd()
    {
        return igrdCd;
    }
    public void setIgrdCd(String igrdCd)
    {
        this.igrdCd = igrdCd;
    }
    public String getIgrdNm()
    {
        return igrdNm;
    }
    public void setIgrdNm(String igrdNm)
    {
        this.igrdNm = igrdNm;
    }
    public String getPrdctNm()
    {
        return prdctNm;
    }
    public void setPrdctNm(String prdctNm)
    {
        this.prdctNm = prdctNm;
    }
    public String getEntpNm()
    {
        return entpNm;
    }
    public void setEntpNm(String entpNm)
    {
        this.entpNm = entpNm;
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
    public String getMdcnDtlInfo()
    {
        return mdcnDtlInfo;
    }
    public void setMdcnDtlInfo(String mdcnDtlInfo)
    {
        this.mdcnDtlInfo = mdcnDtlInfo;
    }
    public String getAplcnYm()
    {
        return aplcnYm;
    }
    public void setAplcnYm(String aplcnYm)
    {
        this.aplcnYm = aplcnYm;
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
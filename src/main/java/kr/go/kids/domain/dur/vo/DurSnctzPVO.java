package kr.go.kids.domain.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_DUR노인주의기본", description = "대국민포털_DUR노인주의기본 Search Parameter VO")
public class DurSnctzPVO
{
    /**
     * 노인주의일련번호
     */
    @Schema(description = "노인주의일련번호", type = "String")
    private String snctzCutnSn;

    /**
     * 제품코드
     */
    @Schema(description = "제품코드", type = "String")
    private String prdctCd;

    /**
     * DUR성분명
     */
    @Schema(description = "DUR성분명", type = "String")
    private String durIgrdNm;

    /**
     * DUR성분코드
     */
    @Schema(description = "DUR성분코드", type = "String")
    private String durIgrdCd;

    /**
     * DUR제품명
     */
    @Schema(description = "DUR제품명", type = "String")
    private String durPrdctNm;

    /**
     * DUR업체명
     */
    @Schema(description = "DUR업체명", type = "String")
    private String durBzentyNm;

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
     * 공고일자
     */
    @Schema(description = "공고일자", type = "String")
    private String pbancYmd;

    /**
     * 공고번호
     */
    @Schema(description = "공고번호", type = "String")
    private String pbancNo;

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
     * 비고
     */
    @Schema(description = "비고", type = "String")
    private String rmrk;

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

    public String getSnctzCutnSn()
    {
        return snctzCutnSn;
    }
    public void setSnctzCutnSn(String snctzCutnSn)
    {
        this.snctzCutnSn = snctzCutnSn;
    }
    public String getPrdctCd()
    {
        return prdctCd;
    }
    public void setPrdctCd(String prdctCd)
    {
        this.prdctCd = prdctCd;
    }
    public String getDurIgrdNm()
    {
        return durIgrdNm;
    }
    public void setDurIgrdNm(String durIgrdNm)
    {
        this.durIgrdNm = durIgrdNm;
    }
    public String getDurIgrdCd()
    {
        return durIgrdCd;
    }
    public void setDurIgrdCd(String durIgrdCd)
    {
        this.durIgrdCd = durIgrdCd;
    }
    public String getDurPrdctNm()
    {
        return durPrdctNm;
    }
    public void setDurPrdctNm(String durPrdctNm)
    {
        this.durPrdctNm = durPrdctNm;
    }
    public String getDurBzentyNm()
    {
        return durBzentyNm;
    }
    public void setDurBzentyNm(String durBzentyNm)
    {
        this.durBzentyNm = durBzentyNm;
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
    public String getPbancYmd()
    {
        return pbancYmd;
    }
    public void setPbancYmd(String pbancYmd)
    {
        this.pbancYmd = pbancYmd;
    }
    public String getPbancNo()
    {
        return pbancNo;
    }
    public void setPbancNo(String pbancNo)
    {
        this.pbancNo = pbancNo;
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
    public String getRmrk()
    {
        return rmrk;
    }
    public void setRmrk(String rmrk)
    {
        this.rmrk = rmrk;
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
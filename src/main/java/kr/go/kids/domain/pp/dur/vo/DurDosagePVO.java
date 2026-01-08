package kr.go.kids.domain.pp.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_DUR투여기간주의기본", description = "대국민포털_DUR투여기간주의기본 Search Parameter VO")
public class DurDosagePVO
{
    /**
     * 투여기간주의일련번호
     */
    @Schema(description = "투여기간주의일련번호", type = "String")
    private String dosagePrdCutnSn;

    /**
     * 약품코드
     */
    @Schema(description = "약품코드", type = "String")
    private String mdcnCd;

    /**
     * 약품명
     */
    @Schema(description = "약품명", type = "String")
    private String mdcnNm;

    /**
     * 일반명코드
     */
    @Schema(description = "일반명코드", type = "String")
    private String gnrlNmCd;

    /**
     * 일반명
     */
    @Schema(description = "일반명", type = "String")
    private String gnrlNm;

    /**
     * 최대투여기간일수
     */
    @Schema(description = "최대투여기간일수", type = "Integer")
    private Integer maxDosagePrdDays;

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

    public String getDosagePrdCutnSn()
    {
        return dosagePrdCutnSn;
    }
    public void setDosagePrdCutnSn(String dosagePrdCutnSn)
    {
        this.dosagePrdCutnSn = dosagePrdCutnSn;
    }
    public String getMdcnCd()
    {
        return mdcnCd;
    }
    public void setMdcnCd(String mdcnCd)
    {
        this.mdcnCd = mdcnCd;
    }
    public String getMdcnNm()
    {
        return mdcnNm;
    }
    public void setMdcnNm(String mdcnNm)
    {
        this.mdcnNm = mdcnNm;
    }
    public String getGnrlNmCd()
    {
        return gnrlNmCd;
    }
    public void setGnrlNmCd(String gnrlNmCd)
    {
        this.gnrlNmCd = gnrlNmCd;
    }
    public String getGnrlNm()
    {
        return gnrlNm;
    }
    public void setGnrlNm(String gnrlNm)
    {
        this.gnrlNm = gnrlNm;
    }
    public Integer getMaxDosagePrdDays()
    {
        return maxDosagePrdDays;
    }
    public void setMaxDosagePrdDays(Integer maxDosagePrdDays)
    {
        this.maxDosagePrdDays = maxDosagePrdDays;
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
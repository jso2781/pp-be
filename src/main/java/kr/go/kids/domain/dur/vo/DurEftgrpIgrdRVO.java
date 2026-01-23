package kr.go.kids.domain.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_DUR효능군중복성분기본", description = "대국민포털_DUR효능군중복성분기본 Search Result VO")
public class DurEftgrpIgrdRVO
{
    /**
     * 효능군중복일련번호
     */
    @Schema(description = "효능군중복일련번호", type = "String")
    private String eftgrpDpcnSn;

    /**
     * 효능군명
     */
    @Schema(description = "효능군명", type = "String")
    private String eftgrpNm;

    /**
     * 계통명
     */
    @Schema(description = "계통명", type = "String")
    private String bsysNm;

    /**
     * 한글성분명
     */
    @Schema(description = "한글성분명", type = "String")
    private String kornIgrdNm;

    /**
     * 영문성분명
     */
    @Schema(description = "영문성분명", type = "String")
    private String engIgrdNm;

    /**
     * 비고
     */
    @Schema(description = "비고", type = "String")
    private String rmrk;

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

    public String getEftgrpDpcnSn()
    {
        return eftgrpDpcnSn;
    }
    public void setEftgrpDpcnSn(String eftgrpDpcnSn)
    {
        this.eftgrpDpcnSn = eftgrpDpcnSn;
    }
    public String getEftgrpNm()
    {
        return eftgrpNm;
    }
    public void setEftgrpNm(String eftgrpNm)
    {
        this.eftgrpNm = eftgrpNm;
    }
    public String getBsysNm()
    {
        return bsysNm;
    }
    public void setBsysNm(String bsysNm)
    {
        this.bsysNm = bsysNm;
    }
    public String getKornIgrdNm()
    {
        return kornIgrdNm;
    }
    public void setKornIgrdNm(String kornIgrdNm)
    {
        this.kornIgrdNm = kornIgrdNm;
    }
    public String getEngIgrdNm()
    {
        return engIgrdNm;
    }
    public void setEngIgrdNm(String engIgrdNm)
    {
        this.engIgrdNm = engIgrdNm;
    }
    public String getRmrk()
    {
        return rmrk;
    }
    public void setRmrk(String rmrk)
    {
        this.rmrk = rmrk;
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
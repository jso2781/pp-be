package kr.or.kids.domain.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_DUR효능군중복품목기본", description = "대국민포털_DUR효능군중복품목기본 Search Parameter VO")
public class DurEftgrpItemPVO
{
    /**
     * 효능군중복일련번호
     */
    @Schema(description = "효능군중복일련번호", type = "String")
    private String eftgrpDpcnSn;

    /**
     * 약품코드
     */
    @Schema(description = "약품코드", type = "String")
    private String mdcnCd;

    /**
     * 효능그룹
     */
    @Schema(description = "효능그룹", type = "String")
    private String eftGroup;

    /**
     * 그룹
     */
    @Schema(description = "그룹", type = "String")
    private String group;

    /**
     * 그룹1
     */
    @Schema(description = "그룹1", type = "String")
    private String group1;

    /**
     * 효능군중복점검코드
     */
    @Schema(description = "효능군중복점검코드", type = "String")
    private String eftgrpDpcnChckCd;

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
     * 품목명
     */
    @Schema(description = "품목명", type = "String")
    private String itemNm;

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
    public String getMdcnCd()
    {
        return mdcnCd;
    }
    public void setMdcnCd(String mdcnCd)
    {
        this.mdcnCd = mdcnCd;
    }
    public String getEftGroup()
    {
        return eftGroup;
    }
    public void setEftGroup(String eftGroup)
    {
        this.eftGroup = eftGroup;
    }
    public String getGroup()
    {
        return group;
    }
    public void setGroup(String group)
    {
        this.group = group;
    }
    public String getGroup1()
    {
        return group1;
    }
    public void setGroup1(String group1)
    {
        this.group1 = group1;
    }
    public String getEftgrpDpcnChckCd()
    {
        return eftgrpDpcnChckCd;
    }
    public void setEftgrpDpcnChckCd(String eftgrpDpcnChckCd)
    {
        this.eftgrpDpcnChckCd = eftgrpDpcnChckCd;
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
    public String getItemNm()
    {
        return itemNm;
    }
    public void setItemNm(String itemNm)
    {
        this.itemNm = itemNm;
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
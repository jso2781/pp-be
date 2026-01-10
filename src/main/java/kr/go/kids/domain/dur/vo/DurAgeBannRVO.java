package kr.go.kids.domain.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_DUR연령금기기본", description = "대국민포털_DUR연령금기기본 Search Result VO")
public class DurAgeBannRVO
{
    /**
     * 연령금기일련번호
     */
    @Schema(description = "연령금기일련번호", type = "String")
    private String ageBannSn;

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
     * 해당연령
     */
    @Schema(description = "해당연령", type = "Integer")
    private Integer rlvtAge;

    /**
     * 해당연령단위
     */
    @Schema(description = "해당연령단위", type = "String")
    private String rlvtAgeUnit;

    /**
     * 연령처리조건
     */
    @Schema(description = "연령처리조건", type = "String")
    private String agePrcsCnd;

    /**
     * 고시번호
     */
    @Schema(description = "고시번호", type = "String")
    private String ancmntNo;

    /**
     * 고시일자
     */
    @Schema(description = "고시일자", type = "String")
    private String ancmntYmd;

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

    public String getAgeBannSn()
    {
        return ageBannSn;
    }
    public void setAgeBannSn(String ageBannSn)
    {
        this.ageBannSn = ageBannSn;
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
    public Integer getRlvtAge()
    {
        return rlvtAge;
    }
    public void setRlvtAge(Integer rlvtAge)
    {
        this.rlvtAge = rlvtAge;
    }
    public String getRlvtAgeUnit()
    {
        return rlvtAgeUnit;
    }
    public void setRlvtAgeUnit(String rlvtAgeUnit)
    {
        this.rlvtAgeUnit = rlvtAgeUnit;
    }
    public String getAgePrcsCnd()
    {
        return agePrcsCnd;
    }
    public void setAgePrcsCnd(String agePrcsCnd)
    {
        this.agePrcsCnd = agePrcsCnd;
    }
    public String getAncmntNo()
    {
        return ancmntNo;
    }
    public void setAncmntNo(String ancmntNo)
    {
        this.ancmntNo = ancmntNo;
    }
    public String getAncmntYmd()
    {
        return ancmntYmd;
    }
    public void setAncmntYmd(String ancmntYmd)
    {
        this.ancmntYmd = ancmntYmd;
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
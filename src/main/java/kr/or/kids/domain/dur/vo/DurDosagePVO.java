package kr.or.kids.domain.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_DUR투여기간주의기본", description = "대국민포털_DUR투여기간주의기본 Search Parameter VO")
public class DurDosagePVO
{
    /**
     * 투여기간주의일련번호
     */
    @Schema(description = "투여기간주의일련번호", type = "String")
    private String adminPrdCutnSn;

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
    private Integer maxAdminPrdDayCnt;

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
    private String rmrkCn;

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

    public String getAdminPrdCutnSn()
    {
        return adminPrdCutnSn;
    }
    public void setAdminPrdCutnSn(String adminPrdCutnSn)
    {
        this.adminPrdCutnSn = adminPrdCutnSn;
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
    public Integer getMaxAdminPrdDayCnt()
    {
        return maxAdminPrdDayCnt;
    }
    public void setMaxAdminPrdDayCnt(Integer maxAdminPrdDayCnt)
    {
        this.maxAdminPrdDayCnt = maxAdminPrdDayCnt;
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
    public String getRmrkCn()
    {
        return rmrkCn;
    }
    public void setRmrkCn(String rmrkCn)
    {
        this.rmrkCn = rmrkCn;
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
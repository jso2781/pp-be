package kr.go.kids.domain.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_DUR용량주의기본", description = "대국민포털_DUR용량주의기본 Search Parameter VO")
public class DurCpctPVO
{
    /**
     * 용량주의일련번호
     */
    @Schema(description = "용량주의일련번호", type = "String")
    private String cpctCutnSn;

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
     * 1일최대투여용량
     */
    @Schema(description = "1일최대투여용량", type = "String")
    private String dayMaxAdminCpctCn;

    /**
     * 1일최대투여기준용량
     */
    @Schema(description = "1일최대투여기준용량", type = "Double")
    private Double dailyMaxAdminCrtrCpct;

    /**
     * 점검기준성분함량
     */
    @Schema(description = "점검기준성분함량", type = "Double")
    private Double chckCrtrIgrdCpct;

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
     * 상세내용
     */
    @Schema(description = "상세내용", type = "String")
    private String dtlCn;

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

    public String getCpctCutnSn()
    {
        return cpctCutnSn;
    }
    public void setCpctCutnSn(String cpctCutnSn)
    {
        this.cpctCutnSn = cpctCutnSn;
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
    public String getDayMaxAdminCpctCn()
    {
        return dayMaxAdminCpctCn;
    }
    public void setDayMaxAdminCpctCn(String dayMaxAdminCpctCn)
    {
        this.dayMaxAdminCpctCn = dayMaxAdminCpctCn;
    }
    public Double getDailyMaxAdminCrtrCpct()
    {
        return dailyMaxAdminCrtrCpct;
    }
    public void setDailyMaxAdminCrtrCpct(Double dailyMaxAdminCrtrCpct)
    {
        this.dailyMaxAdminCrtrCpct = dailyMaxAdminCrtrCpct;
    }
    public Double getChckCrtrIgrdCpct()
    {
        return chckCrtrIgrdCpct;
    }
    public void setChckCrtrIgrdCpct(Double chckCrtrIgrdCpct)
    {
        this.chckCrtrIgrdCpct = chckCrtrIgrdCpct;
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
    public String getDtlCn()
    {
        return dtlCn;
    }
    public void setDtlCn(String dtlCn)
    {
        this.dtlCn = dtlCn;
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
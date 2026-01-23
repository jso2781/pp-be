package kr.go.kids.domain.hstry.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_개인정보접근이력기본", description = "대국민포털_개인정보접근이력기본 Search Result VO")
public class PrvcAcsHstryRVO
{
    /**
     * 개인정보접근일련번호
     */
    @Schema(description = "개인정보접근일련번호", type = "Long")
    private Long prvcAcsSn;

    /**
     * 조회기준일자
     */
    @Schema(description = "조회기준일자", type = "String")
    private String inqCrtrYmd;

    /**
     * 서비스코드
     */
    @Schema(description = "서비스코드", type = "String")
    private String srvcCd;

    /**
     * 메뉴일련번호
     */
    @Schema(description = "메뉴일련번호", type = "String")
    private String menuSn;

    /**
     * 메소드명
     */
    @Schema(description = "메소드명", type = "String")
    private String methodsNm;

    /**
     * 조회정보
     */
    @Schema(description = "조회정보", type = "String")
    private String inqInfo;

    /**
     * 요청자아이디
     */
    @Schema(description = "요청자아이디", type = "String")
    private String rqstrId;

    /**
     * 요청자IP주소
     */
    @Schema(description = "요청자IP주소", type = "String")
    private String rqstrIpAddr;

    /**
     * 조회조건
     */
    @Schema(description = "조회조건", type = "String")
    private String inqCnd;

    /**
     * 조회전문
     */
    @Schema(description = "조회전문", type = "String")
    private String inqTelgm;

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

    public Long getPrvcAcsSn()
    {
        return prvcAcsSn;
    }
    public void setPrvcAcsSn(Long prvcAcsSn)
    {
        this.prvcAcsSn = prvcAcsSn;
    }
    public String getInqCrtrYmd()
    {
        return inqCrtrYmd;
    }
    public void setInqCrtrYmd(String inqCrtrYmd)
    {
        this.inqCrtrYmd = inqCrtrYmd;
    }
    public String getSrvcCd()
    {
        return srvcCd;
    }
    public void setSrvcCd(String srvcCd)
    {
        this.srvcCd = srvcCd;
    }
    public String getMenuSn()
    {
        return menuSn;
    }
    public void setMenuSn(String menuSn)
    {
        this.menuSn = menuSn;
    }
    public String getMethodsNm()
    {
        return methodsNm;
    }
    public void setMethodsNm(String methodsNm)
    {
        this.methodsNm = methodsNm;
    }
    public String getInqInfo()
    {
        return inqInfo;
    }
    public void setInqInfo(String inqInfo)
    {
        this.inqInfo = inqInfo;
    }
    public String getRqstrId()
    {
        return rqstrId;
    }
    public void setRqstrId(String rqstrId)
    {
        this.rqstrId = rqstrId;
    }
    public String getRqstrIpAddr()
    {
        return rqstrIpAddr;
    }
    public void setRqstrIpAddr(String rqstrIpAddr)
    {
        this.rqstrIpAddr = rqstrIpAddr;
    }
    public String getInqCnd()
    {
        return inqCnd;
    }
    public void setInqCnd(String inqCnd)
    {
        this.inqCnd = inqCnd;
    }
    public String getInqTelgm()
    {
        return inqTelgm;
    }
    public void setInqTelgm(String inqTelgm)
    {
        this.inqTelgm = inqTelgm;
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
package kr.go.kids.domain.exprt.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_전문가정보기본", description = "대국민포털_전문가정보기본 Search Result VO")
public class ExprtInfoRVO
{
    /**
     * 회원번호
     */
    @Schema(description = "회원번호", type = "String")
    private String mbrNo;

    /**
     * 사업자등록번호
     */
    @Schema(description = "사업자등록번호", type = "String")
    private String brno;

    /**
     * 전문가소속기관암호화이메일
     */
    @Schema(description = "전문가소속기관암호화이메일", type = "String")
    private String exprtOgdpInstEncptEml;

    /**
     * 전문가재직여부
     */
    @Schema(description = "전문가재직여부", type = "String")
    private String exprtHdofYn;

    /**
     * 전문가승인상태여부
     */
    @Schema(description = "전문가승인상태여부", type = "String")
    private String exprtAprvSttsYn;

    /**
     * 승인처리일자
     */
    @Schema(description = "승인처리일자", type = "String")
    private String aprvPrcsYmd;

    /**
     * 반려사유
     */
    @Schema(description = "반려사유", type = "String")
    private String rjctRsn;

    /**
     * 첨부파일아이디
     */
    @Schema(description = "첨부파일아이디", type = "String")
    private String atchFileId;

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

    public String getMbrNo()
    {
        return mbrNo;
    }
    public void setMbrNo(String mbrNo)
    {
        this.mbrNo = mbrNo;
    }
    public String getBrno()
    {
        return brno;
    }
    public void setBrno(String brno)
    {
        this.brno = brno;
    }
    public String getExprtOgdpInstEncptEml()
    {
        return exprtOgdpInstEncptEml;
    }
    public void setExprtOgdpInstEncptEml(String exprtOgdpInstEncptEml)
    {
        this.exprtOgdpInstEncptEml = exprtOgdpInstEncptEml;
    }
    public String getExprtHdofYn()
    {
        return exprtHdofYn;
    }
    public void setExprtHdofYn(String exprtHdofYn)
    {
        this.exprtHdofYn = exprtHdofYn;
    }
    public String getExprtAprvSttsYn()
    {
        return exprtAprvSttsYn;
    }
    public void setExprtAprvSttsYn(String exprtAprvSttsYn)
    {
        this.exprtAprvSttsYn = exprtAprvSttsYn;
    }
    public String getAprvPrcsYmd()
    {
        return aprvPrcsYmd;
    }
    public void setAprvPrcsYmd(String aprvPrcsYmd)
    {
        this.aprvPrcsYmd = aprvPrcsYmd;
    }
    public String getRjctRsn()
    {
        return rjctRsn;
    }
    public void setRjctRsn(String rjctRsn)
    {
        this.rjctRsn = rjctRsn;
    }
    public String getAtchFileId()
    {
        return atchFileId;
    }
    public void setAtchFileId(String atchFileId)
    {
        this.atchFileId = atchFileId;
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
package kr.go.kids.domain.pp.stt.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_약관법령기본", description = "대국민포털_약관법령기본 Search Parameter VO")
public class TrmsSttPVO
{
    /**
     * 약관법령일련번호
     */
    @Schema(description = "약관법령일련번호", type = "Long")
    private Long trmsSttSn;

    /**
     * 약관법령코드
     */
    @Schema(description = "약관법령코드", type = "String")
    private String trmsSttCd;

    /**
     * 약관법령적용일
     */
    @Schema(description = "약관법령적용일", type = "String")
    private String trmsSttAplcnDay;

    /**
     * 약관법령종료일
     */
    @Schema(description = "약관법령종료일", type = "String")
    private String trmsSttEndDay;

    /**
     * 약관법령내용
     */
    @Schema(description = "약관법령내용", type = "String")
    private String trmsSttCn;

    /**
     * 첨부파일아이디
     */
    @Schema(description = "첨부파일아이디", type = "String")
    private String atchFileId;

    /**
     * 작성자부서명
     */
    @Schema(description = "작성자부서명", type = "String")
    private String wrtrDeptNm;

    /**
     * 수정자부서명
     */
    @Schema(description = "수정자부서명", type = "String")
    private String mdfrDeptNm;

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

    public Long getTrmsSttSn()
    {
        return trmsSttSn;
    }
    public void setTrmsSttSn(Long trmsSttSn)
    {
        this.trmsSttSn = trmsSttSn;
    }
    public String getTrmsSttCd()
    {
        return trmsSttCd;
    }
    public void setTrmsSttCd(String trmsSttCd)
    {
        this.trmsSttCd = trmsSttCd;
    }
    public String getTrmsSttAplcnDay()
    {
        return trmsSttAplcnDay;
    }
    public void setTrmsSttAplcnDay(String trmsSttAplcnDay)
    {
        this.trmsSttAplcnDay = trmsSttAplcnDay;
    }
    public String getTrmsSttEndDay()
    {
        return trmsSttEndDay;
    }
    public void setTrmsSttEndDay(String trmsSttEndDay)
    {
        this.trmsSttEndDay = trmsSttEndDay;
    }
    public String getTrmsSttCn()
    {
        return trmsSttCn;
    }
    public void setTrmsSttCn(String trmsSttCn)
    {
        this.trmsSttCn = trmsSttCn;
    }
    public String getAtchFileId()
    {
        return atchFileId;
    }
    public void setAtchFileId(String atchFileId)
    {
        this.atchFileId = atchFileId;
    }
    public String getWrtrDeptNm()
    {
        return wrtrDeptNm;
    }
    public void setWrtrDeptNm(String wrtrDeptNm)
    {
        this.wrtrDeptNm = wrtrDeptNm;
    }
    public String getMdfrDeptNm()
    {
        return mdfrDeptNm;
    }
    public void setMdfrDeptNm(String mdfrDeptNm)
    {
        this.mdfrDeptNm = mdfrDeptNm;
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
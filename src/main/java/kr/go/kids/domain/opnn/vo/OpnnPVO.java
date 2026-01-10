package kr.go.kids.domain.opnn.vo;

import java.math.BigInteger;
import io.swagger.v3.oas.annotations.media.Schema;


@Schema(name = "대국민포털_의견제안", description = "대국민포털_의견제안 Search Parameter VO")
public class OpnnPVO
{
    /**
     * 의견일련번호
     */
    @Schema(description = "의견일련번호", type = "BigInteger")
    private BigInteger opnnSn;

    /**
     * 작성자암호화성명
     */
    @Schema(description = "작성자암호화성명", type = "String")
    private String wrtrEncptFlnm;

    /**
     * 작성자암호화전화번호
     */
    @Schema(description = "작성자암호화전화번호", type = "String")
    private String wrtrEncptTelno;

    /**
     * 작성구분코드
     */
    @Schema(description = "작성구분코드", type = "String")
    private String wrtSeCd;

    /**
     * 문제점내용
     */
    @Schema(description = "문제점내용", type = "String")
    private String pbptCn;

    /**
     * 요청사항
     */
    @Schema(description = "요청사항", type = "String")
    private String dmndMttr;

    /**
     * 요청사항상세내용
     */
    @Schema(description = "요청사항상세내용", type = "String")
    private String dmndMttrDtlCn;

    /**
     * 참고사항
     */
    @Schema(description = "참고사항", type = "String")
    private String refMttr;

    /**
     * 첨부파일일련번호
     */
    @Schema(description = "첨부파일일련번호", type = "String")
    private String atchFileSn;

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

    public BigInteger getOpnnSn()
    {
        return opnnSn;
    }
    public void setOpnnSn(BigInteger opnnSn)
    {
        this.opnnSn = opnnSn;
    }
    public String getWrtrEncptFlnm()
    {
        return wrtrEncptFlnm;
    }
    public void setWrtrEncptFlnm(String wrtrEncptFlnm)
    {
        this.wrtrEncptFlnm = wrtrEncptFlnm;
    }
    public String getWrtrEncptTelno()
    {
        return wrtrEncptTelno;
    }
    public void setWrtrEncptTelno(String wrtrEncptTelno)
    {
        this.wrtrEncptTelno = wrtrEncptTelno;
    }
    public String getWrtSeCd()
    {
        return wrtSeCd;
    }
    public void setWrtSeCd(String wrtSeCd)
    {
        this.wrtSeCd = wrtSeCd;
    }
    public String getPbptCn()
    {
        return pbptCn;
    }
    public void setPbptCn(String pbptCn)
    {
        this.pbptCn = pbptCn;
    }
    public String getDmndMttr()
    {
        return dmndMttr;
    }
    public void setDmndMttr(String dmndMttr)
    {
        this.dmndMttr = dmndMttr;
    }
    public String getDmndMttrDtlCn()
    {
        return dmndMttrDtlCn;
    }
    public void setDmndMttrDtlCn(String dmndMttrDtlCn)
    {
        this.dmndMttrDtlCn = dmndMttrDtlCn;
    }
    public String getRefMttr()
    {
        return refMttr;
    }
    public void setRefMttr(String refMttr)
    {
        this.refMttr = refMttr;
    }
    public String getAtchFileSn()
    {
        return atchFileSn;
    }
    public void setAtchFileSn(String atchFileSn)
    {
        this.atchFileSn = atchFileSn;
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
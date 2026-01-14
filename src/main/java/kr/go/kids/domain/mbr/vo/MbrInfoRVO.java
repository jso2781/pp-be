package kr.go.kids.domain.mbr.vo;

import java.math.BigInteger;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_회원정보기본", description = "대국민포털_회원정보기본 Search Result VO")
public class MbrInfoRVO
{
    /**
     * 회원번호
     */
    @Schema(description = "회원번호", type = "String")
    private String mbrNo;

    /**
     * 회원아이디
     */
    @Schema(description = "회원아이디", type = "String")
    private String mbrId;

    /**
     * 회원암호화성명
     */
    @Schema(description = "회원암호화성명", type = "String")
    private String mbrEncptFlnm;

    /**
     * 회원암호화이메일
     */
    @Schema(description = "회원암호화이메일", type = "String")
    private String mbrEncptEml;

    /**
     * 회원암호화비밀번호
     */
    @Schema(description = "회원암호화비밀번호", type = "String")
    private String mbrEnpswd;

    /**
     * 회원암호화전화번호
     */
    @Schema(description = "회원암호화전화번호", type = "String")
    private String mbrEncptTelno;

    /**
     * 회원유형코드
     */
    @Schema(description = "회원유형코드", type = "String")
    private String mbrTypeCd;

    /**
     * 회원가입상태
     */
    @Schema(description = "회원가입상태", type = "String")
    private String mbrJoinStts;

    /**
     * 회원가입일시
     */
    @Schema(description = "회원가입일시", type = "String")
    private String mbrJoinDt;

    /**
     * 회원탈퇴사유
     */
    @Schema(description = "회원탈퇴사유", type = "String")
    private String mbrWhdwlRsn;

    /**
     * 회원탈퇴일시
     */
    @Schema(description = "회원탈퇴일시", type = "String")
    private String mbrWhdwlDt;

    /**
     * 이전암호화비밀번호
     */
    @Schema(description = "이전암호화비밀번호", type = "String")
    private String bfrEnpswd;

    /**
     * 비밀번호변경일시
     */
    @Schema(description = "비밀번호변경일시", type = "String")
    private String pswdChgDt;

    /**
     * 비밀번호오류횟수
     */
    @Schema(description = "비밀번호오류횟수", type = "Integer")
    private Integer pswdErrNmtm = 0;

    /**
     * 연계정보식별아이디
     */
    @Schema(description = "연계정보식별아이디", type = "String")
    private String linkInfoIdntfId;

    /**
     * 인증토큰
     */
    @Schema(description = "인증토큰", type = "String")
    private String certToken;

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

    /**
     * JWT토큰ID
     */
    @Schema(description = "JWT토큰ID", type = "BigInteger")
    private BigInteger tokenId;

    /**
     * 애플리케이션ID
     */
    @Schema(description = "애플리케이션ID", type = "String")
    private String appId;

    /**
     * JWT_Refresh_Token
     */
    @Schema(description = "JWT_Refresh_Token", type = "String")
    private String refreshToken;

    /**
     * JWT_Access_Token
     */
    @Schema(description = "JWT_Access_Token", type = "String")
    private String accessToken;

    public String getMbrNo()
    {
        return mbrNo;
    }
    public void setMbrNo(String mbrNo)
    {
        this.mbrNo = mbrNo;
    }
    public String getMbrId()
    {
        return mbrId;
    }
    public void setMbrId(String mbrId)
    {
        this.mbrId = mbrId;
    }
    public String getMbrEncptFlnm()
    {
        return mbrEncptFlnm;
    }
    public void setMbrEncptFlnm(String mbrEncptFlnm)
    {
        this.mbrEncptFlnm = mbrEncptFlnm;
    }
    public String getMbrEncptEml()
    {
        return mbrEncptEml;
    }
    public void setMbrEncptEml(String mbrEncptEml)
    {
        this.mbrEncptEml = mbrEncptEml;
    }
    public String getMbrEnpswd()
    {
        return mbrEnpswd;
    }
    public void setMbrEnpswd(String mbrEnpswd)
    {
        this.mbrEnpswd = mbrEnpswd;
    }
    public String getMbrEncptTelno()
    {
        return mbrEncptTelno;
    }
    public void setMbrEncptTelno(String mbrEncptTelno)
    {
        this.mbrEncptTelno = mbrEncptTelno;
    }
    public String getMbrTypeCd()
    {
        return mbrTypeCd;
    }
    public void setMbrTypeCd(String mbrTypeCd)
    {
        this.mbrTypeCd = mbrTypeCd;
    }
    public String getMbrJoinStts()
    {
        return mbrJoinStts;
    }
    public void setMbrJoinStts(String mbrJoinStts)
    {
        this.mbrJoinStts = mbrJoinStts;
    }
    public String getMbrJoinDt()
    {
        return mbrJoinDt;
    }
    public void setMbrJoinDt(String mbrJoinDt)
    {
        this.mbrJoinDt = mbrJoinDt;
    }
    public String getMbrWhdwlRsn()
    {
        return mbrWhdwlRsn;
    }
    public void setMbrWhdwlRsn(String mbrWhdwlRsn)
    {
        this.mbrWhdwlRsn = mbrWhdwlRsn;
    }
    public String getMbrWhdwlDt()
    {
        return mbrWhdwlDt;
    }
    public void setMbrWhdwlDt(String mbrWhdwlDt)
    {
        this.mbrWhdwlDt = mbrWhdwlDt;
    }
    public String getBfrEnpswd()
    {
        return bfrEnpswd;
    }
    public void setBfrEnpswd(String bfrEnpswd)
    {
        this.bfrEnpswd = bfrEnpswd;
    }
    public String getPswdChgDt()
    {
        return pswdChgDt;
    }
    public void setPswdChgDt(String pswdChgDt)
    {
        this.pswdChgDt = pswdChgDt;
    }
    public Integer getPswdErrNmtm()
    {
        return pswdErrNmtm;
    }
    public void setPswdErrNmtm(Integer pswdErrNmtm)
    {
        this.pswdErrNmtm = pswdErrNmtm;
    }
    public String getLinkInfoIdntfId()
    {
        return linkInfoIdntfId;
    }
    public void setLinkInfoIdntfId(String linkInfoIdntfId)
    {
        this.linkInfoIdntfId = linkInfoIdntfId;
    }
    public String getCertToken()
    {
        return certToken;
    }
    public void setCertToken(String certToken)
    {
        this.certToken = certToken;
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
    public BigInteger getTokenId() {
        return tokenId;
    }
    public void setTokenId(BigInteger tokenId) {
        this.tokenId = tokenId;
    }
    public String getAppId() {
        return appId;
    }
    public void setAppId(String appId) {
        this.appId = appId;
    }
    public String getRefreshToken() {
        return refreshToken;
    }
    public void setRefreshToken(String refreshToken) {
        this.refreshToken = refreshToken;
    }
    public String getAccessToken() {
        return accessToken;
    }
    public void setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }
}
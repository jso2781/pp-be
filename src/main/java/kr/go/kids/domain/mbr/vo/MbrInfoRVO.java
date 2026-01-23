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
    private String encptMbrFlnm;

    /**
     * 회원암호화이메일
     */
    @Schema(description = "회원암호화이메일", type = "String")
    private String encptMbrEmlNm;

    /**
     * 회원암호화비밀번호
     */
    @Schema(description = "회원암호화비밀번호", type = "String")
    private String encptMbrPswd;

    /**
     * 회원암호화전화번호
     */
    @Schema(description = "회원암호화전화번호", type = "String")
    private String encptMbrTelno;

    /**
     * 회원유형코드
     */
    @Schema(description = "회원유형코드", type = "String")
    private String mbrTypeCd;

    /**
     * 회원가입상태
     */
    @Schema(description = "회원가입상태", type = "String")
    private String mbrJoinSttsCd;

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
     * 자문위원여부
     */
    @Schema(description = "자문위원여부", type = "String")
    private String cnstnMbcmtYn;

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
    private String certTokenVl;

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
    public String getEncptMbrFlnm()
    {
        return encptMbrFlnm;
    }
    public void setEncptMbrFlnm(String encptMbrFlnm)
    {
        this.encptMbrFlnm = encptMbrFlnm;
    }
    public String getEncptMbrEmlNm()
    {
        return encptMbrEmlNm;
    }
    public void setEncptMbrEmlNm(String encptMbrEmlNm)
    {
        this.encptMbrEmlNm = encptMbrEmlNm;
    }
    public String getEncptMbrPswd()
    {
        return encptMbrPswd;
    }
    public void setEncptMbrPswd(String encptMbrPswd)
    {
        this.encptMbrPswd = encptMbrPswd;
    }
    public String getEncptMbrTelno()
    {
        return encptMbrTelno;
    }
    public void setEncptMbrTelno(String encptMbrTelno)
    {
        this.encptMbrTelno = encptMbrTelno;
    }
    public String getMbrTypeCd()
    {
        return mbrTypeCd;
    }
    public void setMbrTypeCd(String mbrTypeCd)
    {
        this.mbrTypeCd = mbrTypeCd;
    }
    public String getMbrJoinSttsCd()
    {
        return mbrJoinSttsCd;
    }
    public void setMbrJoinSttsCd(String mbrJoinSttsCd)
    {
        this.mbrJoinSttsCd = mbrJoinSttsCd;
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
    public String getCnstnMbcmtYn() {
        return cnstnMbcmtYn;
    }
    public void setCnstnMbcmtYn(String cnstnMbcmtYn) {
        this.cnstnMbcmtYn = cnstnMbcmtYn;
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
    public String getCertTokenVl()
    {
        return certTokenVl;
    }
    public void setCertTokenVl(String certTokenVl)
    {
        this.certTokenVl = certTokenVl;
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
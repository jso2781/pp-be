package kr.go.kids.domain.auth.vo;

import java.math.BigInteger;
import io.swagger.v3.oas.annotations.media.Schema;


@Schema(name = "대국민포털_회원_TOKEN", description = "대국민포털_회원_TOKEN Search Parameter VO")
public class MbrTokenPVO
{
    /**
     * JWT토큰ID
     */
    @Schema(description = "JWT토큰ID", type = "BigInteger")
    private BigInteger tokenId;

    /**
     * 회원아이디
     */
    @Schema(description = "회원아이디", type = "String")
    private String mbrId;

    /**
     * 회원암호화비밀번호
     */
    @Schema(description = "회원암호화비밀번호", type = "String")
    private String mbrEnpswd;

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

    public BigInteger getTokenId()
    {
        return tokenId;
    }
    public void setTokenId(BigInteger tokenId)
    {
        this.tokenId = tokenId;
    }
    public String getMbrEnpswd() {
        return mbrEnpswd;
    }
    public void setMbrEnpswd(String mbrEnpswd) {
        this.mbrEnpswd = mbrEnpswd;
    }
    public String getMbrId()
    {
        return mbrId;
    }
    public void setMbrId(String mbrId)
    {
        this.mbrId = mbrId;
    }
    public String getAppId()
    {
        return appId;
    }
    public void setAppId(String appId)
    {
        this.appId = appId;
    }
    public String getRefreshToken()
    {
        return refreshToken;
    }
    public void setRefreshToken(String refreshToken)
    {
        this.refreshToken = refreshToken;
    }
    public String getAccessToken()
    {
        return accessToken;
    }
    public void setAccessToken(String accessToken)
    {
        this.accessToken = accessToken;
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
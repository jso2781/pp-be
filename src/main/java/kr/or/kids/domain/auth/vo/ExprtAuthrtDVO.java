package kr.or.kids.domain.auth.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_전문가권한기본", description = "대국민포털_전문가권한기본 Delete Parameter VO")
public class ExprtAuthrtDVO
{
    /**
     * 회원번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "회원번호", type = "String")
    private String mbrNo;

    /**
     * 권한코드
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "권한코드", type = "String")
    private String authrtCd;

    public String getMbrNo()
    {
        return mbrNo;
    }
    public void setMbrNo(String mbrNo)
    {
        this.mbrNo = mbrNo;
    }
    public String getAuthrtCd()
    {
        return authrtCd;
    }
    public void setAuthrtCd(String authrtCd)
    {
        this.authrtCd = authrtCd;
    }

}
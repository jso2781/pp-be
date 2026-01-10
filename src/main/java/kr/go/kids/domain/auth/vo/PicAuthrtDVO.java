package kr.go.kids.domain.auth.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_담당자권한기본", description = "대국민포털_담당자권한기본 Delete Parameter VO")
public class PicAuthrtDVO
{
    /**
     * 직원번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "직원번호", type = "String")
    private String empNo;

    /**
     * 권한코드
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "권한코드", type = "String")
    private String authrtCd;

    public String getEmpNo()
    {
        return empNo;
    }
    public void setEmpNo(String empNo)
    {
        this.empNo = empNo;
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
package kr.go.kids.domain.auth.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_부서권한기본", description = "대국민포털_부서권한기본 Delete Parameter VO")
public class DeptAuthrtDVO
{
    /**
     * 부서번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "부서번호", type = "String")
    private String deptNo;

    /**
     * 권한코드
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "권한코드", type = "String")
    private String authrtCd;

    public String getDeptNo()
    {
        return deptNo;
    }
    public void setDeptNo(String deptNo)
    {
        this.deptNo = deptNo;
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
package kr.or.kids.domain.dep.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_KIDS조직도기본", description = "대국민포털_KIDS조직도기본 Delete Parameter VO")
public class OrgchtDVO
{
    /**
     * 직원번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "직원번호", type = "String")
    private String empNo;

    public String getEmpNo()
    {
        return empNo;
    }
    public void setEmpNo(String empNo)
    {
        this.empNo = empNo;
    }

}
package kr.go.kids.domain.pp.dep.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_KIDS조직도기본", description = "대국민포털_KIDS조직도기본 Search Result VO")
public class OrgchtRVO
{
    /**
     * 직원번호
     */
    @Schema(description = "직원번호", type = "String")
    private String empNo;

    /**
     * 부서번호
     */
    @Schema(description = "부서번호", type = "String")
    private String deptNo;

    /**
     * 부서명
     */
    @Schema(description = "부서명", type = "String")
    private String deptNm;

    /**
     * 직원명
     */
    @Schema(description = "직원명", type = "String")
    private String empNm;

    public String getEmpNo()
    {
        return empNo;
    }
    public void setEmpNo(String empNo)
    {
        this.empNo = empNo;
    }
    public String getDeptNo()
    {
        return deptNo;
    }
    public void setDeptNo(String deptNo)
    {
        this.deptNo = deptNo;
    }
    public String getDeptNm()
    {
        return deptNm;
    }
    public void setDeptNm(String deptNm)
    {
        this.deptNm = deptNm;
    }
    public String getEmpNm()
    {
        return empNm;
    }
    public void setEmpNm(String empNm)
    {
        this.empNm = empNm;
    }

}
package kr.or.kids.domain.pp.dep.vo;

import java.math.BigDecimal;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "OrgchtEmpRVO", description = "조직도 직원 정보")
public class OrgchtEmpRVO {

    @Schema(description = "직원번호", type = "String")
    private String empNo;

    @Schema(description = "직원명", type = "String")
    private String empNm;

    @Schema(description = "부서번호", type = "String")
    private String deptNo;

    @Schema(description = "부서명", type = "String")
    private String deptNm;

    @Schema(description = "직급명", type = "String")
    private String jbgdNm;

    @Schema(description = "직책명", type = "String")
    private String jbttlNm;

    @Schema(description = "표시직책명", type = "String")
    private String positionNm;

    @Schema(description = "전화번호", type = "String")
    private String encptEmpTelno;

    @Schema(description = "이메일", type = "String")
    private String encptEmpEmlNm;

    @Schema(description = "주요업무", type = "String")
    private String mainTaskCn;

    @Schema(description = "직원순서", type = "BigDecimal")
    private BigDecimal empSeq;
}

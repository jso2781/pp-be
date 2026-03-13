package kr.or.kids.domain.pp.dep.vo;

import java.math.BigDecimal;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "OrgchtDeptRVO", description = "조직도 부서 정보")
public class OrgchtDeptRVO {

    @Schema(description = "최상위 본부 번호", type = "String")
    private String topDeptNo;

    @Schema(description = "최상위 본부명", type = "String")
    private String topDeptNm;

    @Schema(description = "부서번호", type = "String")
    private String deptNo;

    @Schema(description = "부서명", type = "String")
    private String deptNm;

    @Schema(description = "상위부서번호", type = "String")
    private String upDeptNo;

    @Schema(description = "부서레벨", type = "Integer")
    private Integer deptLevel;

    @Schema(description = "부서순서", type = "BigDecimal")
    private BigDecimal deptSeq;
}

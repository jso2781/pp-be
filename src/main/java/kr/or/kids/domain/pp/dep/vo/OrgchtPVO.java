package kr.or.kids.domain.pp.dep.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "OrgchtPVO", description = "조직도 조회 파라미터")
public class OrgchtPVO {

    @Schema(description = "부서번호", type = "String")
    private String deptNo;

    @Schema(description = "언어구분코드", type = "String")
    private String langSeCd;
}

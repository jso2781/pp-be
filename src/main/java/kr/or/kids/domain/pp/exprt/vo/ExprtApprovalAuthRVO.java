package kr.or.kids.domain.pp.exprt.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "대국민포털_전문가업무신청관리", description = "대국민포털_전문가업무신청관리 권한 Search Result VO")
public class ExprtApprovalAuthRVO{

    /**
     * 권한코드
     */
    @Schema(description = "권한코드", type = "String")
    private String authrtCd;

    /**
     * 권한명
     */
    @Schema(description = "권한명", type = "String")
    private String authrtNm;
}
package kr.go.kids.domain.exprt.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import kr.go.kids.global.system.common.vo.PageRequestDto;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "대국민포털_전문가업무신청관리", description = "대국민포털_전문가업무신청관리 Search Parameter VO")
public class ExprtApprovalPVO extends PageRequestDto{

    /**
     * 회원번호
     */
    @Schema(description = "회원번호", type = "String")
    private String mbrNo;

    /**
     * 전문가업무일련번호
     */
    @Schema(description = "전문가업무일련번호", type = "Long")
    private Long exprtTaskSn;
}
package kr.or.kids.domain.exprt.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "대국민포털_전문가내업무관리", description = "대국민포털_전문가내업무관리 Search Parameter VO")
public class ExprtTaskPVO
{
    /**
     * 전문가번호
     */
    @Schema(description = "전문가번호", type = "String")
    private String exprtNo;

    /**
     * 전문가업무일련번호
     */
    @Schema(description = "전문가업무일련번호", type = "Long")
    private Long exprtTaskSn;

    /**
     * 회원번호
     */
    @Schema(description = "회원번호", type = "String")
    private String mbrNo;

    /**
     * 회원아이디
     */
    @Schema(description = "회원아이디", type = "String")
    private String mbrId;

    /**
     * 사업자등록번호
     */
    @Schema(description = "사업자등록번호", type = "String")
    private String brno;

    /**
     * 사업자업무관리번호
     */
    @Schema(description = "사업자업무관리번호", type = "String")
    private String bzmnTaskMngNo;
}
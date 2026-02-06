package kr.go.kids.domain.exprt.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "대국민포털_전문가내업무관리", description = "대국민포털_전문가내업무관리 Search Result VO")
public class ExprtTaskRVO extends ExprtApplyRVO
{
    /**
     * 암호화전문가성명
     */
    @Schema(description = "암호화전문가성명", type = "String")
    private String encptExprtFlnm;

    /**
     * 반려사유
     */
    @Schema(description = "반려사유", type = "String")
    private String rjctRsn;

    /**
     * 전문가번호
     */
    @Schema(description = "전문가번호", type = "String")
    private String exprtNo;

    /**
     * 회원번호
     */
    @Schema(description = "회원번호", type = "String")
    private String mbrNo;

    /**
     * 기관명
     */
    @Schema(description = "기관명", type = "String")
    private String instNm;

    /**
     * 전문가 승인상태코드
     */
    @Schema(description = "전문가 승인상태코드", type = "String")
    private String exprtAprvSttsCode;

    /**
     * 전문가 승인상태코드라벨
     */
    @Schema(description = "전문가 승인상태코드라벨", type = "String")
    private String exprtAprvSttsLabel;

    /**
     * 전문가업무일련번호
     */
    @Schema(description = "전문가업무일련번호", type = "Long")
    private Long exprtTaskSn;

    /**
     * 업무시스템 승인상태코드
     */
    @Schema(description = "업무시스템 승인상태코드", type = "String")
    private String taskAprvSttsCode;

    /**
     * 업무시스템 승인상태코드라벨
     */
    @Schema(description = "업무시스템 승인상태코드라벨", type = "String")
    private String taskAprvSttsLabel;

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
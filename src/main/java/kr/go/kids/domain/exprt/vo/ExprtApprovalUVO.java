package kr.go.kids.domain.exprt.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@Schema(name = "대국민포털_전문가업무신청관리", description = "대국민포털_전문가업무신청관리 Update Parameter VO")
public class ExprtApprovalUVO{
    /**
     * 전문가업무일련번호
     */
    @Schema(description = "전문가업무일련번호", type = "Long")
    private Long exprtTaskSn;

    /**
     * 전문가번호
     */
    @Schema(description = "전문가번호", type = "String")
    private String exprtNo;

    /**
     * 회원아이디
     */
    @Schema(description = "회원아이디", type = "String")
    private String mbrId;

    /**
     * 회원번호
     */
    @Schema(description = "회원번호", type = "String")
    private String mbrNo;

    /**
     * 전문가 승인상태코드
     */
    @Schema(description = "전문가 승인상태코드", type = "String")
    private String exprtAprvSttsCode;

    /**
     * 전문가 전환 반려사유
     */
    @Schema(description = "전문가 전환 반려사유", type = "String")
    private String exprtRjctRsn;

    /**
     * 업무시스템 승인상태코드
     */
    @Schema(description = "업무시스템 승인상태코드", type = "String")
    private String taskAprvSttsCode;

    /**
     * 업무시스템 반려사유
     */
    @Schema(description = "업무시스템 반려사유", type = "String")
    private String taskRjctRsn;

    /**
     * 전문가 재직여부
     */
    @Schema(description = "전문가 재직여부", type = "String")
    private String exprtHdofYn;

    /**
     * 전문가 업무시스템 권한 목록
     */
    @Schema(description = "업무시스템 반려사유", type = "ExprtApprovalAuthRVO")
    private List<ExprtApprovalAuthRVO> taskAuthList;

    /**
     * 권한코드 (개별 권한 처리용)
     */
    @Schema(description = "권한코드", type = "String")
    private String authrtCd;
}
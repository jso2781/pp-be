package kr.or.kids.domain.pp.exprt.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "대국민포털_전문가업무신청관리", description = "대국민포털_전문가업무신청관리 Search Result VO")
public class ExprtApprovalRVO extends ExprtApplyRVO {

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
     * 성명
     */
    @Schema(description = "성명", type = "String")
    private String name;

    /**
     * 전화번호
     */
    @Schema(description = "전화번호", type = "String")
    private String telNo;

    /**
     * 전문가번호
     */
    @Schema(description = "전문가번호", type = "String")
    private String exprtNo;

    /**
     * 기관명
     */
    @Schema(description = "기관명", type = "String")
    private String instNm;

    /**
     * 기관 이메일
     */
    @Schema(description = "기관 이메일", type = "String")
    private String instEmlNm;

    /**
     * 전문가재직여부
     */
    @Schema(description = "전문가재직여부", type = "String")
    private String exprtHdofYn;

    /**
     * 첨부파일그룹아이디
     */
    @Schema(description = "첨부파일그룹아이디", type = "String")
    private String atchFileGroupId;

    /**
     * 전문가 회원 전환 신청일시
     */
    @Schema(description = "전문가 회원 전환 신청일시", type = "String")
    private String exprtInfoRegDt;

    /**
     * 업무시스템 신청일시
     */
    @Schema(description = "업무시스템 신청일시", type = "String")
    private String taskApplyRegDt;

    /**
     * 전문가 전환 승인처리일시
     */
    @Schema(description = "전문가 전환 승인처리일시", type = "String")
    private String exprtAprvPrcsDt;

    /**
     * 전문가 전환 반려사유
     */
    @Schema(description = "전문가 전환 반려사유", type = "String")
    private String exprtRjctRsn;

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
     * 업무시스템 승인처리일시
     */
    @Schema(description = "업무시스템 승인처리일시", type = "String")
    private String taskAprvPrcsDt;

    /**
     * 업무시스템 반려사유
     */
    @Schema(description = "업무시스템 반려사유", type = "String")
    private String taskRjctRsn;

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
     * 사업자업무관리번호
     */
    @Schema(description = "사업자업무관리번호", type = "String")
    private String bzmnTaskMngNo;
}
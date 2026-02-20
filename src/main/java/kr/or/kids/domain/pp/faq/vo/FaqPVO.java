package kr.or.kids.domain.pp.faq.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "대국민포털_FAQ기본", description = "대국민포털_FAQ기본 Search Parameter VO")
public class FaqPVO
{
    /**
     * FAQ일련번호
     */
    @Schema(description = "FAQ일련번호", type = "Long")
    private Long faqSn;

    /**
     * 업무구분코드
     */
    @Schema(description = "업무구분코드", type = "String")
    private String taskSeCd;

    /**
     * FAQ분류명
     */
    @Schema(description = "FAQ분류명", type = "String")
    private String faqClsfNm;

    /**
     * FAQ제목
     */
    @Schema(description = "FAQ제목", type = "String")
    private String faqTtl;

    /**
     * FAQ순서
     */
    @Schema(description = "FAQ순서", type = "Integer")
    private Integer faqSeq;

    /**
     * 사용여부
     */
    @Schema(description = "사용여부", type = "String")
    private String useYn;

    /**
     * 언어구분코드
     */
    @Schema(description = "언어구분코드", type = "String")
    private String langSeCd;

    /**
     * FAQ답변
     */
    @Schema(description = "FAQ답변", type = "String")
    private String faqAnsCn;

    /**
     * 첨부파일그룹아이디
     */
    @Schema(description = "첨부파일그룹아이디", type = "String")
    private String atchFileGroupId;

    /**
     * 작성자부서명
     */
    @Schema(description = "작성자부서명", type = "String")
    private String wrtrDeptNm;

    /**
     * 수정자부서명
     */
    @Schema(description = "수정자부서명", type = "String")
    private String mdfrDeptNm;

    /**
     * 등록자아이디
     */
    @Schema(description = "등록자아이디", type = "String")
    private String rgtrId;

    /**
     * 등록일시
     */
    @Schema(description = "등록일시", type = "String")
    private String regDt;

    /**
     * 수정자아이디
     */
    @Schema(description = "수정자아이디", type = "String")
    private String mdfrId;

    /**
     * 수정일시
     */
    @Schema(description = "수정일시", type = "String")
    private String mdfcnDt;
}
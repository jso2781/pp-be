package kr.or.kids.domain.faq.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "대국민포털_FAQ기본", description = "대국민포털_FAQ기본 Search Result VO")
public class FaqRVO
{
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
     * 언어구분코드
     */
    @Schema(description = "언어구분코드", type = "String")
    private String langSeCd;

    /**
     * FAQ답변
     */
    @Schema(description = "FAQ답변", type = "String")
    private String faqAnsCn;

}
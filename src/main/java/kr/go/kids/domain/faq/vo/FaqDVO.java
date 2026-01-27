package kr.go.kids.domain.faq.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "대국민포털_FAQ기본", description = "대국민포털_FAQ기본 Delete Parameter VO")
public class FaqDVO
{
    /**
     * FAQ일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "FAQ일련번호", type = "Long")
    private Long faqSn;
}
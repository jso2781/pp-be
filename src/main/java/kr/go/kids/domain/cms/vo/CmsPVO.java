package kr.go.kids.domain.cms.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Schema(name = "대국민포털_콘탠츠기본 조회 파라메터", description = "대국민포털_콘탠츠기본 조회 파라메터 VO")
@Getter
@Setter
public class CmsPVO {

    /**
     * 콘텐츠일련번호
     */
    @Schema(description = "콘텐츠일련번호", type = "String")
    private String contsSn;
}

package kr.or.kids.domain.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Schema(name = "대국민포털_DUR연령금기기본", description = "대국민포털_DUR연령금기기본 Search Result VO")
@Getter
@Setter
public class DurAgeBannRVO2
{
    /**
     * 제품코드
     */
    @Schema(description = "제품코드", type = "String")
    private String prdctCd;

    /**
     * DUR성분명
     */
    @Schema(description = "DUR성분명", type = "String")
    private String durIgrdNm;

    /**
     * DUR제품명
     */
    @Schema(description = "DUR제품명", type = "String")
    private String durPrdctNm;

    /**
     * 해당연령
     */
    @Schema(description = "해당연령", type = "String")
    private String rlvtAge;

    /**
     * 해당연령단위
     */
    @Schema(description = "해당연령단위", type = "String")
    private String rlvtGgeUnitNm;

    /**
     * 연령처리조건
     */
    @Schema(description = "연령처리조건", type = "String")
    private String agePrcsCndNm;

    /**
     * 상세정보
     */
    @Schema(description = "상세정보", type = "String")
    private String dtlInfoCn;
}
package kr.go.kids.domain.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Schema(name = "DUR 내가 먹는 약의 DUR 정보 의약품 검색 파라메터", description = "내가 먹는 약의 DUR 정보 의약품 검색 파라메터 VO")
public class DurMyDrugSearchPVO {

    /**
     * 검색조건
     */
    @Schema(description = "검색조건", type = "String")
    private String searchType;

    /**
     * 검색어
     */
    @Schema(description = "검색어", type = "String")
    private String searchValue;

    /**
     * 제품명 기준 검색여부
     */
    @Schema(description = "제품명 기준 검색여부", type = "String")
    private String itemYn;
}
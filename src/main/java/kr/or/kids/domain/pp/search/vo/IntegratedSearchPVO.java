package kr.or.kids.domain.pp.search.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(name = "통합검색 조회 파라메터", description = "통합검색 조회 파라메터 VO")
@Data
public class IntegratedSearchPVO {

    /**
     * 통합검색 조회용 입력 키워드
     */
    @Schema(description = "통합검색 조회용 입력 키워드", type = "String")
    private String searchText;
}

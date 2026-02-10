package kr.go.kids.domain.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(name = "DUR 정보 검색 조회 파라메터", description = "DUR 정보 검색 조회 파라메터 VO")
@Data
public class DurSearchRoomPVO {

    /**
     * 제품명
     */
    @Schema(description = "제품명", type = "String")
    private String prdctNm;

    /**
     * 성분명
     */
    @Schema(description = "성분명", type = "String")
    private String igrdNm;
}
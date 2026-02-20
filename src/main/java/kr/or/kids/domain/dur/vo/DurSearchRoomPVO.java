package kr.or.kids.domain.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import kr.or.kids.global.system.common.vo.PageRequestDto;
import lombok.Getter;
import lombok.Setter;

@Schema(name = "DUR 정보 검색 조회 파라메터", description = "DUR 정보 검색 조회 파라메터 VO")
@Setter
@Getter
public class DurSearchRoomPVO extends PageRequestDto{

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
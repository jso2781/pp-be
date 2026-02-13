package kr.go.kids.domain.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import kr.go.kids.global.system.common.vo.PageRequestDto;
import lombok.Getter;
import lombok.Setter;
import java.util.List;

@Schema(name = "DUR 정보 검색 조회 파라메터", description = "DUR 정보 검색 조회 파라메터 VO")
@Setter
@Getter
public class DurMyDrugInfoPVO extends PageRequestDto{

    /**
     * 조회유형
     */
    @Schema(description = "조회유형", type = "String")
    private String searchType;

    /**
     * 조회대상 아이템 목록
     */
    @Schema(description = "조회대상 아이템 목록", type = "DurMyDrugInfoPVO")
    private List<DurSearchRoomPVO> durMyDrugInfoPVOs;
}
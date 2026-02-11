package kr.go.kids.domain.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import kr.go.kids.global.system.common.vo.PageRequestDto;
import lombok.Getter;
import lombok.Setter;

@Schema(name = "효능군중복주의 상세 조회 파라메터", description = "효능군중복주의 상세 조회 파라메터 VO")
@Setter
@Getter
public class DurEftgrpDetailPVO extends PageRequestDto{
    /**
     * 성분명
     */
    @Schema(description = "성분명", type = "String")
    private String igrdNm;
}
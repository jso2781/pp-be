package kr.or.kids.domain.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Schema(name = "DUR 내가 먹는 약의 DUR 정보 조회 파라메터", description = "내가 먹는 약의 DUR 정보 조회 파라메터 VO")
public class DurMyDrugInfoPVO {

    /**
     * 제품코드
     */
    @Schema(description = "제품코드", type = "String")
    private String prdctCd;

    /**
     * 성분코드
     */
    @Schema(description = "성분코드", type = "String")
    private String igrdCd;
}
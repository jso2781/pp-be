package kr.or.kids.domain.pp.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(name = "효능군중복주의 상세 조회 결과", description = "효능군중복주의 상세 조회 결과 VO")
@Data
public class DurEftgrpDetailRVO {
    /**
     * 효능그룹명
     * ex) 해열진통소염제, 최면진정제
     */
    @Schema(description = "효능그룹명", type = "String")
    private String effGroupNm;

    /**
     * 계열(그룹명)
     */
    @Schema(description = "계열(그룹명)", type = "String")
    private String groupNm;

    /**
     * 검색한 제품의 성분
     */
    @Schema(description = "검색한 제품의 성분", type = "String")
    private String igrdNm;
}
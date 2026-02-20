package kr.or.kids.domain.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(name = "제품 상세 조회 결과", description = "제품 상세 조회 결과 VO")
@Data
public class DurPrdctDetailRVO {
    /**
     * 제품명
     */
    @Schema(description = "제품명", type = "String")
    private String prdctNm;

    /**
     * 제약회사(업체명)
     */
    @Schema(description = "제약회사(업체명)", type = "String")
    private String bzentyNm;
}
package kr.or.kids.domain.pp.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Schema(name = "DUR 내가 먹는 약의 DUR 정보 의약품 검색 결과", description = "내가 먹는 약의 DUR 정보 의약품 검색 결과 VO")
public class DurMyDrugSearchRVO {

    /**
     * 아이템 일련번호
     */
    @Schema(description = "아이템 일련번호", type = "String")
    private String itemSeq;

    /**
     * 제품코드
     */
    @Schema(description = "제품코드", type = "String")
    private String stdCd;

    /**
     * 제품명
     */
    @Schema(description = "제품명", type = "String")
    private String itemName;

    /**
     * 업체명
     */
    @Schema(description = "업체명", type = "String")
    private String entpName;

    /**
     * 성분명영문
     */
    @Schema(description = "성분명영문", type = "String")
    private String ingrEngName;

    /**
     * 성분코드
     */
    @Schema(description = "성분코드", type = "String")
    private String ingrCode;
}
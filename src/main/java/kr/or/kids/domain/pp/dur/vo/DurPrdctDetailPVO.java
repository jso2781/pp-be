package kr.or.kids.domain.pp.dur.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import kr.or.kids.global.system.common.vo.PageRequestDto;
import lombok.Getter;
import lombok.Setter;

@Schema(name = "제품 상세 조회 파라메터", description = "제품 상세 조회 파라메터 VO")
@Setter
@Getter
public class DurPrdctDetailPVO extends PageRequestDto{
    /**
     * 성분명
     */
    @Schema(description = "성분명", type = "String")
    private String igrdNm;

    /**
     * 금기 유형 코드
     * conc - DUR병용금기 정보에서 제품별 제약회사 조회(성분명 조건)
     * age - DUR연령금기 정보에서 제품별 제약회사 조회(성분명 조건)
     * prgnt - DUR임부금기 정보에서 제품별 제약회사 조회(성분명 조건)
     * cpct - DUR용량주의 정보에서 제품별 제약회사 조회(성분명 조건)
     * dosage - DUR투여기간주의 정보에서 제품별 제약회사 조회(성분명 조건)
     * eftgrp - DUR효능군중복 정보에서 제품별 제약회사 조회(성분명 조건)
     * snctz - DUR노인주의 정보에서 제품별 제약회사 조회(성분명 조건)
     * nursw - DUR수유부주의 정보에서 제품별 제약회사 조회(성분명 조건)
     * 
     */
    @Schema(description = "금기 유형 코드", type = "String")
    private String bannTypeCd;
    
    /**
     * 연령금기 해당연령
     */
    @Schema(description = "해당연령", type = "Long")
    private Long rlvtAge;

    /**
     * 임부금기등급
     */
    @Schema(description = "임부금기등급", type = "String")
    private String condiGrdCd;

    /**
     * 최대투여기간(일)
     */
    @Schema(description = "최대투여기간(일)", type = "String")
    private String maxAdminPrdDayCnt;

    /**
     * 1일 최대용량
     */
    @Schema(description = "1일 최대용량", type = "String")
    private String dayMaxAdminCpct;
}

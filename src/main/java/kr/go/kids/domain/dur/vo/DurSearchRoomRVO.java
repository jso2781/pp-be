package kr.go.kids.domain.dur.vo;

import java.util.List;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(name = "DUR 정보 검색 조회 결과", description = "DUR 정보 검색 조회 결과 VO")
@Data
public class DurSearchRoomRVO {
    /**
     * 검색한 제품의 성분
     */
    @Schema(description = "검색한 제품의 성분", type = "String")
    private String igrdNm;

    /**
     * 검색한 제품명
     */
    @Schema(description = "검색한 제품명", type = "String")
    private String prdctNm;

    private List<ConcItem> concList;
    private List<AgeItem> ageList;
    private List<PrgntItem> prgntList;
    private List<CpctItem> cpctList;
    private List<DosageItem> dosageList;
    private List<EftgrpItem> eftgrpList;
    private List<SnctzItem> snctzList;
    private List<NurswItem> nurswList;

    @Schema(name = "DUR 병용금기기본 조회 결과", description = "DUR 병용금기기본 조회 결과 VO")
    @Data
    public static class ConcItem {
        /**
         * 검색한 제품의 성분
         */
        @Schema(description = "검색한 제품의 성분", type = "String")
        private String prdctNm;
        /**
         * 검색한 제품의 성분
         */
        @Schema(description = "검색한 제품의 성분", type = "String")
        private String igrdNm;
        /**
         * 병용금기 성분
         */
        @Schema(description = "병용금기 성분", type = "String")
        private String prohibitIgrdNm;
        /**
         * 병용금기 제품명
         */
        @Schema(description = "병용금기 제품명", type = "String")
        private String prohibitPrdctNm;
        /**
         * 상세정보
         */
        @Schema(description = "상세정보", type = "String")
        private String dtlInfoCn;
        /**
         * 비고
         */
        @Schema(description = "비고", type = "String")
        private String rmrkCn;
    }

    @Schema(name = "DUR 연령금기기본 조회 결과", description = "DUR 연령금기기본 조회 결과 VO")
    @Data
    public static class AgeItem {
        /**
         * 검색한 제품의 성분
         */
        @Schema(description = "검색한 제품의 성분", type = "String")
        private String prdctNm;
        /**
         * 검색한 제품의 성분
         */
        @Schema(description = "검색한 제품의 성분", type = "String")
        private String igrdNm;
        /**
         * 해당 연령
         * 18, 16, 60
         */
        @Schema(description = "해당 연령", type = "String")
        private String rlvtAge;
        /**
         * 해당 연령 단위명
         * ex) 세
         */
        @Schema(description = "해당 연령 단위명", type = "String")
        private String rlvtAgeUnitNm;
        /**
         * 연령처리조건명( 18세 이상, 6세 이하 )
         * ex) 미만, 이상, 이하
         */
        @Schema(description = "연령처리조건명", type = "String")
        private String agePrcsCndNm;
        /**
         * 상세정보
         */
        @Schema(description = "상세정보", type = "String")
        private String dtlInfoCn;
    }

    @Schema(name = "DUR 임부금기기본 조회 결과", description = "DUR 임부금기기본 조회 결과 VO")
    @Data
    public static class PrgntItem {
        /**
         * 검색한 제품의 성분
         */
        @Schema(description = "검색한 제품의 성분", type = "String")
        private String prdctNm;
        /**
         * 검색한 제품의 성분
         */
        @Schema(description = "검색한 제품의 성분", type = "String")
        private String igrdNm;
        /**
         * 금기등급코드(임산부금기등급)
         * ex) 1,2,3,4 등급
         */
        @Schema(description = "금기등급코드(임산부금기등급)", type = "String")
        private String condiGrdCd;
        /**
         * 상세정보
         */
        @Schema(description = "상세정보", type = "String")
        private String dtlInfoCn;
    }

    @Schema(name = "DUR 용량주의기본 조회 결과", description = "DUR 용량주의기본 조회 결과 VO")
    @Data
    public static class CpctItem {
        /**
         * 검색한 제품의 성분
         */
        @Schema(description = "검색한 제품의 성분", type = "String")
        private String prdctNm;
        /**
         * 검색한 제품의 성분
         */
        @Schema(description = "검색한 제품의 성분", type = "String")
        private String igrdNm;
        /**
         * 1일 최대용량
         * ex) 갈란타민 24mg, 나프록센 1,250mg 또는 나프록센나트륨 1,350mg
         */
        @Schema(description = "1일 최대용량", type = "String")
        private String dayMaxAdminCpct;
        /**
         * 상세정보
         */
        @Schema(description = "상세정보", type = "String")
        private String dtlInfoCn;
    }

    @Schema(name = "DUR 투여기간주의기본 조회 결과", description = "DUR 투여기간주의기본 조회 결과 VO")
    @Data
    public static class DosageItem {
        /**
         * 검색한 제품의 성분
         */
        @Schema(description = "검색한 제품의 성분", type = "String")
        private String prdctNm;
        /**
         * 검색한 제품의 성분
         */
        @Schema(description = "검색한 제품의 성분", type = "String")
        private String igrdNm;
        /**
         * 최대투여기간(일)
         * 1일
         */
        @Schema(description = "최대투여기간(일)", type = "String")
        private String maxAdminPrdDayCnt;
        /**
         * 비고
         */
        @Schema(description = "비고", type = "String")
        private String rmrkCn;
    }

    @Schema(name = "DUR 효능군중복기본 조회 결과", description = "DUR 효능군중복기본 조회 결과 VO")
    @Data
    public static class EftgrpItem {
        /**
         * 검색한 제품의 성분
         */
        @Schema(description = "검색한 제품의 성분", type = "String")
        private String prdctNm;
        /**
         * 검색한 제품의 성분
         */
        @Schema(description = "검색한 제품의 성분", type = "String")
        private String igrdNm;
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
    }

    @Schema(name = "DUR 노인주의기본 조회 결과", description = "DUR 노인주의기본 조회 결과 VO")
    @Data
    public static class SnctzItem {
        /**
         * 검색한 제품의 성분
         */
        @Schema(description = "검색한 제품의 성분", type = "String")
        private String prdctNm;
        /**
         * 검색한 제품의 성분
         */
        @Schema(description = "검색한 제품의 성분", type = "String")
        private String igrdNm;
        /**
         * 비고
         */
        @Schema(description = "비고", type = "String")
        private String rmrkCn;
    }

    @Schema(name = "DUR 수유부주의기본 조회 결과", description = "DUR 수유부주의기본 조회 결과 VO")
    @Data
    public static class NurswItem {
        /**
         * 검색한 제품의 성분
         */
        @Schema(description = "검색한 제품의 성분", type = "String")
        private String prdctNm;
        /**
         * 검색한 제품의 성분
         */
        @Schema(description = "검색한 제품의 성분", type = "String")
        private String igrdNm;
        /**
         * 비고
         */
        @Schema(description = "비고", type = "String")
        private String rmrkCn;
    }
}

package kr.or.kids.domain.pp.search.vo;

import java.util.List;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(name = "통합검색 결과", description = "통합검색 결과 VO")
@Data
public class IntegratedSearchRVO {

    /**
     * 전체 통합검색 목록(전체 탭에 표기)
     */
    @Schema(description = "전체 통합검색 목록(전체 탭에 표기)", type = "List")
    private List<SearchItem> totalList;

    /**
     * 주요업무 통합검색 목록(주요업무 탭에 표기)
     */
    @Schema(description = "주요업무 통합검색 목록(주요업무 탭에 표기)", type = "List")
    private List<SearchItem> mainTaskList;

    /**
     * 정보공개 통합검색 목록(정보공개 탭에 표기)
     */
    @Schema(description = "정보공개 통합검색 목록(정보공개 탭에 표기)", type = "List")
    private List<SearchItem> infoOpenList;

    /**
     * 기관소식 통합검색 목록(기관소식 탭에 표기)
     */
    @Schema(description = "기관소식 통합검색 목록(기관소식 탭에 표기)", type = "List")
    private List<SearchItem> instNewsList;

    /**
     * 기관소개 통합검색 목록(기관소개 탭에 표기)
     */
    @Schema(description = "기관소개 통합검색 목록(기관소개 탭에 표기)", type = "List")
    private List<SearchItem> instIntroList;

    @Schema(name = "통합검색 1건 레코드 결과", description = "통합검색 1건 레코드 결과 VO")
    @Data
    public static class SearchItem {
        /**
         * 최상위 메뉴 일련번호
         */
        @Schema(description = "최상위 메뉴 일련번호", type = "String")
        private String rootMenuSn;

        /**
         * 최상위 메뉴명
         */
        @Schema(description = "최상위 메뉴명", type = "String")
        private String rootMenuNm;

        /**
         * 메뉴 일련번호
         */
        @Schema(description = "메뉴 일련번호", type = "String")
        private String menuSn;

        /**
         * 메뉴명
         */
        @Schema(description = "메뉴명", type = "String")
        private String menuNm;

        /**
         * 메뉴 경로(메뉴 일련번호 기준) 
         * ex) 1 > 34 > 45
         */
        @Schema(description = "메뉴 일련번호", type = "String")
        private String path;

        /**
         * 메뉴 경로명(메뉴명 기준) 
         * ex) 주요업무 > DUR 정보 > 알림 게시판
         */
        @Schema(description = "메뉴명", type = "String")
        private String pathNm;

        /**
         * 메뉴URL주소
         */
        @Schema(description = "메뉴URL주소", type = "String")
        private String menuUrlAddr;

        /**
         * 문서ID(게시판은 tb_pp_m_pst.pst_sn, CMS는 tb_pp_m_conts.conts_sn)
         */
        @Schema(description = "메뉴URL주소", type = "String")
        private String docSn;

        /**
         * 문서 제목(게시판은 tb_pp_m_pst.pst_ttl, CMS는 tb_pp_m_conts.conts_ttl)
         */
        @Schema(description = "문서 제목", type = "String")
        private String docTtl;

        /**
         * 문서 내용(게시판은 tb_pp_m_pst.pst_cn, CMS는 tb_pp_m_conts.conts_cn)
         */
        @Schema(description = "문서 제목", type = "String")
        private String docCn;
    }
}

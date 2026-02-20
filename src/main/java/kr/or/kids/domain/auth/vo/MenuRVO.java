package kr.or.kids.domain.auth.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Schema(name = "MenuRVO", description = "메뉴 목록 조회 결과 VO")
@Setter
@Getter
public class MenuRVO
{
    /**
     * 메뉴일련번호
     */
    @Schema(description = "메뉴일련번호", type = "Long")
    private Long menuSn;

    /**
     * 메뉴명
     */
    @Schema(description = "메뉴명", type = "String")
    private String menuNm;

    /**
     * 업무구분코드
     */
    @Schema(description = "업무구분코드", type = "String", example = "PP")
    private String taskSeCd;

    /**
     * 언어구분코드
     */
    @Schema(description = "언어구분코드", type = "String", example = "ko - 한국어, en - 영어")
    private String langSeCd;

    /**
     * 메뉴URL주소
     */
    @Schema(description = "메뉴URL주소", type = "String")
    private String menuUrlAddr;

    /**
     * 상위메뉴일련번호
     */
    @Schema(description = "상위메뉴일련번호", type = "Long")
    private Long upMenuSn;

    /**
     * 메뉴레벨
     */
    @Schema(description = "메뉴레벨", type = "Integer", example = "1 - root menu, 2 - second menu, 3 - third menu")
    private Integer depLevel;

    /**
     * Root 메뉴일련번호
     */
    @Schema(description = "Root 메뉴일련번호", type = "Long")
    private Long rootSn;

    /**
     * 메뉴유형코드
     */
    @Schema(description = "메뉴유형코드", type = "String", example = "MENU - 메뉴, PAGE - 화면(LEAF MENU)")
    private String menuTypeCd;

    /**
     * 메뉴 경로( '>' 구분)
     */
    @Schema(description = "메뉴 경로( '>' 구분)", type = "String", example = "4 > 12, 4 > 12 > 14")
    private String path;

    /**
     * 메뉴순서(소속 상위메뉴에서 메뉴순서(1부터 시작)
     */
    @Schema(description = "메뉴순서", type = "Integer", example = "1, 2, 3, 4, 5")
    private Integer menuSeq;

    /**
     * 메뉴설명
     */
    @Schema(description = "메뉴설명", type = "String")
    private String menuExpln;

    /**
     * 담당자부서명
     */
    @Schema(description = "담당자부서명", type = "String")
    private String picDeptNm;

    /**
     * 담당자성명
     */
    @Schema(description = "담당자성명", type = "String")
    private String picFlnm;

    /**
     * 사용여부
     */
    @Schema(description = "사용여부", type = "String")
    private String useYn;

    /**
     * 등록자아이디
     */
    @Schema(description = "등록자아이디", type = "String")
    private String rgtrId;

    /**
     * 등록일시
     */
    @Schema(description = "등록일시", type = "String")
    private String regDt;

    /**
     * 수정자아이디
     */
    @Schema(description = "수정자아이디", type = "String")
    private String mdfrId;

    /**
     * 수정일시
     */
    @Schema(description = "수정일시", type = "String")
    private String mdfcnDt;

    /**
     * 메뉴새창명
     */
    @Schema(description = "메뉴새창명", type = "String")
    private String menuNpagNm;

    /**
     * 개인정보포함여부
     */
    @Schema(description = "개인정보포함여부", type = "String")
    private String prvcInclYn;

    /**
     * 만족도조사여부
     */
    @Schema(description = "만족도조사여부", type = "String")
    private String dgstfnExmnYn;

    /**
     * 메뉴노출여부
     */
    @Schema(description = "메뉴노출여부", type = "String")
    private String menuExpsrYn;

    /**
     * 부서정보노출여부
     */
    @Schema(description = "부서정보노출여부", type = "String")
    private String deptInfoExpsrYn;

    /**
     * 담당자정보노출여부
     */
    @Schema(description = "담당자정보노출여부", type = "String")
    private String picInfoExpsrYn;

    /**
     * 모바일적용여부
     */
    @Schema(description = "모바일적용여부", type = "String")
	private String moblAplcnYn;

    /**
     * 로그인여부
     */
    @Schema(description = "로그인여부", type = "String")
	private String lgnYn;

    /**
     * 암호화담당자전화번호
     */
    @Schema(description = "암호화담당자전화번호", type = "String")
    private String encptPicTelno;

    /**
     * 메뉴공공누리저작권유형코드
     */
    @Schema(description = "메뉴공공누리저작권유형코드", type = "String")
    private String menuKoglCprgtTypeCd;

    /**
     * 메뉴담당자아이디
     */
    @Schema(description = "메뉴담당자아이디", type = "String")
    private String menuPicId;

    /**
     * 메뉴담당자명
     */
    @Schema(description = "메뉴담당자명", type = "String")
    private String menuPicFlnm;

    /**
     * 메뉴담당부서번호
     */
    @Schema(description = "메뉴담당부서번호", type = "String")
    private String menuTkcgDeptNo;

    /**
     * 메뉴담당부서명
     */
    @Schema(description = "메뉴담당부서명", type = "String")
    private String menuTkcgDeptNm;
}
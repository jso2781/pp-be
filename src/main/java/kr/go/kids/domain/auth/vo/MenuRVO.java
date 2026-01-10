package kr.go.kids.domain.auth.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "MenuRVO", description = "메뉴 목록 조회 결과 VO")
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
     * 등록프로그램아이디
     */
    @Schema(description = "등록프로그램아이디", type = "String")
    private String regPrgrmId;

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
     * 수정프로그램아이디
     */
    @Schema(description = "수정프로그램아이디", type = "String")
    private String mdfcnPrgrmId;

    public Long getMenuSn() {
        return menuSn;
    }

    public void setMenuSn(Long menuSn) {
        this.menuSn = menuSn;
    }

    public String getMenuNm() {
        return menuNm;
    }

    public void setMenuNm(String menuNm) {
        this.menuNm = menuNm;
    }

    public String getTaskSeCd() {
        return taskSeCd;
    }

    public void setTaskSeCd(String taskSeCd) {
        this.taskSeCd = taskSeCd;
    }

    public String getLangSeCd() {
        return langSeCd;
    }

    public void setLangSeCd(String langSeCd) {
        this.langSeCd = langSeCd;
    }

    public String getMenuUrlAddr() {
        return menuUrlAddr;
    }

    public void setMenuUrlAddr(String menuUrlAddr) {
        this.menuUrlAddr = menuUrlAddr;
    }

    public Long getUpMenuSn() {
        return upMenuSn;
    }

    public void setUpMenuSn(Long upMenuSn) {
        this.upMenuSn = upMenuSn;
    }

    public Integer getDepLevel() {
        return depLevel;
    }

    public void setDepLevel(Integer depLevel) {
        this.depLevel = depLevel;
    }

    public Long getRootSn() {
        return rootSn;
    }

    public void setRootSn(Long rootSn) {
        this.rootSn = rootSn;
    }

    public String getMenuTypeCd() {
        return menuTypeCd;
    }

    public void setMenuTypeCd(String menuTypeCd) {
        this.menuTypeCd = menuTypeCd;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Integer getMenuSeq() {
        return menuSeq;
    }

    public void setMenuSeq(Integer menuSeq) {
        this.menuSeq = menuSeq;
    }

    public String getMenuExpln() {
        return menuExpln;
    }

    public void setMenuExpln(String menuExpln) {
        this.menuExpln = menuExpln;
    }

    public String getPicDeptNm() {
        return picDeptNm;
    }

    public void setPicDeptNm(String picDeptNm) {
        this.picDeptNm = picDeptNm;
    }

    public String getPicFlnm() {
        return picFlnm;
    }

    public void setPicFlnm(String picFlnm) {
        this.picFlnm = picFlnm;
    }

    public String getUseYn() {
        return useYn;
    }

    public void setUseYn(String useYn) {
        this.useYn = useYn;
    }

    public String getRgtrId() {
        return rgtrId;
    }

    public void setRgtrId(String rgtrId) {
        this.rgtrId = rgtrId;
    }

    public String getRegDt() {
        return regDt;
    }

    public void setRegDt(String regDt) {
        this.regDt = regDt;
    }

    public String getRegPrgrmId() {
        return regPrgrmId;
    }

    public void setRegPrgrmId(String regPrgrmId) {
        this.regPrgrmId = regPrgrmId;
    }

    public String getMdfrId() {
        return mdfrId;
    }

    public void setMdfrId(String mdfrId) {
        this.mdfrId = mdfrId;
    }

    public String getMdfcnDt() {
        return mdfcnDt;
    }

    public void setMdfcnDt(String mdfcnDt) {
        this.mdfcnDt = mdfcnDt;
    }

    public String getMdfcnPrgrmId() {
        return mdfcnPrgrmId;
    }

    public void setMdfcnPrgrmId(String mdfcnPrgrmId) {
        this.mdfcnPrgrmId = mdfcnPrgrmId;
    }
}
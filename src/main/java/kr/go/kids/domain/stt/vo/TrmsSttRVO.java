package kr.go.kids.domain.stt.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "대국민포털_약관법령기본", description = "대국민포털_약관법령기본 Search Result VO")
public class TrmsSttRVO
{
    /**
     * 약관법령일련번호
     */
    @Schema(description = "약관법령일련번호", type = "Long")
    private Long trmsSttSn;

    /**
     * 약관법령코드
     */
    @Schema(description = "약관법령코드", type = "String")
    private String trmsSttCd;

    /**
     * 약관법령적용일
     */
    @Schema(description = "약관법령적용일", type = "String")
    private String trmsSttAplcnDay;

    /**
     * 약관법령종료일
     */
    @Schema(description = "약관법령종료일", type = "String")
    private String trmsSttEndDay;

    /**
     * 약관법령내용
     */
    @Schema(description = "약관법령내용", type = "String")
    private String trmsSttCn;

    /**
     * 첨부파일아이디
     */
    @Schema(description = "첨부파일아이디", type = "String")
    private String atchFileId;

    /**
     * 작성자부서명
     */
    @Schema(description = "작성자부서명", type = "String")
    private String wrtrDeptNm;

    /**
     * 수정자부서명
     */
    @Schema(description = "수정자부서명", type = "String")
    private String mdfrDeptNm;

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

}
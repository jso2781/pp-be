package kr.or.kids.domain.pp.mbr.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "대국민포털_법정대리인정보기본", description = "대국민포털_법정대리인정보기본 Search Parameter VO")
public class SttyAgtInfoPVO
{
    /**
     * 회원번호
     */
    @Schema(description = "회원번호", type = "String")
    private String mbrNo;

    /**
     * 법정대리인명
     */
    @Schema(description = "법정대리인명", type = "String")
    private String sttyAgtNm;

    /**
     * 법정대리인암호화전화번호
     */
    @Schema(description = "법정대리인암호화전화번호", type = "String")
    private String encptSttyAgtTelno;

    /**
     * 법정대리인관계명
     */
    @Schema(description = "법정대리인관계명", type = "String")
    private String sttyAgtRelNm;

    /**
     * 연계정보식별아이디
     */
    @Schema(description = "연계정보식별아이디", type = "String")
    private String linkInfoIdntfId;

    /**
     * 인증토큰
     */
    @Schema(description = "인증토큰", type = "String")
    private String certTokenVl;

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

}
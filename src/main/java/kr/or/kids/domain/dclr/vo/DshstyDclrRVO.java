package kr.or.kids.domain.dclr.vo;

import java.math.BigInteger;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "대국민포털_부정신고기본", description = "대국민포털_부정신고기본 Search Result VO")
public class DshstyDclrRVO
{
    /**
     * 신고일련번호
     */
    @Schema(description = "신고일련번호", type = "BigInteger")
    private BigInteger dclrSn;

    /**
     * 암호화회원성명
     */
    @Schema(description = "암호화회원성명", type = "String")
    private String encptMbrFlnm;

    /**
     * 암호화회원전화번호
     */
    @Schema(description = "암호화회원전화번호", type = "String")
    private String encptMbrTelno;

    /**
     * 암호화회원이메일명
     */
    @Schema(description = "암호화회원이메일명", type = "String")
    private String encptMbrEmlNm;

    /**
     * 신고제목명
     */
    @Schema(description = "신고제목명", type = "String")
    private String dclrTtlNm;

    /**
     * 부정행위자성명
     */
    @Schema(description = "부정행위자성명", type = "String")
    private String dshstyActrFlnm;

    /**
     * 부정행위시점내용
     */
    @Schema(description = "부정행위시점내용", type = "String")
    private String dshstyActPipCn;

    /**
     * 부정행위장소내용
     */
    @Schema(description = "부정행위장소내용", type = "String")
    private String dshstyActPlcCn;

    /**
     * 부정행위내용
     */
    @Schema(description = "부정행위내용", type = "String")
    private String dshstyActCn;

    /**
     * 추가식별확인자명
     */
    @Schema(description = "추가식별확인자명", type = "String")
    private String addIdntfIdfrNm;

    /**
     * 신고내용확인방법내용
     */
    @Schema(description = "신고내용확인방법내용", type = "String")
    private String dclrCnIdntyMthdCn;

    /**
     * 부정행위식별사유내용
     */
    @Schema(description = "부정행위식별사유내용", type = "String")
    private String dshstyActIdntfRsnCn;

    /**
     * 부정행위기간내용
     */
    @Schema(description = "부정행위기간내용", type = "String")
    private String 	dshstyActPrdCn;

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
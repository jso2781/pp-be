package kr.or.kids.domain.opnn.vo;

import java.math.BigInteger;

import org.springframework.web.multipart.MultipartFile;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "대국민포털_의견제안", description = "대국민포털_의견제안 Search Parameter VO")
public class OpnnPVO
{
    /**
     * 의견일련번호
     */
    @Schema(description = "의견일련번호", type = "BigInteger")
    private BigInteger opnnSn;

    /**
     * 작성자암호화성명
     */
    @Schema(description = "작성자암호화성명", type = "String")
    private String encptWrtrFlnm;

    /**
     * 작성자암호화전화번호
     */
    @Schema(description = "작성자암호화전화번호", type = "String")
    private String encptWrtrTelno;

    /**
     * 작성자암호화이메일
     */
    @Schema(description = "작성자암호화이메일", type = "String")
    private String encptMbrEmlNm;

    /**
     * 작성구분코드
     */
    @Schema(description = "작성구분코드", type = "String")
    private String wrtSeCd;

    /**
     * 문제점내용
     */
    @Schema(description = "문제점내용", type = "String")
    private String pbptCn;

    /**
     * 요청사항내용
     */
    @Schema(description = "요청사항내용", type = "String")
    private String dmndMttrCn;

    /**
     * 요청사항상세내용
     */
    @Schema(description = "요청사항상세내용", type = "String")
    private String dmndMttrDtlCn;

    /**
     * 참고사항내용
     */
    @Schema(description = "참고사항내용", type = "String")
    private String refMttrCn;
    
    /**
     * 내부참고사항내용
     */
    @Schema(description = "내부참고사항내용", type = "String")
    private String insdRefMttrCn;

    /**
     * 첨부파일그룹아이디
     */
    @Schema(description = "첨부파일그룹아이디", type = "String")
    private String atchFileGroupId;

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
     * 메뉴일련번호(첨부파일 업로드시 파일정보 입력시 사용)
     */
    @Schema(description = "메뉴일련번호(첨부파일 업로드시 파일정보 입력시 사용)", type = "BigInteger")
    private BigInteger menuSn;

    /**
     * 메뉴유형(첨부파일 업로드시 파일정보 입력시 사용)
     */
    @Schema(description = "메뉴유형(첨부파일 업로드시 파일정보 입력시 사용)", type = "String")
    private String menuType;

    /**
     * 대국민포털_의견제안 첨부파일 목록
     */
    @Schema(description = "대국민포털_의견제안 첨부파일 목록", type = "MultipartFile[]")
    private MultipartFile[] attachFiles;

}

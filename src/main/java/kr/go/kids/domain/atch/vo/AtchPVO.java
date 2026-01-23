package kr.go.kids.domain.atch.vo;

import java.math.BigInteger;
import java.time.LocalDateTime;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "공통_첨부파일기본", description = "공통_첨부파일기본 Search Parameter VO")
public class AtchPVO
{
    /**
     * 첨부파일일련번호
     */
    @Schema(description = "첨부파일일련번호", type = "BigInteger")
    private BigInteger atchFileSn;

    /**
     * 메뉴일련번호
     */
    @Schema(description = "메뉴일련번호", type = "BigInteger")
    private BigInteger menuSn;

    /**
     * 메뉴유형
     */
    @Schema(description = "메뉴유형", type = "String")
    private String menuType;

    /**
     * 첨부파일업로드시간
     */
    @Schema(description = "첨부파일업로드시간", type = "String")
    private LocalDateTime atchFileUldHr;

    /**
     * 첨부파일사용여부
     */
    @Schema(description = "첨부파일사용여부", type = "String")
    private String atchFileUseYn;

    /**
     * 첨부파일경로
     */
    @Schema(description = "첨부파일경로", type = "String")
    private String atchFilePath;

    /**
     * 첨부파일명
     */
    @Schema(description = "첨부파일명", type = "String")
    private String atchFileNm;

    /**
     * 첨부파일확장자명
     */
    @Schema(description = "첨부파일확장자명", type = "String")
    private String atchFileExtnNm;

    /**
     * 첨부파일내용
     */
    @Schema(description = "첨부파일내용", type = "String")
    private String atchFileCn;

    /**
     * 첨부파일크기
     */
    @Schema(description = "첨부파일크기", type = "Long")
    private Long atchFileSz;

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
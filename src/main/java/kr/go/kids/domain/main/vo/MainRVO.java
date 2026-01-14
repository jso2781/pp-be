package kr.go.kids.domain.main.vo;

import java.math.BigInteger;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "대국민포털_메인화면", description = "대국민포털_메인화면 게시물 컨텐츠 Result VO")
public class MainRVO {

    /**
     * 게시물일련번호
     */
    @Schema(description = "게시물일련번호", type = "BigInteger")
    private BigInteger pstSn;

    /**
     * 게시판아이디
     */
    @Schema(description = "게시판아이디", type = "String")
    private String bbsId;

    /**
     * 게시물제목
     */
    @Schema(description = "게시물제목", type = "String")
    private String pstTtl;

    /**
     * 첨부파일아이디
     */
    @Schema(description = "첨부파일아이디", type = "String")
    private String atchFileId;

    /**
     * 썸네일아이디
     */
    @Schema(description = "썸네일아이디", type = "String")
    private String thmbId;

    /**
     * 등록일시
     */
    @Schema(description = "등록일시", type = "String")
    private String regDt;

    /**
     * 첨부파일명
     */
    @Schema(description = "첨부파일명", type = "String")
    private String atchFileNm;

    /**
     * 첨부파일경로
     */
    @Schema(description = "첨부파일경로", type = "String")
    private String atchFilePath;
}
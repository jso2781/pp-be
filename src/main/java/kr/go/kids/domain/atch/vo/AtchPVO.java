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
     * 첨부파일ID (atch_file_id)
     */
    @Schema(description = "첨부파일ID", type = "String")
    private String atchFileId;

    /**
     * 첨부파일그룹ID (atch_file_group_id)
     */
    @Schema(description = "첨부파일그룹ID", type = "String")
    private String atchFileGroupId;

    /**
     * 파일순번 (file_seq)
     */
    @Schema(description = "파일순번", type = "Integer")
    private Integer fileSeq;

    /**
     * 업무구분코드 (task_se_cd)
     */
    @Schema(description = "업무구분코드", type = "String")
    private String taskSeCd;

    /**
     * 업무구분대상ID (task_se_trgt_id)
     */
    @Schema(description = "업무구분대상ID", type = "String")
    private String taskSeTrgtId;

    /**
     * 파일저장경로설명 (file_strg_path_dsctn)
     */
    @Schema(description = "파일저장경로설명", type = "String")
    private String fileStrgPathDsctn;

    /**
     * 암호화파일명 (encd_file_nm)
     */
    @Schema(description = "암호화파일명", type = "String")
    private String encdFileNm;

    /**
     * 개인정보포함여부 (prvc_incl_yn)
     */
    @Schema(description = "개인정보포함여부", type = "String")
    private String prvcInclYn;

    /**
     * 파일명 (file_nm)
     */
    @Schema(description = "파일명", type = "String")
    private String fileNm;

    /**
     * 파일확장자명 (file_extn_nm)
     */
    @Schema(description = "파일확장자명", type = "String")
    private String fileExtnNm;

    /**
     * 파일내용 (file_cn)
     */
    @Schema(description = "파일내용", type = "String")
    private String fileCn;

    /**
     * 파일크기 (file_sz)
     */
    @Schema(description = "파일크기", type = "Long")
    private Long fileSz;

    /**
     * 생성일시 (crt_dt)
     */
    @Schema(description = "생성일시", type = "String")
    private String crtDt;

    /**
     * 사용여부 (use_yn)
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

}
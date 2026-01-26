package kr.go.kids.domain.atch.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "공통_첨부파일기본", description = "공통_첨부파일기본 Delete Parameter VO")
public class AtchDVO
{
    /**
     * 첨부파일ID
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "첨부파일ID", type = "String")
    private String atchFileId;

    /**
     * 첨부파일그룹ID (그룹 전체 삭제시 사용)
     */
    @Schema(description = "첨부파일그룹ID", type = "String")
    private String atchFileGroupId;
}
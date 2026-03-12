package kr.or.kids.domain.pp.task.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
@Schema(name = "업무코드로부터 업무별 업로드된 파일의 첨부파일ID를 가져오기 결과 VO", description = "업무코드로부터 업무별 업로드된 파일의 첨부파일ID를 가져오기 결과 VO")
public class FileIdFromTaskCdRVO
{
    /**
     * 첨부파일ID(업무코드로부터 업무별 업로드된 파일의 첨부파일ID)
     */
    @Schema(description = "첨부파일ID", type = "String")
    private String atchFileId;
}
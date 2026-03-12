package kr.or.kids.domain.pp.task.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "업무코드로부터 업무별 업로드된 파일의 첨부파일ID를 가져오기 파라메터 VO", description = "업무코드로부터 업무별 업로드된 파일의 첨부파일ID를 가져오기 파라메터 VO")
public class FileIdFromTaskCdPVO
{
    /**
     * 업무코드(업무코드로부터 업무별 업로드된 파일의 첨부파일ID를 가져오기)
     */
    @Schema(description = "업무코드", type = "String")
    private String taskCd;
}
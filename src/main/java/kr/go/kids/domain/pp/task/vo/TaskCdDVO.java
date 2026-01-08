package kr.go.kids.domain.pp.task.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_업무코드기본", description = "대국민포털_업무코드기본 Delete Parameter VO")
public class TaskCdDVO
{
    /**
     * 업무코드
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "업무코드", type = "String")
    private String taskCd;

    public String getTaskCd()
    {
        return taskCd;
    }
    public void setTaskCd(String taskCd)
    {
        this.taskCd = taskCd;
    }

}
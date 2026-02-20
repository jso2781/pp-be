package kr.or.kids.domain.pp.inst.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_기관업무기본", description = "대국민포털_기관업무기본 Delete Parameter VO")
public class InstTaskDVO
{
    /**
     * 사업자등록번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "사업자등록번호", type = "String")
    private String brno;

    /**
     * 업무구분코드
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "업무구분코드", type = "String")
    private String taskSeCd;

    public String getBrno()
    {
        return brno;
    }
    public void setBrno(String brno)
    {
        this.brno = brno;
    }
    public String getTaskSeCd()
    {
        return taskSeCd;
    }
    public void setTaskSeCd(String taskSeCd)
    {
        this.taskSeCd = taskSeCd;
    }

}
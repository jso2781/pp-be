package kr.go.kids.domain.pp.exprt.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_전문가업무기본", description = "대국민포털_전문가업무기본 Delete Parameter VO")
public class ExprtTaskDVO
{
    /**
     * 전문가업무일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "전문가업무일련번호", type = "Long")
    private Long exprtTaskSn;

    public Long getExprtTaskSn()
    {
        return exprtTaskSn;
    }
    public void setExprtTaskSn(Long exprtTaskSn)
    {
        this.exprtTaskSn = exprtTaskSn;
    }

}
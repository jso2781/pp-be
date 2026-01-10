package kr.go.kids.domain.stt.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_약관법령기본", description = "대국민포털_약관법령기본 Delete Parameter VO")
public class TrmsSttDVO
{
    /**
     * 약관법령일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "약관법령일련번호", type = "Long")
    private Long trmsSttSn;

    public Long getTrmsSttSn()
    {
        return trmsSttSn;
    }
    public void setTrmsSttSn(Long trmsSttSn)
    {
        this.trmsSttSn = trmsSttSn;
    }

}
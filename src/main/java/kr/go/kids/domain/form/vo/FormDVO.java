package kr.go.kids.domain.form.vo;

import java.math.BigInteger;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;


@Schema(name = "대국민포털_양식기본", description = "대국민포털_양식기본 Delete Parameter VO")
public class FormDVO
{
    /**
     * 양식일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "양식일련번호", type = "BigInteger")
    private BigInteger formSn;

    public BigInteger getFormSn()
    {
        return formSn;
    }
    public void setFormSn(BigInteger formSn)
    {
        this.formSn = formSn;
    }

}
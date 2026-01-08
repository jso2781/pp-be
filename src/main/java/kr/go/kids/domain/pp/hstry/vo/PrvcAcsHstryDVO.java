package kr.go.kids.domain.pp.hstry.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_개인정보접근이력기본", description = "대국민포털_개인정보접근이력기본 Delete Parameter VO")
public class PrvcAcsHstryDVO
{
    /**
     * 개인정보접근일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "개인정보접근일련번호", type = "Long")
    private Long prvcAcsSn;

    public Long getPrvcAcsSn()
    {
        return prvcAcsSn;
    }
    public void setPrvcAcsSn(Long prvcAcsSn)
    {
        this.prvcAcsSn = prvcAcsSn;
    }

}
package kr.go.kids.domain.pp.auth.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_메뉴상세", description = "대국민포털_메뉴상세 Delete Parameter VO")
public class MenuDDVO
{
    /**
     * 메뉴일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "메뉴일련번호", type = "Long")
    private Long menuSn;

    public Long getMenuSn()
    {
        return menuSn;
    }
    public void setMenuSn(Long menuSn)
    {
        this.menuSn = menuSn;
    }

}
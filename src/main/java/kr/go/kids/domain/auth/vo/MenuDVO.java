package kr.go.kids.domain.auth.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_메뉴기본", description = "대국민포털_메뉴기본 Delete Parameter VO")
public class MenuDVO
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
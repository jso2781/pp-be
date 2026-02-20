package kr.or.kids.domain.pp.auth.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_권한메뉴기본", description = "대국민포털_권한메뉴기본 Delete Parameter VO")
public class AuthrtMenuDVO
{
    /**
     * 권한코드
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "권한코드", type = "String")
    private String authrtCd;

    /**
     * 메뉴일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "메뉴일련번호", type = "Long")
    private Long menuSn;

    public String getAuthrtCd()
    {
        return authrtCd;
    }
    public void setAuthrtCd(String authrtCd)
    {
        this.authrtCd = authrtCd;
    }
    public Long getMenuSn()
    {
        return menuSn;
    }
    public void setMenuSn(Long menuSn)
    {
        this.menuSn = menuSn;
    }

}
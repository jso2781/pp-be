package kr.or.kids.domain.auth.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_권한메뉴롤기본", description = "대국민포털_권한메뉴롤기본 Delete Parameter VO")
public class AuthrtMenuRoleDVO
{
    /**
     * 권한코드
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "권한코드", type = "String")
    private String authrtCd;

    /**
     * 역할코드
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "역할코드", type = "String")
    private String roleCd;

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
    public String getRoleCd()
    {
        return roleCd;
    }
    public void setRoleCd(String roleCd)
    {
        this.roleCd = roleCd;
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
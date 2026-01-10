package kr.go.kids.domain.auth.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_메뉴기본", description = "대국민포털_메뉴기본 Search Parameter VO")
public class MenuPVO
{
    /**
     * 언어구분코드
     */
    @Schema(description = "언어구분코드", type = "String")
    private String langSeCd;

    /**
     * 메뉴URL주소
     */
    @Schema(description = "메뉴URL주소", type = "String")
    private String menuUrlAddr;

    public String getLangSeCd()
    {
        return langSeCd;
    }
    public void setLangSeCd(String langSeCd)
    {
        this.langSeCd = langSeCd;
    }
    public String getMenuUrlAddr()
    {
        return menuUrlAddr;
    }
    public void setMenuUrlAddr(String menuUrlAddr)
    {
        this.menuUrlAddr = menuUrlAddr;
    }
}
package kr.go.kids.domain.auth.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_역할기본", description = "대국민포털_역할기본 Delete Parameter VO")
public class RoleDVO
{
    /**
     * 역할코드
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "역할코드", type = "String")
    private String roleCd;

    public String getRoleCd()
    {
        return roleCd;
    }
    public void setRoleCd(String roleCd)
    {
        this.roleCd = roleCd;
    }

}
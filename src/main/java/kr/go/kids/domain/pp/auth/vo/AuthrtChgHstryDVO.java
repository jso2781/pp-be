package kr.go.kids.domain.pp.auth.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_권한변경이력기본", description = "대국민포털_권한변경이력기본 Delete Parameter VO")
public class AuthrtChgHstryDVO
{
    /**
     * 권한변경일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "권한변경일련번호", type = "Long")
    private Long authrtChgSn;

    public Long getAuthrtChgSn()
    {
        return authrtChgSn;
    }
    public void setAuthrtChgSn(Long authrtChgSn)
    {
        this.authrtChgSn = authrtChgSn;
    }

}
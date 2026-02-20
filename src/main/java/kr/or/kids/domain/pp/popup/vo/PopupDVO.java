package kr.or.kids.domain.pp.popup.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;

@Schema(name = "대국민포털_팝업기본", description = "대국민포털_팝업기본 Delete Parameter VO")
public class PopupDVO
{
    /**
     * 팝업일련번호
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "팝업일련번호", type = "Long")
    private Long popupSn;

    public Long getPopupSn()
    {
        return popupSn;
    }
    public void setPopupSn(Long popupSn)
    {
        this.popupSn = popupSn;
    }

}
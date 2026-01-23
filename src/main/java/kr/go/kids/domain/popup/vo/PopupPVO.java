package kr.go.kids.domain.popup.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_팝업기본", description = "대국민포털_팝업기본 Search Parameter VO")
public class PopupPVO
{
    /**
     * 팝업일련번호
     */
    @Schema(description = "팝업일련번호", type = "Long")
    private Long popupSn;

    /**
     * 팝업제목
     */
    @Schema(description = "팝업제목", type = "String")
    private String popupTtl;

    /**
     * 팝업게시시작일자
     */
    @Schema(description = "팝업게시시작일자", type = "String")
    private String popupPstgBgngYmd;

    /**
     * 팝업게시종료일자
     */
    @Schema(description = "팝업게시종료일자", type = "String")
    private String popupPstgEndYmd;

    /**
     * 팝업연결주소
     */
    @Schema(description = "팝업연결주소", type = "String")
    private String popupLnkgAddr;

    /**
     * 팝업순서
     */
    @Schema(description = "팝업순서", type = "Long")
    private Long popupSeq;

    /**
     * 팝업게시여부
     */
    @Schema(description = "팝업게시여부", type = "String")
    private String popupPstgYn;

    /**
     * 팝업새창여부
     */
    @Schema(description = "팝업새창여부", type = "String")
    private String popupNpagYn;

    /**
     * 팝업설명
     */
    @Schema(description = "팝업설명", type = "String")
    private String popupExpln;

    /**
     * 첨부파일아이디
     */
    @Schema(description = "첨부파일아이디", type = "String")
    private String atchFileId;

    /**
     * 작성자부서명
     */
    @Schema(description = "작성자부서명", type = "String")
    private String wrtrDeptNm;

    /**
     * 수정자부서명
     */
    @Schema(description = "수정자부서명", type = "String")
    private String mdfrDeptNm;

    /**
     * 등록자아이디
     */
    @Schema(description = "등록자아이디", type = "String")
    private String rgtrId;

    /**
     * 등록일시
     */
    @Schema(description = "등록일시", type = "String")
    private String regDt;

    /**
     * 수정자아이디
     */
    @Schema(description = "수정자아이디", type = "String")
    private String mdfrId;

    /**
     * 수정일시
     */
    @Schema(description = "수정일시", type = "String")
    private String mdfcnDt;

    public Long getPopupSn()
    {
        return popupSn;
    }
    public void setPopupSn(Long popupSn)
    {
        this.popupSn = popupSn;
    }
    public String getPopupTtl()
    {
        return popupTtl;
    }
    public void setPopupTtl(String popupTtl)
    {
        this.popupTtl = popupTtl;
    }
    public String getPopupPstgBgngYmd()
    {
        return popupPstgBgngYmd;
    }
    public void setPopupPstgBgngYmd(String popupPstgBgngYmd)
    {
        this.popupPstgBgngYmd = popupPstgBgngYmd;
    }
    public String getPopupPstgEndYmd()
    {
        return popupPstgEndYmd;
    }
    public void setPopupPstgEndYmd(String popupPstgEndYmd)
    {
        this.popupPstgEndYmd = popupPstgEndYmd;
    }
    public String getPopupLnkgAddr()
    {
        return popupLnkgAddr;
    }
    public void setPopupLnkgAddr(String popupLnkgAddr)
    {
        this.popupLnkgAddr = popupLnkgAddr;
    }
    public Long getPopupSeq()
    {
        return popupSeq;
    }
    public void setPopupSeq(Long popupSeq)
    {
        this.popupSeq = popupSeq;
    }
    public String getPopupPstgYn()
    {
        return popupPstgYn;
    }
    public void setPopupPstgYn(String popupPstgYn)
    {
        this.popupPstgYn = popupPstgYn;
    }
    public String getPopupNpagYn()
    {
        return popupNpagYn;
    }
    public void setPopupNpagYn(String popupNpagYn)
    {
        this.popupNpagYn = popupNpagYn;
    }
    public String getPopupExpln()
    {
        return popupExpln;
    }
    public void setPopupExpln(String popupExpln)
    {
        this.popupExpln = popupExpln;
    }
    public String getAtchFileId()
    {
        return atchFileId;
    }
    public void setAtchFileId(String atchFileId)
    {
        this.atchFileId = atchFileId;
    }
    public String getWrtrDeptNm()
    {
        return wrtrDeptNm;
    }
    public void setWrtrDeptNm(String wrtrDeptNm)
    {
        this.wrtrDeptNm = wrtrDeptNm;
    }
    public String getMdfrDeptNm()
    {
        return mdfrDeptNm;
    }
    public void setMdfrDeptNm(String mdfrDeptNm)
    {
        this.mdfrDeptNm = mdfrDeptNm;
    }
    public String getRgtrId()
    {
        return rgtrId;
    }
    public void setRgtrId(String rgtrId)
    {
        this.rgtrId = rgtrId;
    }
    public String getRegDt()
    {
        return regDt;
    }
    public void setRegDt(String regDt)
    {
        this.regDt = regDt;
    }

    

    
    public String getMdfrId()
    {
        return mdfrId;
    }
    public void setMdfrId(String mdfrId)
    {
        this.mdfrId = mdfrId;
    }
    public String getMdfcnDt()
    {
        return mdfcnDt;
    }
    public void setMdfcnDt(String mdfcnDt)
    {
        this.mdfcnDt = mdfcnDt;
    }

    

    

}
package kr.go.kids.domain.notice.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_게시판기본", description = "대국민포털_게시판기본 Search Result VO")
public class BbsRVO
{
    /**
     * 게시판아이디
     */
    @Schema(description = "게시판아이디", type = "String")
    private String bbsId;

    /**
     * 게시판명
     */
    @Schema(description = "게시판명", type = "String")
    private String bbsNm;

    /**
     * 게시판속성
     */
    @Schema(description = "게시판속성", type = "String")
    private String bbsAtrbCd;

    /**
     * 게시판설명
     */
    @Schema(description = "게시판설명", type = "String")
    private String bbsExpln;

    /**
     * 게시판요약
     */
    @Schema(description = "게시판요약", type = "String")
    private String bbsSmryCn;

    /**
     * 댓글사용여부
     */
    @Schema(description = "댓글사용여부", type = "String")
    private String cmntUseYn;

    /**
     * 조회수노출여부
     */
    @Schema(description = "조회수노출여부", type = "String")
    private String inqCntExpsrYn;

    /**
     * 부서노출여부
     */
    @Schema(description = "부서노출여부", type = "String")
    private String deptExpsrYn;

    /**
     * 파일첨부여부
     */
    @Schema(description = "파일첨부여부", type = "String")
    private String fileAtchYn;

    /**
     * 첨부가능파일수
     */
    @Schema(description = "첨부가능파일수", type = "Integer")
    private Integer atchPsbltyFileCnt;

    /**
     * 언어구분코드
     */
    @Schema(description = "언어구분코드", type = "String")
    private String langSeCd;

    /**
     * 사용여부
     */
    @Schema(description = "사용여부", type = "String")
    private String useYn;

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

    public String getBbsId()
    {
        return bbsId;
    }
    public void setBbsId(String bbsId)
    {
        this.bbsId = bbsId;
    }
    public String getBbsNm()
    {
        return bbsNm;
    }
    public void setBbsNm(String bbsNm)
    {
        this.bbsNm = bbsNm;
    }
    public String getBbsAtrbCd()
    {
        return bbsAtrbCd;
    }
    public void setBbsAtrbCd(String bbsAtrbCd)
    {
        this.bbsAtrbCd = bbsAtrbCd;
    }
    public String getBbsExpln()
    {
        return bbsExpln;
    }
    public void setBbsExpln(String bbsExpln)
    {
        this.bbsExpln = bbsExpln;
    }
    public String getBbsSmryCn()
    {
        return bbsSmryCn;
    }
    public void setBbsSmryCn(String bbsSmryCn)
    {
        this.bbsSmryCn = bbsSmryCn;
    }
    public String getCmntUseYn()
    {
        return cmntUseYn;
    }
    public void setCmntUseYn(String cmntUseYn)
    {
        this.cmntUseYn = cmntUseYn;
    }
    public String getInqCntExpsrYn()
    {
        return inqCntExpsrYn;
    }
    public void setInqCntExpsrYn(String inqCntExpsrYn)
    {
        this.inqCntExpsrYn = inqCntExpsrYn;
    }
    public String getDeptExpsrYn()
    {
        return deptExpsrYn;
    }
    public void setDeptExpsrYn(String deptExpsrYn)
    {
        this.deptExpsrYn = deptExpsrYn;
    }
    public String getFileAtchYn()
    {
        return fileAtchYn;
    }
    public void setFileAtchYn(String fileAtchYn)
    {
        this.fileAtchYn = fileAtchYn;
    }
    public Integer getAtchPsbltyFileCnt()
    {
        return atchPsbltyFileCnt;
    }
    public void setAtchPsbltyFileCnt(Integer atchPsbltyFileCnt)
    {
        this.atchPsbltyFileCnt = atchPsbltyFileCnt;
    }
    public String getLangSeCd()
    {
        return langSeCd;
    }
    public void setLangSeCd(String langSeCd)
    {
        this.langSeCd = langSeCd;
    }
    public String getUseYn()
    {
        return useYn;
    }
    public void setUseYn(String useYn)
    {
        this.useYn = useYn;
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
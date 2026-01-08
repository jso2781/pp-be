package kr.go.kids.domain.pp.faq.vo;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_FAQ기본", description = "대국민포털_FAQ기본 Search Result VO")
public class FaqRVO
{
    /**
     * FAQ일련번호
     */
    @Schema(description = "FAQ일련번호", type = "Long")
    private Long faqSn;

    /**
     * 업무구분코드
     */
    @Schema(description = "업무구분코드", type = "String")
    private String taskSeCd;

    /**
     * FAQ분류
     */
    @Schema(description = "FAQ분류", type = "String")
    private String faqClsf;

    /**
     * FAQ제목
     */
    @Schema(description = "FAQ제목", type = "String")
    private String faqTtl;

    /**
     * FAQ순서
     */
    @Schema(description = "FAQ순서", type = "Integer")
    private Integer faqSeq;

    /**
     * 사용여부
     */
    @Schema(description = "사용여부", type = "String")
    private String useYn;

    /**
     * 언어구분코드
     */
    @Schema(description = "언어구분코드", type = "String")
    private String langSeCd;

    /**
     * FAQ답변
     */
    @Schema(description = "FAQ답변", type = "String")
    private String faqAns;

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
     * 등록프로그램아이디
     */
    @Schema(description = "등록프로그램아이디", type = "String")
    private String regPrgrmId;

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

    /**
     * 수정프로그램아이디
     */
    @Schema(description = "수정프로그램아이디", type = "String")
    private String mdfcnPrgrmId;

    public Long getFaqSn()
    {
        return faqSn;
    }
    public void setFaqSn(Long faqSn)
    {
        this.faqSn = faqSn;
    }
    public String getTaskSeCd()
    {
        return taskSeCd;
    }
    public void setTaskSeCd(String taskSeCd)
    {
        this.taskSeCd = taskSeCd;
    }
    public String getFaqClsf()
    {
        return faqClsf;
    }
    public void setFaqClsf(String faqClsf)
    {
        this.faqClsf = faqClsf;
    }
    public String getFaqTtl()
    {
        return faqTtl;
    }
    public void setFaqTtl(String faqTtl)
    {
        this.faqTtl = faqTtl;
    }
    public Integer getFaqSeq()
    {
        return faqSeq;
    }
    public void setFaqSeq(Integer faqSeq)
    {
        this.faqSeq = faqSeq;
    }
    public String getUseYn()
    {
        return useYn;
    }
    public void setUseYn(String useYn)
    {
        this.useYn = useYn;
    }
    public String getLangSeCd()
    {
        return langSeCd;
    }
    public void setLangSeCd(String langSeCd)
    {
        this.langSeCd = langSeCd;
    }
    public String getFaqAns()
    {
        return faqAns;
    }
    public void setFaqAns(String faqAns)
    {
        this.faqAns = faqAns;
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
    public String getRegPrgrmId()
    {
        return regPrgrmId;
    }
    public void setRegPrgrmId(String regPrgrmId)
    {
        this.regPrgrmId = regPrgrmId;
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
    public String getMdfcnPrgrmId()
    {
        return mdfcnPrgrmId;
    }
    public void setMdfcnPrgrmId(String mdfcnPrgrmId)
    {
        this.mdfcnPrgrmId = mdfcnPrgrmId;
    }

}
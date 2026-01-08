package kr.go.kids.domain.pp.notice.vo;

import java.math.BigInteger;
import io.swagger.v3.oas.annotations.media.Schema;


@Schema(name = "대국민포털_게시물기본", description = "대국민포털_게시물기본 Search Result VO")
public class PstRVO
{
    /**
     * 게시물일련번호
     */
    @Schema(description = "게시물일련번호", type = "BigInteger")
    private BigInteger pstSn;

    /**
     * 게시판아이디
     */
    @Schema(description = "게시판아이디", type = "String")
    private String bbsId;

    /**
     * 게시물제목
     */
    @Schema(description = "게시물제목", type = "String")
    private String pstTtl;

    /**
     * 게시물내용
     */
    @Schema(description = "게시물내용", type = "String")
    private String pstCn;

    /**
     * 게시물조회수
     */
    @Schema(description = "게시물조회수", type = "Long")
    private Long pstInqCnt;

    /**
     * 게시물공공누리저작권유형코드
     */
    @Schema(description = "게시물공공누리저작권유형코드", type = "String")
    private String pstKoglCprgtTypeCd;

    /**
     * 첨부파일아이디
     */
    @Schema(description = "첨부파일아이디", type = "String")
    private String atchFileId;

    /**
     * 썸네일아이디
     */
    @Schema(description = "썸네일아이디", type = "String")
    private String thmbId;

    /**
     * 공지여부
     */
    @Schema(description = "공지여부", type = "String")
    private String ntcYn;

    /**
     * 삭제여부
     */
    @Schema(description = "삭제여부", type = "String")
    private String delYn;

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

    public BigInteger getPstSn()
    {
        return pstSn;
    }
    public void setPstSn(BigInteger pstSn)
    {
        this.pstSn = pstSn;
    }
    public String getBbsId()
    {
        return bbsId;
    }
    public void setBbsId(String bbsId)
    {
        this.bbsId = bbsId;
    }
    public String getPstTtl()
    {
        return pstTtl;
    }
    public void setPstTtl(String pstTtl)
    {
        this.pstTtl = pstTtl;
    }
    public String getPstCn()
    {
        return pstCn;
    }
    public void setPstCn(String pstCn)
    {
        this.pstCn = pstCn;
    }
    public Long getPstInqCnt()
    {
        return pstInqCnt;
    }
    public void setPstInqCnt(Long pstInqCnt)
    {
        this.pstInqCnt = pstInqCnt;
    }
    public String getPstKoglCprgtTypeCd()
    {
        return pstKoglCprgtTypeCd;
    }
    public void setPstKoglCprgtTypeCd(String pstKoglCprgtTypeCd)
    {
        this.pstKoglCprgtTypeCd = pstKoglCprgtTypeCd;
    }
    public String getAtchFileId()
    {
        return atchFileId;
    }
    public void setAtchFileId(String atchFileId)
    {
        this.atchFileId = atchFileId;
    }
    public String getThmbId()
    {
        return thmbId;
    }
    public void setThmbId(String thmbId)
    {
        this.thmbId = thmbId;
    }
    public String getNtcYn()
    {
        return ntcYn;
    }
    public void setNtcYn(String ntcYn)
    {
        this.ntcYn = ntcYn;
    }
    public String getDelYn()
    {
        return delYn;
    }
    public void setDelYn(String delYn)
    {
        this.delYn = delYn;
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
    public void increaseInqCnt() {
        this.pstInqCnt++;
    }    
}
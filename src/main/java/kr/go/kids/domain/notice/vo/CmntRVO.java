package kr.go.kids.domain.notice.vo;

import java.math.BigInteger;
import io.swagger.v3.oas.annotations.media.Schema;


@Schema(name = "대국민포털_댓글기본", description = "대국민포털_댓글기본 Search Result VO")
public class CmntRVO
{
    /**
     * 댓글일련번호
     */
    @Schema(description = "댓글일련번호", type = "BigInteger")
    private BigInteger cmntSn;

    /**
     * 게시물일련번호
     */
    @Schema(description = "게시물일련번호", type = "BigInteger")
    private BigInteger pstSn;

    /**
     * 댓글내용
     */
    @Schema(description = "댓글내용", type = "String")
    private String cmntCn;

    /**
     * 댓글암호화비밀번호
     */
    @Schema(description = "댓글암호화비밀번호", type = "String")
    private String cmntEnpswd;

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

    public BigInteger getCmntSn()
    {
        return cmntSn;
    }
    public void setCmntSn(BigInteger cmntSn)
    {
        this.cmntSn = cmntSn;
    }
    public BigInteger getPstSn()
    {
        return pstSn;
    }
    public void setPstSn(BigInteger pstSn)
    {
        this.pstSn = pstSn;
    }
    public String getCmntCn()
    {
        return cmntCn;
    }
    public void setCmntCn(String cmntCn)
    {
        this.cmntCn = cmntCn;
    }
    public String getCmntEnpswd()
    {
        return cmntEnpswd;
    }
    public void setCmntEnpswd(String cmntEnpswd)
    {
        this.cmntEnpswd = cmntEnpswd;
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
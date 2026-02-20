package kr.or.kids.domain.pp.dgstfn.vo;

import java.math.BigInteger;
import io.swagger.v3.oas.annotations.media.Schema;


@Schema(name = "대국민포털_만족도조사기본", description = "대국민포털_만족도조사기본 Search Result VO")
public class DgstfnExmnRVO
{
    /**
     * 만족도조사일련번호
     */
    @Schema(description = "만족도조사일련번호", type = "BigInteger")
    private BigInteger dgstfnExmnSn;

    /**
     * 메뉴일련번호
     */
    @Schema(description = "메뉴일련번호", type = "Long")
    private Long menuSn;

    /**
     * 만족도점수
     */
    @Schema(description = "만족도점수", type = "Integer")
    private Integer dgstfnScr;

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

    public BigInteger getDgstfnExmnSn()
    {
        return dgstfnExmnSn;
    }
    public void setDgstfnExmnSn(BigInteger dgstfnExmnSn)
    {
        this.dgstfnExmnSn = dgstfnExmnSn;
    }
    public Long getMenuSn()
    {
        return menuSn;
    }
    public void setMenuSn(Long menuSn)
    {
        this.menuSn = menuSn;
    }
    public Integer getDgstfnScr()
    {
        return dgstfnScr;
    }
    public void setDgstfnScr(Integer dgstfnScr)
    {
        this.dgstfnScr = dgstfnScr;
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
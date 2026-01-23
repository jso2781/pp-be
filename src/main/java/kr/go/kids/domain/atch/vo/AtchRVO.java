package kr.go.kids.domain.atch.vo;

import java.math.BigInteger;
import io.swagger.v3.oas.annotations.media.Schema;


@Schema(name = "공통_첨부파일기본", description = "공통_첨부파일기본 Search Result VO")
public class AtchRVO
{
    /**
     * 첨부파일일련번호
     */
    @Schema(description = "첨부파일일련번호", type = "BigInteger")
    private BigInteger atchFileSn;

    /**
     * 메뉴일련번호
     */
    @Schema(description = "메뉴일련번호", type = "BigInteger")
    private BigInteger menuSn;

    /**
     * 메뉴유형
     */
    @Schema(description = "메뉴유형", type = "String")
    private String menuType;

    /**
     * 첨부파일업로드시간
     */
    @Schema(description = "첨부파일업로드시간", type = "String")
    private String atchFileUldHr;

    /**
     * 첨부파일사용여부
     */
    @Schema(description = "첨부파일사용여부", type = "String")
    private String atchFileUseYn;

    /**
     * 첨부파일경로
     */
    @Schema(description = "첨부파일경로", type = "String")
    private String atchFilePath;

    /**
     * 첨부파일명
     */
    @Schema(description = "첨부파일명", type = "String")
    private String atchFileNm;

    /**
     * 첨부파일확장자명
     */
    @Schema(description = "첨부파일확장자명", type = "String")
    private String atchFileExtnNm;

    /**
     * 첨부파일내용
     */
    @Schema(description = "첨부파일내용", type = "String")
    private String atchFileCn;

    /**
     * 첨부파일크기
     */
    @Schema(description = "첨부파일크기", type = "Long")
    private Long atchFileSz;

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

    public BigInteger getAtchFileSn()
    {
        return atchFileSn;
    }
    public void setAtchFileSn(BigInteger atchFileSn)
    {
        this.atchFileSn = atchFileSn;
    }
    public BigInteger getMenuSn()
    {
        return menuSn;
    }
    public void setMenuSn(BigInteger menuSn)
    {
        this.menuSn = menuSn;
    }
    public String getMenuType()
    {
        return menuType;
    }
    public void setMenuType(String menuType)
    {
        this.menuType = menuType;
    }
    public String getAtchFileUldHr()
    {
        return atchFileUldHr;
    }
    public void setAtchFileUldHr(String atchFileUldHr)
    {
        this.atchFileUldHr = atchFileUldHr;
    }
    public String getAtchFileUseYn()
    {
        return atchFileUseYn;
    }
    public void setAtchFileUseYn(String atchFileUseYn)
    {
        this.atchFileUseYn = atchFileUseYn;
    }
    public String getAtchFilePath()
    {
        return atchFilePath;
    }
    public void setAtchFilePath(String atchFilePath)
    {
        this.atchFilePath = atchFilePath;
    }
    public String getAtchFileNm()
    {
        return atchFileNm;
    }
    public void setAtchFileNm(String atchFileNm)
    {
        this.atchFileNm = atchFileNm;
    }
    public String getAtchFileExtnNm()
    {
        return atchFileExtnNm;
    }
    public void setAtchFileExtnNm(String atchFileExtnNm)
    {
        this.atchFileExtnNm = atchFileExtnNm;
    }
    public String getAtchFileCn()
    {
        return atchFileCn;
    }
    public void setAtchFileCn(String atchFileCn)
    {
        this.atchFileCn = atchFileCn;
    }
    public Long getAtchFileSz()
    {
        return atchFileSz;
    }
    public void setAtchFileSz(Long atchFileSz)
    {
        this.atchFileSz = atchFileSz;
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
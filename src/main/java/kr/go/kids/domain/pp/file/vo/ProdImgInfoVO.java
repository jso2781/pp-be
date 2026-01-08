package kr.go.kids.domain.pp.file.vo;

//@ApiModel(value = "상품이미지정보", description = "상품이미지정보 VO")
public class ProdImgInfoVO
{
    /**
     * 특정 상품에 소속된 복수개 이미지 데이터를 삭제 처리할 때 사용.
     */
//	@ApiModelProperty(required = true, value = "특정 상품에 소속된 복수개 이미지 데이터(콤마 구분)", dataType = "String")
    private String PROD_IMG_SEQ_STR;

    /**
     * 상품이미지정보
     */
//	@ApiModelProperty(required = true, value = "상품이미지정보", dataType = "Integer")
    private Integer PROD_IMG_SEQ;

    /**
     * 상품아이디
     */
//	@ApiModelProperty(value = "상품아이디", dataType = "Integer", example = "0")
    private Integer PROD_ID;

    /**
     * 이미지구분(공통코드) : MAIN, SUB
     */
//	@ApiModelProperty(value = "이미지구분(공통코드) : MAIN, SUB", dataType = "String")
    private String IMG_GBN;

    /**
     * 이미지파일명
     */
//	@ApiModelProperty(value = "이미지파일명", dataType = "String")
    private String IMG_FILE_NM;

    /**
     * 이미지경로
     */
//	@ApiModelProperty(value = "이미지경로", dataType = "String")
    private String IMG_PATH;

    /**
     * 이미지확장자타입
     */
//	@ApiModelProperty(value = "이미지확장자타입", dataType = "String")
    private String IMG_TYPE;

    /**
     * 이미지세로길이
     */
//	@ApiModelProperty(value = "이미지세로길이", dataType = "Integer")
    private Integer HEIGHT;

    /**
     * 이미지가로길이
     */
//	@ApiModelProperty(value = "이미지가로길이", dataType = "Integer")
    private Integer WIDTH;

    /**
     * 이미지최대폭(저장시점의 정책별 기준)
     */
//	@ApiModelProperty(value = "이미지최대폭(저장시점의 정책별 기준)", dataType = "Integer")
    private Integer IMG_MAX_SIZE;

    /**
     * 사용여부
     */
//	@ApiModelProperty(value = "사용여부", dataType = "String", example = "'Y'")
    private String USE_YN;

    /**
     * UUID
     */
//	@ApiModelProperty(value = "UUID", dataType = "String")
    private String UUID;

    /**
     * 등록자
     */
//	@ApiModelProperty(value = "등록자", dataType = "String")
    private String REG_ID;

    /**
     * 등록일자
     */
//	@ApiModelProperty(value = "등록일자", dataType = "String", example = "current_timestamp()")
    private String REG_DATE;

    /**
     * 수정자
     */
//	@ApiModelProperty(value = "수정자", dataType = "String", example = "'MACLOUD_UPD'")
    private String UPD_ID;

    /**
     * 수정일자
     */
//	@ApiModelProperty(value = "수정일자", dataType = "String", example = "current_timestamp()")
    private String UPD_DATE;

    /**
     * 이미지 회전 변경 여부
     */
//	@ApiModelProperty(value = "이미지 회전 변경 여부", dataType = "String", example = "Y", hidden = true)
    private String rotateYn = "N";

    public String getUUID() {
        return UUID;
    }
    public void setUUID(String uUID) {
        UUID = uUID;
    }

    private String IMAGE_BASE64_URL;

    public Integer getPROD_IMG_SEQ() {
        return PROD_IMG_SEQ;
    }
    public void setPROD_IMG_SEQ(Integer pROD_IMG_SEQ) {
        PROD_IMG_SEQ = pROD_IMG_SEQ;
    }
    public String getPROD_IMG_SEQ_STR() {
        return PROD_IMG_SEQ_STR;
    }
    public void setPROD_IMG_SEQ_STR(String pROD_IMG_SEQ_STR) {
        PROD_IMG_SEQ_STR = pROD_IMG_SEQ_STR;
    }
    public Integer getPROD_ID() {
        return PROD_ID;
    }
    public void setPROD_ID(Integer pROD_ID) {
        PROD_ID = pROD_ID;
    }
    public String getIMG_GBN() {
        return IMG_GBN;
    }
    public void setIMG_GBN(String iMG_GBN) {
        IMG_GBN = iMG_GBN;
    }
    public String getIMG_FILE_NM() {
        return IMG_FILE_NM;
    }
    public void setIMG_FILE_NM(String iMG_FILE_NM) {
        IMG_FILE_NM = iMG_FILE_NM;
    }
    public String getIMG_PATH()
    {
        return IMG_PATH;
    }
    public void setIMG_PATH(String iMG_PATH)
    {
        IMG_PATH = iMG_PATH;
    }
    public String getIMG_TYPE() {
        return IMG_TYPE;
    }
    public void setIMG_TYPE(String iMG_TYPE) {
        IMG_TYPE = iMG_TYPE;
    }
    public Integer getHEIGHT() {
        return HEIGHT;
    }
    public void setHEIGHT(Integer hEIGHT) {
        HEIGHT = hEIGHT;
    }
    public Integer getWIDTH() {
        return WIDTH;
    }
    public void setWIDTH(Integer wIDTH) {
        WIDTH = wIDTH;
    }
    public Integer getIMG_MAX_SIZE() {
        return IMG_MAX_SIZE;
    }
    public void setIMG_MAX_SIZE(Integer iMG_MAX_SIZE) {
        IMG_MAX_SIZE = iMG_MAX_SIZE;
    }
    public String getUSE_YN() {
        return USE_YN;
    }
    public void setUSE_YN(String uSE_YN) {
        USE_YN = uSE_YN;
    }
    public String getREG_ID() {
        return REG_ID;
    }
    public void setREG_ID(String rEG_ID) {
        REG_ID = rEG_ID;
    }
    public String getREG_DATE() {
        return REG_DATE;
    }
    public void setREG_DATE(String rEG_DATE) {
        REG_DATE = rEG_DATE;
    }
    public String getUPD_ID() {
        return UPD_ID;
    }
    public void setUPD_ID(String uPD_ID) {
        UPD_ID = uPD_ID;
    }
    public String getUPD_DATE() {
        return UPD_DATE;
    }
    public void setUPD_DATE(String uPD_DATE) {
        UPD_DATE = uPD_DATE;
    }
    public String getIMAGE_BASE64_URL() {
        return IMAGE_BASE64_URL;
    }
    public void setIMAGE_BASE64_URL(String iMAGE_BASE64_URL) {
        IMAGE_BASE64_URL = iMAGE_BASE64_URL;
    }
    public String getRotateYn() {
        return rotateYn;
    }
    public void setRotateYn(String rotateYn) {
        this.rotateYn = rotateYn;
    }
}
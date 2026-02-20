package kr.or.kids.domain.pp.exprt.vo;

import java.util.List;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "대국민포털_전문가회원전환신청관리", description = "대국민포털_전문가회원전환신청관리 Insert Parameter VO")
public class ExprtApplyIVO
{
    /**
     * 회원번호
     */
    @Schema(description = "회원번호", type = "String")
    private String mbrNo;    
    
    /**
     * 회원아이디
     */
    @Schema(description = "회원아이디", type = "String")
    private String mbrId;        
    
    /**
     * 사업자등록번호
     */
    @Schema(description = "사업자등록번호", type = "String")
    private String brno;

    /**
     * 사업자업무관리번호
     */
    @Schema(description = "사업자업무관리번호", type = "String")
    private String bzmnTaskMngNo;

    /**
     * 성명
     */
    @Schema(description = "성명", type = "String")
    private String name;

    /**
     * 이메일
     */
    @Schema(description = "이메일", type = "String")
    private String email;    

    /**
     * 전문가재직여부
     */
    @Schema(description = "전문가재직여부", type = "String")
    private String exprtHdofYn;    
    
    /**
     * 첨부파일그룹아이디
     */
    @Schema(description = "첨부파일그룹아이디", type = "String")
    private String atchFileGroupId;
    
    /**
     * 업무시스템 코드목록
     */
    @Schema(description = "업무시스템 코드목록", type = "List<String>")
    private List<String> taskSystemCodes;

    /**
     * 전문가번호
     */
    @Schema(description = "전문가번호", type = "String")
    private String exprtNo;
}
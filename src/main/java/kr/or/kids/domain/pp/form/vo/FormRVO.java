package kr.or.kids.domain.pp.form.vo;

import java.math.BigInteger;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "대국민포털_양식기본", description = "대국민포털_양식기본 Search Result VO")
public class FormRVO
{
    /**
     * 양식일련번호
     */
    @Schema(description = "양식일련번호", type = "BigInteger")
    private BigInteger formSn;

    /**
     * 업무코드
     */
    @Schema(description = "업무코드", type = "String")
    private String taskCd;

    /**
     * 양식명
     */
    @Schema(description = "양식명", type = "String")
    private String formNm;

    /**
     * 양식내용
     */
    @Schema(description = "양식내용", type = "String")
    private String formCn;

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
}
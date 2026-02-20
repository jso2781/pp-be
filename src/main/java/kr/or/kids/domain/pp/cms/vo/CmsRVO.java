package kr.or.kids.domain.pp.cms.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Schema(name = "대국민포털_콘탠츠기본 조회 결과", description = "대국민포털_콘탠츠기본 조회 결과 VO")
@Getter
@Setter
public class CmsRVO {

    /**
     * 콘텐츠일련번호
     */
    @Schema(description = "콘텐츠일련번호", type = "String")
    private String contsSn;

    /**
     * 콘텐츠버전번호
     */
    @Schema(description = "콘텐츠버전번호", type = "Long")
    private Long contsVerNo;

    /**
     * 콘텐츠제목
     */
    @Schema(description = "콘텐츠제목", type = "String")
    private String contsTtl;

    /**
     * 콘텐츠내용
     */
    @Schema(description = "콘텐츠내용", type = "String")
    private String contsCn;

    /**
     * 콘텐츠사용여부
     */
    @Schema(description = "콘텐츠사용여부", type = "String")
    private String contsUseYn;

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

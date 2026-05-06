package kr.or.kids.domain.pp.anyid.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "Any-ID 초기화 정보 조회 결과", description = "Any-ID 초기화 정보 조회 결과 VO")
public class AnyIdInitRVO {

    /**
     * Any-ID 설정파일 경로 (기본값: /config/config.anyidc.json)
     */
    @Schema(description = "Any-ID 설정파일 경로", type = "String")
    private String cfg;

    /**
     * Any-ID 트랜잭션 ID (tx)
     */
    @Schema(description = "Any-ID 트랜잭션 ID", type = "String")
    private String txId;

    /**
     * Any-ID 태그
     */
    @Schema(description = "Any-ID 태그", type = "String")
    private String tag;

    /**
     * Any-ID 레벨 (기본값: 3)
     */
    @Schema(description = "Any-ID 레벨", type = "Integer")
    private Integer lvl;

    /**
     * Any-ID 바이패스 (기본값: 0 패스, 1 비패스)
     */
    @Schema(description = "Any-ID 바이패스 (0: 패스, 1: 비패스)", type = "Integer")
    private Integer bypass;

    /**
     * Any-ID 테마 (기본값: 4.2.2)
     */
    @Schema(description = "Any-ID 테마", type = "String")
    private String theme;

    /**
     * Any-ID 토글 (기본값: true)
     */
    @Schema(description = "Any-ID 토글", type = "Boolean")
    private Boolean toggle;
}

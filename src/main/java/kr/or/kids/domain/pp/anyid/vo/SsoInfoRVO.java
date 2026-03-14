package kr.or.kids.domain.pp.anyid.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "SSO 기본 정보 조회 결과", description = "SSO 기본 정보 조회 결과 VO")
public class SsoInfoRVO {
    /**
     * mt
     */
    @Schema(description = "mt", type = "String")
    private String mt;

    /**
     * 포털 사용자 홈 URL
     */
    @Schema(description = "portalJoinUri", type = "String")
    private String portalJoinUri;

    /**
     * Any-ID SSO 바이패스(기본값 0: 패스, 1: 비패스)
     */
    @Schema(description = "Any-ID SSO 바이패스(기본값 0: 패스, 1: 비패스)", type = "Integer")
    private Integer ssoByPass;

    /**
     * Any-ID 기관 컨텍스트 경로 (기본값: "")
     */
    @Schema(description = "Any-ID 기관 컨텍스트 경로 (기본값: '')", type = "String")
    private String agencyContextPath;
}

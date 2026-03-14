package kr.or.kids.domain.pp.anyid.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "SSO 기본 정보 조회 파라메터", description = "SSO 기본 정보 조회 파라메터 VO")
public class SsoInfoPVO {
    /**
     * mt
     */
    @Schema(description = "mt", type = "String")
    private String mt;

    /**
     * 포털 사용자 홈 URL
     */
    @Schema(description = "포털 사용자 홈 URL", type = "String")
    private String portalJoinUri;
}

package kr.or.kids.domain.pp.anyid.vo;
import java.util.Map;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "Any-ID 사용자 정보 조회 결과", description = "Any-ID 사용자 정보 조회 결과 VO")
public class AnyIdUserinfoRVO {

    /**
     * SSO 사용자 정보
     */
    @Schema(description = "SSO 사용자 정보", type = "Object")
    private Map<String, Object> sso;

    /**
     * Any-ID 세션 정보
     */
    @Schema(description = "Any-ID 세션 정보", type = "Object")
    private Map<String, Object> anyid;

    /**
     * SSO 사용자 정보와 Any-ID 세션 정보를 모두 가지고 있는 데이터맵
     */
    private Map<String, Object> anyIdUserinfo;
}

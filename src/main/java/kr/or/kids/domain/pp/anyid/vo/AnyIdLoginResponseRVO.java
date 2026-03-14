package kr.or.kids.domain.pp.anyid.vo;

import java.util.Map;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "SDK decrypt 결과에서 ssobStr(복호화된 JSON)을 파싱한 값 요약", description = "SDK decrypt 결과에서 ssobStr(복호화된 JSON)을 파싱한 값 요약 VO")
public class AnyIdLoginResponseRVO{
    /**
     * ssobStr 복호화 상태(success/fail)
     */
    @Schema(description = "ssobStr 복호화 상태(success/fail)", type = "String")
    private String status;

    /**
     * ssobStr 복호화된 정보중 ci 정보
     */
    @Schema(description = "ssobStr 복호화된 정보", type = "String")
    private String ci;

    /**
     * ssobStr 복호화된 정보 중 이름
     */
    @Schema(description = "ssobStr 복호화된 정보중 이름", type = "String")
    private String name;

    /**
     * 인증레벨(1,2,3,4,5,..)
     */
    @Schema(description = "인증레벨(1,2,3,4,5,..)", type = "Integer")
    private Integer authLvl;

    /**
     * 그룹(02,03,04,..)
     */
    @Schema(description = "그룹(02,03,04,..)", type = "String")
    private String group;

    /**
     * 인증 확인 시간
     */
    @Schema(description = "인증 확인 시간", type = "String")
    private String timestamp;

    /**
     * 클라이언트 IP
     */
    @Schema(description = "클라이언트 IP", type = "String")
    private String clientIp;

    /**
     * ssobStr 복호화된 전체 정보
     */
    @Schema(description = "ssobStr 복호화된 전체 정보", type = "String")
    private Map<String, Object> sso;
}

package kr.or.kids.domain.pp.external.email.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;
import lombok.Data;

@Schema(name = "메일 발송 파라메터", description = "메일 발송 파라메터 VO")
@Data
public class EmailPVO {
    /**
     * 메일제목
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "메일제목", type = "String")
    private String emlTtl;

    /**
     * 메인본문
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "메인본문", type = "String")
    private String emlCn;

    /**
     * 송신자(보낸이 이름)
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "송신자(보낸이 이름)", type = "String")
    private String sndptyFlnm;

    /**
     * 송신 이메일 주소
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "송신 이메일 주소", type = "String")
    private String sndptyEmlAddr;

    /**
     * 수신자(받는이 이름)
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "수신자(받는이 이름)", type = "String")
    private String rcvrFlnm;

    /**
     * 수신 이메일 주소
     */
    @Schema(requiredMode = RequiredMode.REQUIRED, description = "수신 이메일 주소", type = "String")
    private String rcvrEmlAddr;
}

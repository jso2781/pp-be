package kr.or.kids.domain.pp.external.email.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Schema(name = "메일 발송 결과", description = "메일 발송 결과 VO")
@Data
public class EmailRVO {
    /**
     * 메일전송상태
     * 1 - 성공, 0 - 실패
     */
    @Schema(description = "메일전송상태", type = "String")
    private String resultCode;

    /**
     * 메시지 ID
     */
    @Schema(description = "메시지 ID", type = "String")
    private String messageId;

    /**
     * 에러 메시지
     */
    @Schema(description = "에러 메시지", type = "String")
    private String errorMessage;
}

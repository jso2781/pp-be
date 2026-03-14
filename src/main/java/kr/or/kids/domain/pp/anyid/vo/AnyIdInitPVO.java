package kr.or.kids.domain.pp.anyid.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "Any-ID 초기화 정보 조회 파라미터", description = "Any-ID 초기화 정보 조회 파라미터 VO")
public class AnyIdInitPVO {

    /**
     * 트랜잭션 (tx)
     */
    @Schema(description = "트랜잭션", type = "String")
    private String tx;
}

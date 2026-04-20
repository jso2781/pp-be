package kr.or.kids.domain.pp.niceid.vo;


import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "대국민포털_회원정보기본", description = "대국민포털_회원정보기본 Delete Parameter VO")
public class NiceidRVO {

    private String requestId;
    private String transctionId;

}

package kr.or.kids.domain.pp.mbr.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "대국민포털_회원정보기본(법정 대리인 정보 포함)", description = "대국민포털_회원정보기본(법정 대리인 정보 포함) Parameter VO")
public class MbrInfoWithSttyAgtInfoPVO
{
    /**
     * 대국민포털_회원정보기본
     */
    @Schema(description = "대국민포털_회원정보기본 입력 VO", type = "Object")
    private MbrInfoPVO mbrInfo;

    /**
     * 대국민포털_법정대리인정보기본
     */
    @Schema(description = "대국민포털_법정대리인정보기본 입력 VO", type = "Object")
    private SttyAgtInfoPVO sttyAgtInfo;
}
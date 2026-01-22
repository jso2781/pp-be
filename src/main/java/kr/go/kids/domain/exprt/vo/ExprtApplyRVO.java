package kr.go.kids.domain.exprt.vo;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "대국민포털_전문가회원전환신청관리", description = "대국민포털_전문가회원전환신청관리 기관업무시스템 Response VO")
public class ExprtApplyRVO
{
    /**
     * 공통코드 라벨
     */
    private String label;
    
    /**
     * 공통코드 값
     */
    private String value;    
}
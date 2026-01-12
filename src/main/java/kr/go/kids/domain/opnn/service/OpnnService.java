package kr.go.kids.domain.opnn.service;

import kr.go.kids.domain.opnn.vo.OpnnPVO;
import kr.go.kids.global.system.common.vo.ApiPrnDto;

public interface OpnnService
{
    /**
     * 대국민포털_의견제안 정보 입력 
     *
     * @param opnnPVO 입력할 대국민포털_의견제안 정보 
     * @return 입력된 건수 
     */
    public ApiPrnDto insertOpnn(OpnnPVO opnnPVO);
}

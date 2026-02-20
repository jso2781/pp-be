package kr.or.kids.domain.pp.opnn.service;

import kr.or.kids.domain.pp.opnn.vo.OpnnPVO;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

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

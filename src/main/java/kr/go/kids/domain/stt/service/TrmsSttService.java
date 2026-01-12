package kr.go.kids.domain.stt.service;

import kr.go.kids.domain.stt.vo.TrmsSttPVO;
import kr.go.kids.domain.stt.vo.TrmsSttRVO;

public interface TrmsSttService
{
    /**
     * 대국민포털_약관법령기본 정보 조회 
     *
     * @param trmsSttPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_약관법령기본 
     */
    public TrmsSttRVO getTrmsStt(TrmsSttPVO trmsSttPVO);

}

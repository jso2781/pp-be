package kr.go.kids.domain.stt.service;

import kr.go.kids.domain.stt.vo.TrmsSttPVO;
import kr.go.kids.global.system.common.vo.ApiPrnDto;

public interface TrmsSttService
{
    /**
     * 대국민포털_약관법령기본 목록 조회
     *
     * @param trmsSttPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_약관법령기본
     */
    public ApiPrnDto selectTrmsSttList(TrmsSttPVO trmsSttPVO);
    /**
     * 대국민포털_약관법령기본 최신글 단건 조회 
     *
     * @param trmsSttPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_약관법령기본 
     */
    public ApiPrnDto getTrmsSttLatest(TrmsSttPVO trmsSttPVO);
}

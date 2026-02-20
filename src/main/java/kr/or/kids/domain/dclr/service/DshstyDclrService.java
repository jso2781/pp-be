package kr.or.kids.domain.dclr.service;

import kr.or.kids.domain.dclr.vo.DshstyDclrPVO;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

public interface DshstyDclrService
{
    /**
     * 대국민포털_부정신고 기본 목록 조회
     *
     * @param dshstyDclrPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_부정신고기본 
     */
    public ApiPrnDto selectDshstyDclrList(DshstyDclrPVO dshstyDclrPVO);

    /**
     * 대국민포털_부정신고 기본 정보 입력 
     *
     * @param dshstyDclrPVO 입력할 대국민포털_부정신고 정보 
     * @return 입력된 건수 
     */
    public ApiPrnDto insertDshstyDclr(DshstyDclrPVO dshstyDclrPVO);
}
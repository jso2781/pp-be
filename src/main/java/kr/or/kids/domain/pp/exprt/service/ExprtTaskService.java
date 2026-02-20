package kr.or.kids.domain.pp.exprt.service;

import kr.or.kids.domain.pp.exprt.vo.ExprtTaskPVO;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

public interface ExprtTaskService
{
    /**
     * 대국민포털_전문가내업무관리 전문가 회원 신청 정보 조회
     *
     * @param exprtTaskPVO 파라메터 정보
     * @return 전문가 회원 신청 정보
     */
    ApiPrnDto selectExprtInfo(ExprtTaskPVO exprtTaskPVO);

    /**
     * 대국민포털_전문가내업무관리 전문가 회원 전환 신청 취소
     *
     * @param exprtTaskPVO 파라메터 정보
     * @return 성공여부
     */
    ApiPrnDto withdrawExprt(ExprtTaskPVO exprtTaskPVO);

    /**
     * 대국민포털_전문가내업무관리 전문가 회원 업무 신청 취소
     *
     * @param exprtTaskPVO 파라메터 정보
     * @return 성공여부
     */
    ApiPrnDto withdrawExprtTask(ExprtTaskPVO exprtTaskPVO);

    /**
     * 대국민포털_전문가내업무관리 전문가 회원 업무 신청
     *
     * @param exprtTaskPVO 파라메터 정보
     * @return 성공여부
     */
    ApiPrnDto applyExprtTask(ExprtTaskPVO exprtTaskPVO);

    /**
     * 대국민포털_전문가내업무관리 업무시스템에 해당하는 메뉴 목록 조회
     *
     * @param exprtTaskPVO 파라메터 정보
     * @return 메뉴 목록
     */
    ApiPrnDto selectExprtMenus(ExprtTaskPVO exprtTaskPVO);
}

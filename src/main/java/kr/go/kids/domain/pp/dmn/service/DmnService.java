package kr.go.kids.domain.pp.dmn.service;

import kr.go.kids.domain.pp.dmn.vo.DmnDVO;
import kr.go.kids.domain.pp.dmn.vo.DmnPVO;
import kr.go.kids.domain.pp.dmn.vo.DmnRVO;

public interface DmnService
{
    /**
     * 대국민포털_도메인기본 정보 조회 
     *
     * @param dmnPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_도메인기본 
     */
    public DmnRVO getDmn(DmnPVO dmnPVO);

    /**
     * 대국민포털_도메인기본 정보 입력 
     *
     * @param dmnPVO 입력할 대국민포털_도메인기본 정보 
     * @return 입력된 건수 
     */
    public int insertDmn(DmnPVO dmnPVO);

    /**
     * 대국민포털_도메인기본 정보 수정 
     *
     * @param dmnPVO 수정할 대국민포털_도메인기본 정보 
     * @return 수정된 건수 
     */
    public int updateDmn(DmnPVO dmnPVO);

    /**
     * 대국민포털_도메인기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param dmnPVO 저장할 대국민포털_도메인기본 정보 
     * @return 저장된 건수 
     */
    public int saveDmn(DmnPVO dmnPVO);

    /**
     * 대국민포털_도메인기본 정보 삭제 
     *
     * @param dmnDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteDmn(DmnDVO dmnDVO);
}

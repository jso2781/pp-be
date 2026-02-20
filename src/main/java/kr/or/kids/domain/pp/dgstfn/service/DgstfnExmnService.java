package kr.or.kids.domain.pp.dgstfn.service;

import kr.or.kids.domain.pp.dgstfn.vo.DgstfnExmnDVO;
import kr.or.kids.domain.pp.dgstfn.vo.DgstfnExmnPVO;
import kr.or.kids.domain.pp.dgstfn.vo.DgstfnExmnRVO;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

public interface DgstfnExmnService
{
    /**
     * 대국민포털_만족도조사기본 정보 조회 
     *
     * @param dgstfnExmnPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_만족도조사기본 
     */
    public DgstfnExmnRVO getDgstfnExmn(DgstfnExmnPVO dgstfnExmnPVO);

    /**
     * 대국민포털_만족도조사기본 정보 입력 
     *
     * @param dgstfnExmnPVO 입력할 대국민포털_만족도조사기본 정보 
     * @return 입력 처리후 결과 반환(ApiPrnDto)
     */
    public ApiPrnDto insertDgstfnExmn(DgstfnExmnPVO dgstfnExmnPVO);

    /**
     * 대국민포털_만족도조사기본 정보 수정 
     *
     * @param dgstfnExmnPVO 수정할 대국민포털_만족도조사기본 정보 
     * @return 수정된 건수 
     */
    public int updateDgstfnExmn(DgstfnExmnPVO dgstfnExmnPVO);

    /**
     * 대국민포털_만족도조사기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param dgstfnExmnPVO 저장할 대국민포털_만족도조사기본 정보 
     * @return 저장된 건수 
     */
    public int saveDgstfnExmn(DgstfnExmnPVO dgstfnExmnPVO);

    /**
     * 대국민포털_만족도조사기본 정보 삭제 
     *
     * @param dgstfnExmnDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteDgstfnExmn(DgstfnExmnDVO dgstfnExmnDVO);
}

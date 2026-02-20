package kr.or.kids.domain.pp.trm.service;

import kr.or.kids.domain.pp.trm.vo.TrmDVO;
import kr.or.kids.domain.pp.trm.vo.TrmPVO;
import kr.or.kids.domain.pp.trm.vo.TrmRVO;

public interface TrmService
{
    /**
     * 대국민포털_용어기본 정보 조회 
     *
     * @param trmPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_용어기본 
     */
    public TrmRVO getTrm(TrmPVO trmPVO);

    /**
     * 대국민포털_용어기본 정보 입력 
     *
     * @param trmPVO 입력할 대국민포털_용어기본 정보 
     * @return 입력된 건수 
     */
    public int insertTrm(TrmPVO trmPVO);

    /**
     * 대국민포털_용어기본 정보 수정 
     *
     * @param trmPVO 수정할 대국민포털_용어기본 정보 
     * @return 수정된 건수 
     */
    public int updateTrm(TrmPVO trmPVO);

    /**
     * 대국민포털_용어기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param trmPVO 저장할 대국민포털_용어기본 정보 
     * @return 저장된 건수 
     */
    public int saveTrm(TrmPVO trmPVO);

    /**
     * 대국민포털_용어기본 정보 삭제 
     *
     * @param trmDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteTrm(TrmDVO trmDVO);
}

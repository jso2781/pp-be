package kr.go.kids.domain.emp.service;

import kr.go.kids.domain.emp.vo.EmpDVO;
import kr.go.kids.domain.emp.vo.EmpPVO;
import kr.go.kids.domain.emp.vo.EmpRVO;

public interface EmpService
{
    /**
     * 대국민포털_관리자정보기본 정보 조회 
     *
     * @param empPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_관리자정보기본 
     */
    public EmpRVO getEmp(EmpPVO empPVO);

    /**
     * 대국민포털_관리자정보기본 정보 입력 
     *
     * @param empPVO 입력할 대국민포털_관리자정보기본 정보 
     * @return 입력된 건수 
     */
    public int insertEmp(EmpPVO empPVO);

    /**
     * 대국민포털_관리자정보기본 정보 수정 
     *
     * @param empPVO 수정할 대국민포털_관리자정보기본 정보 
     * @return 수정된 건수 
     */
    public int updateEmp(EmpPVO empPVO);

    /**
     * 대국민포털_관리자정보기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param empPVO 저장할 대국민포털_관리자정보기본 정보 
     * @return 저장된 건수 
     */
    public int saveEmp(EmpPVO empPVO);

    /**
     * 대국민포털_관리자정보기본 정보 삭제 
     *
     * @param empDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteEmp(EmpDVO empDVO);
}

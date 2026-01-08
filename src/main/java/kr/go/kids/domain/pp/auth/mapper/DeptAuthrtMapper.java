package kr.go.kids.domain.pp.auth.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.pp.auth.vo.DeptAuthrtDVO;
import kr.go.kids.domain.pp.auth.vo.DeptAuthrtPVO;
import kr.go.kids.domain.pp.auth.vo.DeptAuthrtRVO;

@Mapper
public interface DeptAuthrtMapper
{
    /**
     * 대국민포털_부서권한기본 정보 조회 
     *
     * @param deptAuthrtPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_부서권한기본 
     */
    public DeptAuthrtRVO getDeptAuthrt(DeptAuthrtPVO deptAuthrtPVO);

    /**
     * 대국민포털_부서권한기본 정보 입력 
     *
     * @param deptAuthrtPVO 입력할 대국민포털_부서권한기본 정보 
     * @return 입력된 건수 
     */
    public int insertDeptAuthrt(DeptAuthrtPVO deptAuthrtPVO);

    /**
     * 대국민포털_부서권한기본 정보 수정 
     *
     * @param deptAuthrtPVO 수정할 대국민포털_부서권한기본 정보 
     * @return 수정된 건수 
     */
    public int updateDeptAuthrt(DeptAuthrtPVO deptAuthrtPVO);

    /**
     * 대국민포털_부서권한기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param deptAuthrtPVO 저장할 대국민포털_부서권한기본 정보 
     * @return 저장된 건수 
     */
    public int saveDeptAuthrt(DeptAuthrtPVO deptAuthrtPVO);

    /**
     * 대국민포털_부서권한기본 정보 삭제 
     *
     * @param deptAuthrtDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteDeptAuthrt(DeptAuthrtDVO deptAuthrtDVO);
}

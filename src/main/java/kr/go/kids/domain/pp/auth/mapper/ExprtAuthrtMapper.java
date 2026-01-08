package kr.go.kids.domain.pp.auth.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.pp.auth.vo.ExprtAuthrtDVO;
import kr.go.kids.domain.pp.auth.vo.ExprtAuthrtPVO;
import kr.go.kids.domain.pp.auth.vo.ExprtAuthrtRVO;

@Mapper
public interface ExprtAuthrtMapper
{
    /**
     * 대국민포털_전문가권한기본 정보 조회 
     *
     * @param exprtAuthrtPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_전문가권한기본 
     */
    public ExprtAuthrtRVO getExprtAuthrt(ExprtAuthrtPVO exprtAuthrtPVO);

    /**
     * 대국민포털_전문가권한기본 정보 입력 
     *
     * @param exprtAuthrtPVO 입력할 대국민포털_전문가권한기본 정보 
     * @return 입력된 건수 
     */
    public int insertExprtAuthrt(ExprtAuthrtPVO exprtAuthrtPVO);

    /**
     * 대국민포털_전문가권한기본 정보 수정 
     *
     * @param exprtAuthrtPVO 수정할 대국민포털_전문가권한기본 정보 
     * @return 수정된 건수 
     */
    public int updateExprtAuthrt(ExprtAuthrtPVO exprtAuthrtPVO);

    /**
     * 대국민포털_전문가권한기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param exprtAuthrtPVO 저장할 대국민포털_전문가권한기본 정보 
     * @return 저장된 건수 
     */
    public int saveExprtAuthrt(ExprtAuthrtPVO exprtAuthrtPVO);

    /**
     * 대국민포털_전문가권한기본 정보 삭제 
     *
     * @param exprtAuthrtDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteExprtAuthrt(ExprtAuthrtDVO exprtAuthrtDVO);
}

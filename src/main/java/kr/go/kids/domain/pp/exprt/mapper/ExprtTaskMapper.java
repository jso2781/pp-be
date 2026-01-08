package kr.go.kids.domain.pp.exprt.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.pp.exprt.vo.ExprtTaskDVO;
import kr.go.kids.domain.pp.exprt.vo.ExprtTaskPVO;
import kr.go.kids.domain.pp.exprt.vo.ExprtTaskRVO;

@Mapper
public interface ExprtTaskMapper
{
    /**
     * 대국민포털_전문가업무기본 정보 조회 
     *
     * @param exprtTaskPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_전문가업무기본 
     */
    public ExprtTaskRVO getExprtTask(ExprtTaskPVO exprtTaskPVO);

    /**
     * 대국민포털_전문가업무기본 정보 입력 
     *
     * @param exprtTaskPVO 입력할 대국민포털_전문가업무기본 정보 
     * @return 입력된 건수 
     */
    public int insertExprtTask(ExprtTaskPVO exprtTaskPVO);

    /**
     * 대국민포털_전문가업무기본 정보 수정 
     *
     * @param exprtTaskPVO 수정할 대국민포털_전문가업무기본 정보 
     * @return 수정된 건수 
     */
    public int updateExprtTask(ExprtTaskPVO exprtTaskPVO);

    /**
     * 대국민포털_전문가업무기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param exprtTaskPVO 저장할 대국민포털_전문가업무기본 정보 
     * @return 저장된 건수 
     */
    public int saveExprtTask(ExprtTaskPVO exprtTaskPVO);

    /**
     * 대국민포털_전문가업무기본 정보 삭제 
     *
     * @param exprtTaskDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteExprtTask(ExprtTaskDVO exprtTaskDVO);
}

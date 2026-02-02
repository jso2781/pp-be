package kr.go.kids.domain.exprt.mapper;

import kr.go.kids.domain.exprt.vo.ExprtTaskPVO;
import kr.go.kids.domain.exprt.vo.ExprtTaskRVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ExprtTaskMapper
{
    /**
     * 대국민포털_전문가내업무관리 전문가회원 정보 조회
     *
     * @param exprtTaskPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_전문가내업무관리 전문가회원 정보
     */
    ExprtTaskRVO selectExprtInfo(ExprtTaskPVO exprtTaskPVO);

    /**
     * 대국민포털_전문가내업무관리 전문가회원 정보 조회
     *
     * @param exprtTaskPVO 조회용 파라메터 정보
     * @return 조회된 대국민포털_전문가내업무관리 전문가회원 업무 목록 정보
     */
    List<ExprtTaskRVO> selectExprtTasks(ExprtTaskPVO exprtTaskPVO);

    /**
     * 대국민포털_전문가내업무관리 전문가회원 업무 전체 삭제
     *
     * @param exprtTaskPVO 삭제 파라메터 정보
     * @return 삭제건수
     */
    int deleteAllExprtTask(ExprtTaskPVO exprtTaskPVO);

    /**
     * 대국민포털_전문가내업무관리 전문가회원 업무 삭제
     *
     * @param exprtTaskPVO 삭제 파라메터 정보
     * @return 삭제건수
     */
    int deleteExprtTask(ExprtTaskPVO exprtTaskPVO);

    /**
     * 대국민포털_전문가내업무관리 전문가회원 정보 삭제
     *
     * @param exprtTaskPVO 삭제 파라메터 정보
     * @return 삭제건수
     */
    int deleteExprtInfo(ExprtTaskPVO exprtTaskPVO);

    /**
     * 대국민포털_전문가내업무관리 전문가회원 업무 입력
     *
     * @param exprtTaskPVO 등록 파라메터 정보
     * @return 등록건수
     */
    int insertExprtTask(ExprtTaskPVO exprtTaskPVO);
}

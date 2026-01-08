package kr.go.kids.domain.pp.task.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.pp.task.vo.TaskCdDVO;
import kr.go.kids.domain.pp.task.vo.TaskCdPVO;
import kr.go.kids.domain.pp.task.vo.TaskCdRVO;

@Mapper
public interface TaskCdMapper
{
    /**
     * 대국민포털_업무코드기본 정보 조회 
     *
     * @param taskCdPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_업무코드기본 
     */
    public TaskCdRVO getTaskCd(TaskCdPVO taskCdPVO);

    /**
     * 대국민포털_업무코드기본 정보 입력 
     *
     * @param taskCdPVO 입력할 대국민포털_업무코드기본 정보 
     * @return 입력된 건수 
     */
    public int insertTaskCd(TaskCdPVO taskCdPVO);

    /**
     * 대국민포털_업무코드기본 정보 수정 
     *
     * @param taskCdPVO 수정할 대국민포털_업무코드기본 정보 
     * @return 수정된 건수 
     */
    public int updateTaskCd(TaskCdPVO taskCdPVO);

    /**
     * 대국민포털_업무코드기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param taskCdPVO 저장할 대국민포털_업무코드기본 정보 
     * @return 저장된 건수 
     */
    public int saveTaskCd(TaskCdPVO taskCdPVO);

    /**
     * 대국민포털_업무코드기본 정보 삭제 
     *
     * @param taskCdDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteTaskCd(TaskCdDVO taskCdDVO);
}

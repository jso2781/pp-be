package kr.go.kids.domain.inst.service;

import kr.go.kids.domain.inst.vo.InstTaskDVO;
import kr.go.kids.domain.inst.vo.InstTaskPVO;
import kr.go.kids.domain.inst.vo.InstTaskRVO;

public interface InstTaskService
{
    /**
     * 대국민포털_기관업무기본 정보 조회 
     *
     * @param instTaskPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_기관업무기본 
     */
    public InstTaskRVO getInstTask(InstTaskPVO instTaskPVO);

    /**
     * 대국민포털_기관업무기본 정보 입력 
     *
     * @param instTaskPVO 입력할 대국민포털_기관업무기본 정보 
     * @return 입력된 건수 
     */
    public int insertInstTask(InstTaskPVO instTaskPVO);

    /**
     * 대국민포털_기관업무기본 정보 수정 
     *
     * @param instTaskPVO 수정할 대국민포털_기관업무기본 정보 
     * @return 수정된 건수 
     */
    public int updateInstTask(InstTaskPVO instTaskPVO);

    /**
     * 대국민포털_기관업무기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param instTaskPVO 저장할 대국민포털_기관업무기본 정보 
     * @return 저장된 건수 
     */
    public int saveInstTask(InstTaskPVO instTaskPVO);

    /**
     * 대국민포털_기관업무기본 정보 삭제 
     *
     * @param instTaskDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteInstTask(InstTaskDVO instTaskDVO);
}

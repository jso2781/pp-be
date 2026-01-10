package kr.go.kids.domain.dur.service;

import kr.go.kids.domain.dur.vo.DurNurswDVO;
import kr.go.kids.domain.dur.vo.DurNurswPVO;
import kr.go.kids.domain.dur.vo.DurNurswRVO;

public interface DurNurswService
{
    /**
     * 대국민포털_DUR수유부주의기본 정보 조회 
     *
     * @param durNurswPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_DUR수유부주의기본 
     */
    public DurNurswRVO getDurNursw(DurNurswPVO durNurswPVO);

    /**
     * 대국민포털_DUR수유부주의기본 정보 입력 
     *
     * @param durNurswPVO 입력할 대국민포털_DUR수유부주의기본 정보 
     * @return 입력된 건수 
     */
    public int insertDurNursw(DurNurswPVO durNurswPVO);

    /**
     * 대국민포털_DUR수유부주의기본 정보 수정 
     *
     * @param durNurswPVO 수정할 대국민포털_DUR수유부주의기본 정보 
     * @return 수정된 건수 
     */
    public int updateDurNursw(DurNurswPVO durNurswPVO);

    /**
     * 대국민포털_DUR수유부주의기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param durNurswPVO 저장할 대국민포털_DUR수유부주의기본 정보 
     * @return 저장된 건수 
     */
    public int saveDurNursw(DurNurswPVO durNurswPVO);

    /**
     * 대국민포털_DUR수유부주의기본 정보 삭제 
     *
     * @param durNurswDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteDurNursw(DurNurswDVO durNurswDVO);
}

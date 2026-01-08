package kr.go.kids.domain.pp.dur.service;

import kr.go.kids.domain.pp.dur.vo.DurCpctDVO;
import kr.go.kids.domain.pp.dur.vo.DurCpctPVO;
import kr.go.kids.domain.pp.dur.vo.DurCpctRVO;

public interface DurCpctService
{
    /**
     * 대국민포털_DUR용량주의기본 정보 조회 
     *
     * @param durCpctPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_DUR용량주의기본 
     */
    public DurCpctRVO getDurCpct(DurCpctPVO durCpctPVO);

    /**
     * 대국민포털_DUR용량주의기본 정보 입력 
     *
     * @param durCpctPVO 입력할 대국민포털_DUR용량주의기본 정보 
     * @return 입력된 건수 
     */
    public int insertDurCpct(DurCpctPVO durCpctPVO);

    /**
     * 대국민포털_DUR용량주의기본 정보 수정 
     *
     * @param durCpctPVO 수정할 대국민포털_DUR용량주의기본 정보 
     * @return 수정된 건수 
     */
    public int updateDurCpct(DurCpctPVO durCpctPVO);

    /**
     * 대국민포털_DUR용량주의기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param durCpctPVO 저장할 대국민포털_DUR용량주의기본 정보 
     * @return 저장된 건수 
     */
    public int saveDurCpct(DurCpctPVO durCpctPVO);

    /**
     * 대국민포털_DUR용량주의기본 정보 삭제 
     *
     * @param durCpctDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteDurCpct(DurCpctDVO durCpctDVO);
}

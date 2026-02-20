package kr.or.kids.domain.pp.dur.service;

import kr.or.kids.domain.pp.dur.vo.DurAgeBannDVO;
import kr.or.kids.domain.pp.dur.vo.DurAgeBannPVO;
import kr.or.kids.domain.pp.dur.vo.DurAgeBannRVO;

public interface DurAgeBannService
{
    /**
     * 대국민포털_DUR연령금기기본 정보 조회 
     *
     * @param durAgeBannPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_DUR연령금기기본 
     */
    public DurAgeBannRVO getDurAgeBann(DurAgeBannPVO durAgeBannPVO);

    /**
     * 대국민포털_DUR연령금기기본 정보 입력 
     *
     * @param durAgeBannPVO 입력할 대국민포털_DUR연령금기기본 정보 
     * @return 입력된 건수 
     */
    public int insertDurAgeBann(DurAgeBannPVO durAgeBannPVO);

    /**
     * 대국민포털_DUR연령금기기본 정보 수정 
     *
     * @param durAgeBannPVO 수정할 대국민포털_DUR연령금기기본 정보 
     * @return 수정된 건수 
     */
    public int updateDurAgeBann(DurAgeBannPVO durAgeBannPVO);

    /**
     * 대국민포털_DUR연령금기기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param durAgeBannPVO 저장할 대국민포털_DUR연령금기기본 정보 
     * @return 저장된 건수 
     */
    public int saveDurAgeBann(DurAgeBannPVO durAgeBannPVO);

    /**
     * 대국민포털_DUR연령금기기본 정보 삭제 
     *
     * @param durAgeBannDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteDurAgeBann(DurAgeBannDVO durAgeBannDVO);
}

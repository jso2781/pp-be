package kr.or.kids.domain.dur.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.or.kids.domain.dur.vo.DurSnctzDVO;
import kr.or.kids.domain.dur.vo.DurSnctzPVO;
import kr.or.kids.domain.dur.vo.DurSnctzRVO;

@Mapper
public interface DurSnctzMapper
{
    /**
     * 대국민포털_DUR노인주의기본 정보 조회 
     *
     * @param durSnctzPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_DUR노인주의기본 
     */
    public DurSnctzRVO getDurSnctz(DurSnctzPVO durSnctzPVO);

    /**
     * 대국민포털_DUR노인주의기본 정보 입력 
     *
     * @param durSnctzPVO 입력할 대국민포털_DUR노인주의기본 정보 
     * @return 입력된 건수 
     */
    public int insertDurSnctz(DurSnctzPVO durSnctzPVO);

    /**
     * 대국민포털_DUR노인주의기본 정보 수정 
     *
     * @param durSnctzPVO 수정할 대국민포털_DUR노인주의기본 정보 
     * @return 수정된 건수 
     */
    public int updateDurSnctz(DurSnctzPVO durSnctzPVO);

    /**
     * 대국민포털_DUR노인주의기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param durSnctzPVO 저장할 대국민포털_DUR노인주의기본 정보 
     * @return 저장된 건수 
     */
    public int saveDurSnctz(DurSnctzPVO durSnctzPVO);

    /**
     * 대국민포털_DUR노인주의기본 정보 삭제 
     *
     * @param durSnctzDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteDurSnctz(DurSnctzDVO durSnctzDVO);
}

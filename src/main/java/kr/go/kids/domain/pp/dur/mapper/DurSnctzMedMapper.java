package kr.go.kids.domain.pp.dur.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.pp.dur.vo.DurSnctzMedDVO;
import kr.go.kids.domain.pp.dur.vo.DurSnctzMedPVO;
import kr.go.kids.domain.pp.dur.vo.DurSnctzMedRVO;

@Mapper
public interface DurSnctzMedMapper
{
    /**
     * 대국민포털_DUR노인주의해열진통소염제기본 정보 조회 
     *
     * @param durSnctzMedPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_DUR노인주의해열진통소염제기본 
     */
    public DurSnctzMedRVO getDurSnctzMed(DurSnctzMedPVO durSnctzMedPVO);

    /**
     * 대국민포털_DUR노인주의해열진통소염제기본 정보 입력 
     *
     * @param durSnctzMedPVO 입력할 대국민포털_DUR노인주의해열진통소염제기본 정보 
     * @return 입력된 건수 
     */
    public int insertDurSnctzMed(DurSnctzMedPVO durSnctzMedPVO);

    /**
     * 대국민포털_DUR노인주의해열진통소염제기본 정보 수정 
     *
     * @param durSnctzMedPVO 수정할 대국민포털_DUR노인주의해열진통소염제기본 정보 
     * @return 수정된 건수 
     */
    public int updateDurSnctzMed(DurSnctzMedPVO durSnctzMedPVO);

    /**
     * 대국민포털_DUR노인주의해열진통소염제기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param durSnctzMedPVO 저장할 대국민포털_DUR노인주의해열진통소염제기본 정보 
     * @return 저장된 건수 
     */
    public int saveDurSnctzMed(DurSnctzMedPVO durSnctzMedPVO);

    /**
     * 대국민포털_DUR노인주의해열진통소염제기본 정보 삭제 
     *
     * @param durSnctzMedDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteDurSnctzMed(DurSnctzMedDVO durSnctzMedDVO);
}

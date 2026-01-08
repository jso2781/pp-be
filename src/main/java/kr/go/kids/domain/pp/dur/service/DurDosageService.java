package kr.go.kids.domain.pp.dur.service;

import kr.go.kids.domain.pp.dur.vo.DurDosageDVO;
import kr.go.kids.domain.pp.dur.vo.DurDosagePVO;
import kr.go.kids.domain.pp.dur.vo.DurDosageRVO;

public interface DurDosageService
{
    /**
     * 대국민포털_DUR투여기간주의기본 정보 조회 
     *
     * @param durDosagePVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_DUR투여기간주의기본 
     */
    public DurDosageRVO getDurDosage(DurDosagePVO durDosagePVO);

    /**
     * 대국민포털_DUR투여기간주의기본 정보 입력 
     *
     * @param durDosagePVO 입력할 대국민포털_DUR투여기간주의기본 정보 
     * @return 입력된 건수 
     */
    public int insertDurDosage(DurDosagePVO durDosagePVO);

    /**
     * 대국민포털_DUR투여기간주의기본 정보 수정 
     *
     * @param durDosagePVO 수정할 대국민포털_DUR투여기간주의기본 정보 
     * @return 수정된 건수 
     */
    public int updateDurDosage(DurDosagePVO durDosagePVO);

    /**
     * 대국민포털_DUR투여기간주의기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param durDosagePVO 저장할 대국민포털_DUR투여기간주의기본 정보 
     * @return 저장된 건수 
     */
    public int saveDurDosage(DurDosagePVO durDosagePVO);

    /**
     * 대국민포털_DUR투여기간주의기본 정보 삭제 
     *
     * @param durDosageDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteDurDosage(DurDosageDVO durDosageDVO);
}

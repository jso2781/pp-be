package kr.go.kids.domain.pp.dur.service;

import kr.go.kids.domain.pp.dur.vo.DurPrgntIgrdDVO;
import kr.go.kids.domain.pp.dur.vo.DurPrgntIgrdPVO;
import kr.go.kids.domain.pp.dur.vo.DurPrgntIgrdRVO;

public interface DurPrgntIgrdService
{
    /**
     * 대국민포털_DUR임부금기성분기본 정보 조회 
     *
     * @param durPrgntIgrdPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_DUR임부금기성분기본 
     */
    public DurPrgntIgrdRVO getDurPrgntIgrd(DurPrgntIgrdPVO durPrgntIgrdPVO);

    /**
     * 대국민포털_DUR임부금기성분기본 정보 입력 
     *
     * @param durPrgntIgrdPVO 입력할 대국민포털_DUR임부금기성분기본 정보 
     * @return 입력된 건수 
     */
    public int insertDurPrgntIgrd(DurPrgntIgrdPVO durPrgntIgrdPVO);

    /**
     * 대국민포털_DUR임부금기성분기본 정보 수정 
     *
     * @param durPrgntIgrdPVO 수정할 대국민포털_DUR임부금기성분기본 정보 
     * @return 수정된 건수 
     */
    public int updateDurPrgntIgrd(DurPrgntIgrdPVO durPrgntIgrdPVO);

    /**
     * 대국민포털_DUR임부금기성분기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param durPrgntIgrdPVO 저장할 대국민포털_DUR임부금기성분기본 정보 
     * @return 저장된 건수 
     */
    public int saveDurPrgntIgrd(DurPrgntIgrdPVO durPrgntIgrdPVO);

    /**
     * 대국민포털_DUR임부금기성분기본 정보 삭제 
     *
     * @param durPrgntIgrdDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteDurPrgntIgrd(DurPrgntIgrdDVO durPrgntIgrdDVO);
}

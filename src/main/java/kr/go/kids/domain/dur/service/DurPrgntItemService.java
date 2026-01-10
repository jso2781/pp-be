package kr.go.kids.domain.dur.service;

import kr.go.kids.domain.dur.vo.DurPrgntItemDVO;
import kr.go.kids.domain.dur.vo.DurPrgntItemPVO;
import kr.go.kids.domain.dur.vo.DurPrgntItemRVO;

public interface DurPrgntItemService
{
    /**
     * 대국민포털_DUR임부금기품목기본 정보 조회 
     *
     * @param durPrgntItemPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_DUR임부금기품목기본 
     */
    public DurPrgntItemRVO getDurPrgntItem(DurPrgntItemPVO durPrgntItemPVO);

    /**
     * 대국민포털_DUR임부금기품목기본 정보 입력 
     *
     * @param durPrgntItemPVO 입력할 대국민포털_DUR임부금기품목기본 정보 
     * @return 입력된 건수 
     */
    public int insertDurPrgntItem(DurPrgntItemPVO durPrgntItemPVO);

    /**
     * 대국민포털_DUR임부금기품목기본 정보 수정 
     *
     * @param durPrgntItemPVO 수정할 대국민포털_DUR임부금기품목기본 정보 
     * @return 수정된 건수 
     */
    public int updateDurPrgntItem(DurPrgntItemPVO durPrgntItemPVO);

    /**
     * 대국민포털_DUR임부금기품목기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param durPrgntItemPVO 저장할 대국민포털_DUR임부금기품목기본 정보 
     * @return 저장된 건수 
     */
    public int saveDurPrgntItem(DurPrgntItemPVO durPrgntItemPVO);

    /**
     * 대국민포털_DUR임부금기품목기본 정보 삭제 
     *
     * @param durPrgntItemDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteDurPrgntItem(DurPrgntItemDVO durPrgntItemDVO);
}

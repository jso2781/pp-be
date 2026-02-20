package kr.or.kids.domain.dur.service;

import kr.or.kids.domain.dur.vo.DurEftgrpItemDVO;
import kr.or.kids.domain.dur.vo.DurEftgrpItemPVO;
import kr.or.kids.domain.dur.vo.DurEftgrpItemRVO;

public interface DurEftgrpItemService
{
    /**
     * 대국민포털_DUR효능군중복품목기본 정보 조회 
     *
     * @param durEftgrpItemPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_DUR효능군중복품목기본 
     */
    public DurEftgrpItemRVO getDurEftgrpItem(DurEftgrpItemPVO durEftgrpItemPVO);

    /**
     * 대국민포털_DUR효능군중복품목기본 정보 입력 
     *
     * @param durEftgrpItemPVO 입력할 대국민포털_DUR효능군중복품목기본 정보 
     * @return 입력된 건수 
     */
    public int insertDurEftgrpItem(DurEftgrpItemPVO durEftgrpItemPVO);

    /**
     * 대국민포털_DUR효능군중복품목기본 정보 수정 
     *
     * @param durEftgrpItemPVO 수정할 대국민포털_DUR효능군중복품목기본 정보 
     * @return 수정된 건수 
     */
    public int updateDurEftgrpItem(DurEftgrpItemPVO durEftgrpItemPVO);

    /**
     * 대국민포털_DUR효능군중복품목기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param durEftgrpItemPVO 저장할 대국민포털_DUR효능군중복품목기본 정보 
     * @return 저장된 건수 
     */
    public int saveDurEftgrpItem(DurEftgrpItemPVO durEftgrpItemPVO);

    /**
     * 대국민포털_DUR효능군중복품목기본 정보 삭제 
     *
     * @param durEftgrpItemDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteDurEftgrpItem(DurEftgrpItemDVO durEftgrpItemDVO);
}

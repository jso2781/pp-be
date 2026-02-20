package kr.or.kids.domain.pp.popup.service;

import kr.or.kids.domain.pp.popup.vo.PopupDVO;
import kr.or.kids.domain.pp.popup.vo.PopupPVO;
import kr.or.kids.domain.pp.popup.vo.PopupRVO;

public interface PopupService
{
    /**
     * 대국민포털_팝업기본 정보 조회 
     *
     * @param popupPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_팝업기본 
     */
    public PopupRVO getPopup(PopupPVO popupPVO);

    /**
     * 대국민포털_팝업기본 정보 입력 
     *
     * @param popupPVO 입력할 대국민포털_팝업기본 정보 
     * @return 입력된 건수 
     */
    public int insertPopup(PopupPVO popupPVO);

    /**
     * 대국민포털_팝업기본 정보 수정 
     *
     * @param popupPVO 수정할 대국민포털_팝업기본 정보 
     * @return 수정된 건수 
     */
    public int updatePopup(PopupPVO popupPVO);

    /**
     * 대국민포털_팝업기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param popupPVO 저장할 대국민포털_팝업기본 정보 
     * @return 저장된 건수 
     */
    public int savePopup(PopupPVO popupPVO);

    /**
     * 대국민포털_팝업기본 정보 삭제 
     *
     * @param popupDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deletePopup(PopupDVO popupDVO);
}

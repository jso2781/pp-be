package kr.or.kids.domain.dur.service;

import kr.or.kids.domain.dur.vo.DurEftgrpIgrdDVO;
import kr.or.kids.domain.dur.vo.DurEftgrpIgrdPVO;
import kr.or.kids.domain.dur.vo.DurEftgrpIgrdRVO;

public interface DurEftgrpIgrdService
{
    /**
     * 대국민포털_DUR효능군중복성분기본 정보 조회 
     *
     * @param durEftgrpIgrdPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_DUR효능군중복성분기본 
     */
    public DurEftgrpIgrdRVO getDurEftgrpIgrd(DurEftgrpIgrdPVO durEftgrpIgrdPVO);

    /**
     * 대국민포털_DUR효능군중복성분기본 정보 입력 
     *
     * @param durEftgrpIgrdPVO 입력할 대국민포털_DUR효능군중복성분기본 정보 
     * @return 입력된 건수 
     */
    public int insertDurEftgrpIgrd(DurEftgrpIgrdPVO durEftgrpIgrdPVO);

    /**
     * 대국민포털_DUR효능군중복성분기본 정보 수정 
     *
     * @param durEftgrpIgrdPVO 수정할 대국민포털_DUR효능군중복성분기본 정보 
     * @return 수정된 건수 
     */
    public int updateDurEftgrpIgrd(DurEftgrpIgrdPVO durEftgrpIgrdPVO);

    /**
     * 대국민포털_DUR효능군중복성분기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param durEftgrpIgrdPVO 저장할 대국민포털_DUR효능군중복성분기본 정보 
     * @return 저장된 건수 
     */
    public int saveDurEftgrpIgrd(DurEftgrpIgrdPVO durEftgrpIgrdPVO);

    /**
     * 대국민포털_DUR효능군중복성분기본 정보 삭제 
     *
     * @param durEftgrpIgrdDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteDurEftgrpIgrd(DurEftgrpIgrdDVO durEftgrpIgrdDVO);
}

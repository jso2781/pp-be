package kr.or.kids.domain.hstry.service;

import kr.or.kids.domain.hstry.vo.PrvcAcsHstryDVO;
import kr.or.kids.domain.hstry.vo.PrvcAcsHstryPVO;
import kr.or.kids.domain.hstry.vo.PrvcAcsHstryRVO;

public interface PrvcAcsHstryService
{
    /**
     * 대국민포털_개인정보접근이력기본 정보 조회 
     *
     * @param prvcAcsHstryPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_개인정보접근이력기본 
     */
    public PrvcAcsHstryRVO getPrvcAcsHstry(PrvcAcsHstryPVO prvcAcsHstryPVO);

    /**
     * 대국민포털_개인정보접근이력기본 정보 입력 
     *
     * @param prvcAcsHstryPVO 입력할 대국민포털_개인정보접근이력기본 정보 
     * @return 입력된 건수 
     */
    public int insertPrvcAcsHstry(PrvcAcsHstryPVO prvcAcsHstryPVO);

    /**
     * 대국민포털_개인정보접근이력기본 정보 수정 
     *
     * @param prvcAcsHstryPVO 수정할 대국민포털_개인정보접근이력기본 정보 
     * @return 수정된 건수 
     */
    public int updatePrvcAcsHstry(PrvcAcsHstryPVO prvcAcsHstryPVO);

    /**
     * 대국민포털_개인정보접근이력기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param prvcAcsHstryPVO 저장할 대국민포털_개인정보접근이력기본 정보 
     * @return 저장된 건수 
     */
    public int savePrvcAcsHstry(PrvcAcsHstryPVO prvcAcsHstryPVO);

    /**
     * 대국민포털_개인정보접근이력기본 정보 삭제 
     *
     * @param prvcAcsHstryDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deletePrvcAcsHstry(PrvcAcsHstryDVO prvcAcsHstryDVO);
}

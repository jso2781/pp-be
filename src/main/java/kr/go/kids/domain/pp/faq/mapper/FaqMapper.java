package kr.go.kids.domain.pp.faq.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.pp.faq.vo.FaqDVO;
import kr.go.kids.domain.pp.faq.vo.FaqPVO;
import kr.go.kids.domain.pp.faq.vo.FaqRVO;

@Mapper
public interface FaqMapper
{
    /**
     * 대국민포털_FAQ기본 정보 조회 
     *
     * @param faqPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_FAQ기본 
     */
    public FaqRVO getFaq(FaqPVO faqPVO);

    /**
     * 대국민포털_FAQ기본 정보 입력 
     *
     * @param faqPVO 입력할 대국민포털_FAQ기본 정보 
     * @return 입력된 건수 
     */
    public int insertFaq(FaqPVO faqPVO);

    /**
     * 대국민포털_FAQ기본 정보 수정 
     *
     * @param faqPVO 수정할 대국민포털_FAQ기본 정보 
     * @return 수정된 건수 
     */
    public int updateFaq(FaqPVO faqPVO);

    /**
     * 대국민포털_FAQ기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param faqPVO 저장할 대국민포털_FAQ기본 정보 
     * @return 저장된 건수 
     */
    public int saveFaq(FaqPVO faqPVO);

    /**
     * 대국민포털_FAQ기본 정보 삭제 
     *
     * @param faqDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteFaq(FaqDVO faqDVO);
}

package kr.go.kids.domain.faq.service;

import kr.go.kids.domain.faq.vo.FaqDVO;
import kr.go.kids.domain.faq.vo.FaqPVO;
import kr.go.kids.domain.faq.vo.FaqRVO;

public interface FaqService
{
    /**
     * 대국민포털_FAQ기본 목록 조회 
     *
     * @param faqPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_FAQ기본 
     */
    public FaqRVO selectMenuList(FaqPVO faqPVO);
}

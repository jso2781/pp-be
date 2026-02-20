package kr.or.kids.domain.pp.faq.service;

import kr.or.kids.domain.pp.faq.vo.FaqPVO;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

public interface FaqService
{
    /**
     * 대국민포털_FAQ기본 목록 조회 
     *
     * @param faqPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_FAQ기본 
     */
    public ApiPrnDto selectFaqList(FaqPVO faqPVO);
}

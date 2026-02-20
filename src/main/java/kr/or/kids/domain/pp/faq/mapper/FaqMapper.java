package kr.or.kids.domain.pp.faq.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.kids.domain.pp.faq.vo.FaqPVO;
import kr.or.kids.domain.pp.faq.vo.FaqRVO;

@Mapper
public interface FaqMapper
{
    /**
     * 대국민포털_FAQ기본 목록 조회 
     *
     * @param faqPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_FAQ기본 
     */
    public List<FaqRVO> selectFaqList(FaqPVO faqPVO);
}

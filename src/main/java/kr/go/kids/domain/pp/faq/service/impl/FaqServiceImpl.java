package kr.go.kids.domain.pp.faq.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.pp.faq.mapper.FaqMapper;
import kr.go.kids.domain.pp.faq.service.FaqService;
import kr.go.kids.domain.pp.faq.vo.FaqDVO;
import kr.go.kids.domain.pp.faq.vo.FaqPVO;
import kr.go.kids.domain.pp.faq.vo.FaqRVO;

@Service
public class FaqServiceImpl implements FaqService
{
    @Autowired
    private FaqMapper faqMapper;

    @Override
    public FaqRVO getFaq(FaqPVO faqPVO)
    {
        return faqMapper.getFaq(faqPVO);
    }

    @Override
    public int insertFaq(FaqPVO faqPVO)
    {
        return faqMapper.insertFaq(faqPVO);
    }

    @Override
    public int updateFaq(FaqPVO faqPVO)
    {
        return faqMapper.updateFaq(faqPVO);
    }

    @Override
    public int saveFaq(FaqPVO faqPVO)
    {
        return faqMapper.saveFaq(faqPVO);
    }

    @Override
    public int deleteFaq(FaqDVO faqDVO)
    {
        return faqMapper.deleteFaq(faqDVO);
    }
}

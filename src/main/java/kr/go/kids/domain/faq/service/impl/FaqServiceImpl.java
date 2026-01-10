package kr.go.kids.domain.faq.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.faq.mapper.FaqMapper;
import kr.go.kids.domain.faq.service.FaqService;
import kr.go.kids.domain.faq.vo.FaqDVO;
import kr.go.kids.domain.faq.vo.FaqPVO;
import kr.go.kids.domain.faq.vo.FaqRVO;

@Service
public class FaqServiceImpl implements FaqService
{
    @Autowired
    private FaqMapper faqMapper;

    @Override
    public FaqRVO selectFaqList(FaqPVO faqPVO)
    {
        return faqMapper.selectFaqList(faqPVO);
    }
}

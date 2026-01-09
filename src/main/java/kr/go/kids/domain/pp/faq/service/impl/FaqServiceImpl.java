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
    public FaqRVO selectMenuList(FaqPVO faqPVO)
    {
        return faqMapper.selectMenuList(faqPVO);
    }
}

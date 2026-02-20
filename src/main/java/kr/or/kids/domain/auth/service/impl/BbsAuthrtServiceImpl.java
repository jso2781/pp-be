package kr.or.kids.domain.auth.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.auth.mapper.BbsAuthrtMapper;
import kr.or.kids.domain.auth.service.BbsAuthrtService;
import kr.or.kids.domain.auth.vo.BbsAuthrtDVO;
import kr.or.kids.domain.auth.vo.BbsAuthrtPVO;
import kr.or.kids.domain.auth.vo.BbsAuthrtRVO;

@Service
public class BbsAuthrtServiceImpl implements BbsAuthrtService
{
    @Autowired
    private BbsAuthrtMapper bbsAuthrtMapper;

    @Override
    public BbsAuthrtRVO getBbsAuthrt(BbsAuthrtPVO bbsAuthrtPVO)
    {
        return bbsAuthrtMapper.getBbsAuthrt(bbsAuthrtPVO);
    }

    @Override
    public int insertBbsAuthrt(BbsAuthrtPVO bbsAuthrtPVO)
    {
        return bbsAuthrtMapper.insertBbsAuthrt(bbsAuthrtPVO);
    }

    @Override
    public int updateBbsAuthrt(BbsAuthrtPVO bbsAuthrtPVO)
    {
        return bbsAuthrtMapper.updateBbsAuthrt(bbsAuthrtPVO);
    }

    @Override
    public int saveBbsAuthrt(BbsAuthrtPVO bbsAuthrtPVO)
    {
        return bbsAuthrtMapper.saveBbsAuthrt(bbsAuthrtPVO);
    }

    @Override
    public int deleteBbsAuthrt(BbsAuthrtDVO bbsAuthrtDVO)
    {
        return bbsAuthrtMapper.deleteBbsAuthrt(bbsAuthrtDVO);
    }
}

package kr.or.kids.domain.pp.auth.service.impl;

import org.springframework.stereotype.Service;

import kr.or.kids.domain.pp.auth.mapper.BbsAuthrtMapper;
import kr.or.kids.domain.pp.auth.service.BbsAuthrtService;
import kr.or.kids.domain.pp.auth.vo.BbsAuthrtDVO;
import kr.or.kids.domain.pp.auth.vo.BbsAuthrtPVO;
import kr.or.kids.domain.pp.auth.vo.BbsAuthrtRVO;

import lombok.RequiredArgsConstructor;
@Service
@RequiredArgsConstructor
public class BbsAuthrtServiceImpl implements BbsAuthrtService
{
    private final BbsAuthrtMapper bbsAuthrtMapper;

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

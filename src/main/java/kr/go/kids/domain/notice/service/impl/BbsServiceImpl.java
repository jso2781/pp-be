package kr.go.kids.domain.notice.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.notice.mapper.BbsMapper;
import kr.go.kids.domain.notice.service.BbsService;
import kr.go.kids.domain.notice.vo.BbsDVO;
import kr.go.kids.domain.notice.vo.BbsPVO;
import kr.go.kids.domain.notice.vo.BbsRVO;

@Service
public class BbsServiceImpl implements BbsService
{
    @Autowired
    private BbsMapper bbsMapper;

    @Override
    public BbsRVO getBbs(BbsPVO bbsPVO)
    {
        return bbsMapper.getBbs(bbsPVO);
    }

    @Override
    public int insertBbs(BbsPVO bbsPVO)
    {
        return bbsMapper.insertBbs(bbsPVO);
    }

    @Override
    public int updateBbs(BbsPVO bbsPVO)
    {
        return bbsMapper.updateBbs(bbsPVO);
    }

    @Override
    public int saveBbs(BbsPVO bbsPVO)
    {
        return bbsMapper.saveBbs(bbsPVO);
    }

    @Override
    public int deleteBbs(BbsDVO bbsDVO)
    {
        return bbsMapper.deleteBbs(bbsDVO);
    }
}

package kr.go.kids.domain.dur.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.dur.mapper.ConcBannMapper;
import kr.go.kids.domain.dur.service.ConcBannService;
import kr.go.kids.domain.dur.vo.ConcBannDVO;
import kr.go.kids.domain.dur.vo.ConcBannPVO;
import kr.go.kids.domain.dur.vo.ConcBannRVO;

@Service
public class ConcBannServiceImpl implements ConcBannService
{
    @Autowired
    private ConcBannMapper concBannMapper;

    @Override
    public ConcBannRVO getConcBann(ConcBannPVO concBannPVO)
    {
        return concBannMapper.getConcBann(concBannPVO);
    }

    @Override
    public int insertConcBann(ConcBannPVO concBannPVO)
    {
        return concBannMapper.insertConcBann(concBannPVO);
    }

    @Override
    public int updateConcBann(ConcBannPVO concBannPVO)
    {
        return concBannMapper.updateConcBann(concBannPVO);
    }

    @Override
    public int saveConcBann(ConcBannPVO concBannPVO)
    {
        return concBannMapper.saveConcBann(concBannPVO);
    }

    @Override
    public int deleteConcBann(ConcBannDVO concBannDVO)
    {
        return concBannMapper.deleteConcBann(concBannDVO);
    }
}

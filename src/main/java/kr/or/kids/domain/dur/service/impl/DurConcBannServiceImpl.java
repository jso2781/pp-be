package kr.or.kids.domain.dur.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.dur.mapper.DurConcBannMapper;
import kr.or.kids.domain.dur.service.DurConcBannService;
import kr.or.kids.domain.dur.vo.DurConcBannDVO;
import kr.or.kids.domain.dur.vo.DurConcBannPVO;
import kr.or.kids.domain.dur.vo.DurConcBannRVO;

@Service
public class DurConcBannServiceImpl implements DurConcBannService
{
    @Autowired
    private DurConcBannMapper concBannMapper;

    @Override
    public DurConcBannRVO getDurConcBann(DurConcBannPVO concBannPVO)
    {
        return concBannMapper.getDurConcBann(concBannPVO);
    }

    @Override
    public int insertDurConcBann(DurConcBannPVO concBannPVO)
    {
        return concBannMapper.insertDurConcBann(concBannPVO);
    }

    @Override
    public int updateDurConcBann(DurConcBannPVO concBannPVO)
    {
        return concBannMapper.updateDurConcBann(concBannPVO);
    }

    @Override
    public int saveDurConcBann(DurConcBannPVO concBannPVO)
    {
        return concBannMapper.saveDurConcBann(concBannPVO);
    }

    @Override
    public int deleteDurConcBann(DurConcBannDVO concBannDVO)
    {
        return concBannMapper.deleteDurConcBann(concBannDVO);
    }
}

package kr.or.kids.domain.pp.dur.service.impl;

import org.springframework.stereotype.Service;

import kr.or.kids.domain.pp.dur.mapper.DurConcBannMapper;
import kr.or.kids.domain.pp.dur.service.DurConcBannService;
import kr.or.kids.domain.pp.dur.vo.DurConcBannDVO;
import kr.or.kids.domain.pp.dur.vo.DurConcBannPVO;
import kr.or.kids.domain.pp.dur.vo.DurConcBannRVO;

import lombok.RequiredArgsConstructor;
@Service
@RequiredArgsConstructor
public class DurConcBannServiceImpl implements DurConcBannService
{
    private final DurConcBannMapper concBannMapper;

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

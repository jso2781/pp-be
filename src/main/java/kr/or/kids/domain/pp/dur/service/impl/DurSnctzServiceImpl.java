package kr.or.kids.domain.pp.dur.service.impl;

import org.springframework.stereotype.Service;

import kr.or.kids.domain.pp.dur.mapper.DurSnctzMapper;
import kr.or.kids.domain.pp.dur.service.DurSnctzService;
import kr.or.kids.domain.pp.dur.vo.DurSnctzDVO;
import kr.or.kids.domain.pp.dur.vo.DurSnctzPVO;
import kr.or.kids.domain.pp.dur.vo.DurSnctzRVO;

import lombok.RequiredArgsConstructor;
@Service
@RequiredArgsConstructor
public class DurSnctzServiceImpl implements DurSnctzService
{
    private final DurSnctzMapper durSnctzMapper;

    @Override
    public DurSnctzRVO getDurSnctz(DurSnctzPVO durSnctzPVO)
    {
        return durSnctzMapper.getDurSnctz(durSnctzPVO);
    }

    @Override
    public int insertDurSnctz(DurSnctzPVO durSnctzPVO)
    {
        return durSnctzMapper.insertDurSnctz(durSnctzPVO);
    }

    @Override
    public int updateDurSnctz(DurSnctzPVO durSnctzPVO)
    {
        return durSnctzMapper.updateDurSnctz(durSnctzPVO);
    }

    @Override
    public int saveDurSnctz(DurSnctzPVO durSnctzPVO)
    {
        return durSnctzMapper.saveDurSnctz(durSnctzPVO);
    }

    @Override
    public int deleteDurSnctz(DurSnctzDVO durSnctzDVO)
    {
        return durSnctzMapper.deleteDurSnctz(durSnctzDVO);
    }
}

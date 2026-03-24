package kr.or.kids.domain.pp.dur.service.impl;

import org.springframework.stereotype.Service;

import kr.or.kids.domain.pp.dur.mapper.DurCpctMapper;
import kr.or.kids.domain.pp.dur.service.DurCpctService;
import kr.or.kids.domain.pp.dur.vo.DurCpctDVO;
import kr.or.kids.domain.pp.dur.vo.DurCpctPVO;
import kr.or.kids.domain.pp.dur.vo.DurCpctRVO;

import lombok.RequiredArgsConstructor;
@Service
@RequiredArgsConstructor
public class DurCpctServiceImpl implements DurCpctService
{
    private final DurCpctMapper durCpctMapper;

    @Override
    public DurCpctRVO getDurCpct(DurCpctPVO durCpctPVO)
    {
        return durCpctMapper.getDurCpct(durCpctPVO);
    }

    @Override
    public int insertDurCpct(DurCpctPVO durCpctPVO)
    {
        return durCpctMapper.insertDurCpct(durCpctPVO);
    }

    @Override
    public int updateDurCpct(DurCpctPVO durCpctPVO)
    {
        return durCpctMapper.updateDurCpct(durCpctPVO);
    }

    @Override
    public int saveDurCpct(DurCpctPVO durCpctPVO)
    {
        return durCpctMapper.saveDurCpct(durCpctPVO);
    }

    @Override
    public int deleteDurCpct(DurCpctDVO durCpctDVO)
    {
        return durCpctMapper.deleteDurCpct(durCpctDVO);
    }
}

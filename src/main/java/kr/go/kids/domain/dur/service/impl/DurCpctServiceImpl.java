package kr.go.kids.domain.dur.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.dur.mapper.DurCpctMapper;
import kr.go.kids.domain.dur.service.DurCpctService;
import kr.go.kids.domain.dur.vo.DurCpctDVO;
import kr.go.kids.domain.dur.vo.DurCpctPVO;
import kr.go.kids.domain.dur.vo.DurCpctRVO;

@Service
public class DurCpctServiceImpl implements DurCpctService
{
    @Autowired
    private DurCpctMapper durCpctMapper;

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

package kr.or.kids.domain.dur.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.dur.mapper.DurAgeBannMapper;
import kr.or.kids.domain.dur.service.DurAgeBannService;
import kr.or.kids.domain.dur.vo.DurAgeBannDVO;
import kr.or.kids.domain.dur.vo.DurAgeBannPVO;
import kr.or.kids.domain.dur.vo.DurAgeBannRVO;

@Service
public class DurAgeBannServiceImpl implements DurAgeBannService
{
    @Autowired
    private DurAgeBannMapper durAgeBannMapper;

    @Override
    public DurAgeBannRVO getDurAgeBann(DurAgeBannPVO durAgeBannPVO)
    {
        return durAgeBannMapper.getDurAgeBann(durAgeBannPVO);
    }

    @Override
    public int insertDurAgeBann(DurAgeBannPVO durAgeBannPVO)
    {
        return durAgeBannMapper.insertDurAgeBann(durAgeBannPVO);
    }

    @Override
    public int updateDurAgeBann(DurAgeBannPVO durAgeBannPVO)
    {
        return durAgeBannMapper.updateDurAgeBann(durAgeBannPVO);
    }

    @Override
    public int saveDurAgeBann(DurAgeBannPVO durAgeBannPVO)
    {
        return durAgeBannMapper.saveDurAgeBann(durAgeBannPVO);
    }

    @Override
    public int deleteDurAgeBann(DurAgeBannDVO durAgeBannDVO)
    {
        return durAgeBannMapper.deleteDurAgeBann(durAgeBannDVO);
    }
}

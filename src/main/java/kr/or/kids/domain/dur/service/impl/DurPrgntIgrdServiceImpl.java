package kr.or.kids.domain.dur.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.dur.mapper.DurPrgntIgrdMapper;
import kr.or.kids.domain.dur.service.DurPrgntIgrdService;
import kr.or.kids.domain.dur.vo.DurPrgntIgrdDVO;
import kr.or.kids.domain.dur.vo.DurPrgntIgrdPVO;
import kr.or.kids.domain.dur.vo.DurPrgntIgrdRVO;

@Service
public class DurPrgntIgrdServiceImpl implements DurPrgntIgrdService
{
    @Autowired
    private DurPrgntIgrdMapper durPrgntIgrdMapper;

    @Override
    public DurPrgntIgrdRVO getDurPrgntIgrd(DurPrgntIgrdPVO durPrgntIgrdPVO)
    {
        return durPrgntIgrdMapper.getDurPrgntIgrd(durPrgntIgrdPVO);
    }

    @Override
    public int insertDurPrgntIgrd(DurPrgntIgrdPVO durPrgntIgrdPVO)
    {
        return durPrgntIgrdMapper.insertDurPrgntIgrd(durPrgntIgrdPVO);
    }

    @Override
    public int updateDurPrgntIgrd(DurPrgntIgrdPVO durPrgntIgrdPVO)
    {
        return durPrgntIgrdMapper.updateDurPrgntIgrd(durPrgntIgrdPVO);
    }

    @Override
    public int saveDurPrgntIgrd(DurPrgntIgrdPVO durPrgntIgrdPVO)
    {
        return durPrgntIgrdMapper.saveDurPrgntIgrd(durPrgntIgrdPVO);
    }

    @Override
    public int deleteDurPrgntIgrd(DurPrgntIgrdDVO durPrgntIgrdDVO)
    {
        return durPrgntIgrdMapper.deleteDurPrgntIgrd(durPrgntIgrdDVO);
    }
}

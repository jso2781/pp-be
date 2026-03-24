package kr.or.kids.domain.pp.dur.service.impl;

import org.springframework.stereotype.Service;

import kr.or.kids.domain.pp.dur.mapper.DurEftgrpIgrdMapper;
import kr.or.kids.domain.pp.dur.service.DurEftgrpIgrdService;
import kr.or.kids.domain.pp.dur.vo.DurEftgrpIgrdDVO;
import kr.or.kids.domain.pp.dur.vo.DurEftgrpIgrdPVO;
import kr.or.kids.domain.pp.dur.vo.DurEftgrpIgrdRVO;

import lombok.RequiredArgsConstructor;
@Service
@RequiredArgsConstructor
public class DurEftgrpIgrdServiceImpl implements DurEftgrpIgrdService
{
    private final DurEftgrpIgrdMapper durEftgrpIgrdMapper;

    @Override
    public DurEftgrpIgrdRVO getDurEftgrpIgrd(DurEftgrpIgrdPVO durEftgrpIgrdPVO)
    {
        return durEftgrpIgrdMapper.getDurEftgrpIgrd(durEftgrpIgrdPVO);
    }

    @Override
    public int insertDurEftgrpIgrd(DurEftgrpIgrdPVO durEftgrpIgrdPVO)
    {
        return durEftgrpIgrdMapper.insertDurEftgrpIgrd(durEftgrpIgrdPVO);
    }

    @Override
    public int updateDurEftgrpIgrd(DurEftgrpIgrdPVO durEftgrpIgrdPVO)
    {
        return durEftgrpIgrdMapper.updateDurEftgrpIgrd(durEftgrpIgrdPVO);
    }

    @Override
    public int saveDurEftgrpIgrd(DurEftgrpIgrdPVO durEftgrpIgrdPVO)
    {
        return durEftgrpIgrdMapper.saveDurEftgrpIgrd(durEftgrpIgrdPVO);
    }

    @Override
    public int deleteDurEftgrpIgrd(DurEftgrpIgrdDVO durEftgrpIgrdDVO)
    {
        return durEftgrpIgrdMapper.deleteDurEftgrpIgrd(durEftgrpIgrdDVO);
    }
}

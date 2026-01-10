package kr.go.kids.domain.dur.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.dur.mapper.DurDosageMapper;
import kr.go.kids.domain.dur.service.DurDosageService;
import kr.go.kids.domain.dur.vo.DurDosageDVO;
import kr.go.kids.domain.dur.vo.DurDosagePVO;
import kr.go.kids.domain.dur.vo.DurDosageRVO;

@Service
public class DurDosageServiceImpl implements DurDosageService
{
    @Autowired
    private DurDosageMapper durDosageMapper;

    @Override
    public DurDosageRVO getDurDosage(DurDosagePVO durDosagePVO)
    {
        return durDosageMapper.getDurDosage(durDosagePVO);
    }

    @Override
    public int insertDurDosage(DurDosagePVO durDosagePVO)
    {
        return durDosageMapper.insertDurDosage(durDosagePVO);
    }

    @Override
    public int updateDurDosage(DurDosagePVO durDosagePVO)
    {
        return durDosageMapper.updateDurDosage(durDosagePVO);
    }

    @Override
    public int saveDurDosage(DurDosagePVO durDosagePVO)
    {
        return durDosageMapper.saveDurDosage(durDosagePVO);
    }

    @Override
    public int deleteDurDosage(DurDosageDVO durDosageDVO)
    {
        return durDosageMapper.deleteDurDosage(durDosageDVO);
    }
}

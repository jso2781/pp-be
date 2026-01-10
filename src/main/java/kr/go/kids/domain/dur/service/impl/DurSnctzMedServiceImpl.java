package kr.go.kids.domain.dur.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.dur.mapper.DurSnctzMedMapper;
import kr.go.kids.domain.dur.service.DurSnctzMedService;
import kr.go.kids.domain.dur.vo.DurSnctzMedDVO;
import kr.go.kids.domain.dur.vo.DurSnctzMedPVO;
import kr.go.kids.domain.dur.vo.DurSnctzMedRVO;

@Service
public class DurSnctzMedServiceImpl implements DurSnctzMedService
{
    @Autowired
    private DurSnctzMedMapper durSnctzMedMapper;

    @Override
    public DurSnctzMedRVO getDurSnctzMed(DurSnctzMedPVO durSnctzMedPVO)
    {
        return durSnctzMedMapper.getDurSnctzMed(durSnctzMedPVO);
    }

    @Override
    public int insertDurSnctzMed(DurSnctzMedPVO durSnctzMedPVO)
    {
        return durSnctzMedMapper.insertDurSnctzMed(durSnctzMedPVO);
    }

    @Override
    public int updateDurSnctzMed(DurSnctzMedPVO durSnctzMedPVO)
    {
        return durSnctzMedMapper.updateDurSnctzMed(durSnctzMedPVO);
    }

    @Override
    public int saveDurSnctzMed(DurSnctzMedPVO durSnctzMedPVO)
    {
        return durSnctzMedMapper.saveDurSnctzMed(durSnctzMedPVO);
    }

    @Override
    public int deleteDurSnctzMed(DurSnctzMedDVO durSnctzMedDVO)
    {
        return durSnctzMedMapper.deleteDurSnctzMed(durSnctzMedDVO);
    }
}

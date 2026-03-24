package kr.or.kids.domain.pp.dur.service.impl;

import org.springframework.stereotype.Service;

import kr.or.kids.domain.pp.dur.mapper.DurSnctzMedMapper;
import kr.or.kids.domain.pp.dur.service.DurSnctzMedService;
import kr.or.kids.domain.pp.dur.vo.DurSnctzMedDVO;
import kr.or.kids.domain.pp.dur.vo.DurSnctzMedPVO;
import kr.or.kids.domain.pp.dur.vo.DurSnctzMedRVO;

import lombok.RequiredArgsConstructor;
@Service
@RequiredArgsConstructor
public class DurSnctzMedServiceImpl implements DurSnctzMedService
{
    private final DurSnctzMedMapper durSnctzMedMapper;

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

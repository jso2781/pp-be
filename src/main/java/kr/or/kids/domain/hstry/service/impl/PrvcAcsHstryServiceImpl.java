package kr.or.kids.domain.hstry.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.hstry.mapper.PrvcAcsHstryMapper;
import kr.or.kids.domain.hstry.service.PrvcAcsHstryService;
import kr.or.kids.domain.hstry.vo.PrvcAcsHstryDVO;
import kr.or.kids.domain.hstry.vo.PrvcAcsHstryPVO;
import kr.or.kids.domain.hstry.vo.PrvcAcsHstryRVO;

@Service
public class PrvcAcsHstryServiceImpl implements PrvcAcsHstryService
{
    @Autowired
    private PrvcAcsHstryMapper prvcAcsHstryMapper;

    @Override
    public PrvcAcsHstryRVO getPrvcAcsHstry(PrvcAcsHstryPVO prvcAcsHstryPVO)
    {
        return prvcAcsHstryMapper.getPrvcAcsHstry(prvcAcsHstryPVO);
    }

    @Override
    public int insertPrvcAcsHstry(PrvcAcsHstryPVO prvcAcsHstryPVO)
    {
        return prvcAcsHstryMapper.insertPrvcAcsHstry(prvcAcsHstryPVO);
    }

    @Override
    public int updatePrvcAcsHstry(PrvcAcsHstryPVO prvcAcsHstryPVO)
    {
        return prvcAcsHstryMapper.updatePrvcAcsHstry(prvcAcsHstryPVO);
    }

    @Override
    public int savePrvcAcsHstry(PrvcAcsHstryPVO prvcAcsHstryPVO)
    {
        return prvcAcsHstryMapper.savePrvcAcsHstry(prvcAcsHstryPVO);
    }

    @Override
    public int deletePrvcAcsHstry(PrvcAcsHstryDVO prvcAcsHstryDVO)
    {
        return prvcAcsHstryMapper.deletePrvcAcsHstry(prvcAcsHstryDVO);
    }
}

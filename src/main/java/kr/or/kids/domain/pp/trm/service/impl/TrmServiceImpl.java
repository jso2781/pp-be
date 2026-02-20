package kr.or.kids.domain.pp.trm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.pp.trm.mapper.TrmMapper;
import kr.or.kids.domain.pp.trm.service.TrmService;
import kr.or.kids.domain.pp.trm.vo.TrmDVO;
import kr.or.kids.domain.pp.trm.vo.TrmPVO;
import kr.or.kids.domain.pp.trm.vo.TrmRVO;

@Service
public class TrmServiceImpl implements TrmService
{
    @Autowired
    private TrmMapper trmMapper;

    @Override
    public TrmRVO getTrm(TrmPVO trmPVO)
    {
        return trmMapper.getTrm(trmPVO);
    }

    @Override
    public int insertTrm(TrmPVO trmPVO)
    {
        return trmMapper.insertTrm(trmPVO);
    }

    @Override
    public int updateTrm(TrmPVO trmPVO)
    {
        return trmMapper.updateTrm(trmPVO);
    }

    @Override
    public int saveTrm(TrmPVO trmPVO)
    {
        return trmMapper.saveTrm(trmPVO);
    }

    @Override
    public int deleteTrm(TrmDVO trmDVO)
    {
        return trmMapper.deleteTrm(trmDVO);
    }
}

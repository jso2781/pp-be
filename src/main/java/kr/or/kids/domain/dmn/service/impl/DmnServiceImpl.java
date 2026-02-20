package kr.or.kids.domain.dmn.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.dmn.mapper.DmnMapper;
import kr.or.kids.domain.dmn.service.DmnService;
import kr.or.kids.domain.dmn.vo.DmnDVO;
import kr.or.kids.domain.dmn.vo.DmnPVO;
import kr.or.kids.domain.dmn.vo.DmnRVO;

@Service
public class DmnServiceImpl implements DmnService
{
    @Autowired
    private DmnMapper dmnMapper;

    @Override
    public DmnRVO getDmn(DmnPVO dmnPVO)
    {
        return dmnMapper.getDmn(dmnPVO);
    }

    @Override
    public int insertDmn(DmnPVO dmnPVO)
    {
        return dmnMapper.insertDmn(dmnPVO);
    }

    @Override
    public int updateDmn(DmnPVO dmnPVO)
    {
        return dmnMapper.updateDmn(dmnPVO);
    }

    @Override
    public int saveDmn(DmnPVO dmnPVO)
    {
        return dmnMapper.saveDmn(dmnPVO);
    }

    @Override
    public int deleteDmn(DmnDVO dmnDVO)
    {
        return dmnMapper.deleteDmn(dmnDVO);
    }
}

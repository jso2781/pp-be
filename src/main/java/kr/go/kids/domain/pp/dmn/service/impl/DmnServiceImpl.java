package kr.go.kids.domain.pp.dmn.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.pp.dmn.mapper.DmnMapper;
import kr.go.kids.domain.pp.dmn.service.DmnService;
import kr.go.kids.domain.pp.dmn.vo.DmnDVO;
import kr.go.kids.domain.pp.dmn.vo.DmnPVO;
import kr.go.kids.domain.pp.dmn.vo.DmnRVO;

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

package kr.go.kids.domain.pp.dgstfn.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.pp.dgstfn.mapper.DgstfnExmnMapper;
import kr.go.kids.domain.pp.dgstfn.service.DgstfnExmnService;
import kr.go.kids.domain.pp.dgstfn.vo.DgstfnExmnDVO;
import kr.go.kids.domain.pp.dgstfn.vo.DgstfnExmnPVO;
import kr.go.kids.domain.pp.dgstfn.vo.DgstfnExmnRVO;

@Service
public class DgstfnExmnServiceImpl implements DgstfnExmnService
{
    @Autowired
    private DgstfnExmnMapper dgstfnExmnMapper;

    @Override
    public DgstfnExmnRVO getDgstfnExmn(DgstfnExmnPVO dgstfnExmnPVO)
    {
        return dgstfnExmnMapper.getDgstfnExmn(dgstfnExmnPVO);
    }

    @Override
    public int insertDgstfnExmn(DgstfnExmnPVO dgstfnExmnPVO)
    {
        return dgstfnExmnMapper.insertDgstfnExmn(dgstfnExmnPVO);
    }

    @Override
    public int updateDgstfnExmn(DgstfnExmnPVO dgstfnExmnPVO)
    {
        return dgstfnExmnMapper.updateDgstfnExmn(dgstfnExmnPVO);
    }

    @Override
    public int saveDgstfnExmn(DgstfnExmnPVO dgstfnExmnPVO)
    {
        return dgstfnExmnMapper.saveDgstfnExmn(dgstfnExmnPVO);
    }

    @Override
    public int deleteDgstfnExmn(DgstfnExmnDVO dgstfnExmnDVO)
    {
        return dgstfnExmnMapper.deleteDgstfnExmn(dgstfnExmnDVO);
    }
}

package kr.go.kids.domain.auth.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.auth.mapper.ExprtAuthrtMapper;
import kr.go.kids.domain.auth.service.ExprtAuthrtService;
import kr.go.kids.domain.auth.vo.ExprtAuthrtDVO;
import kr.go.kids.domain.auth.vo.ExprtAuthrtPVO;
import kr.go.kids.domain.auth.vo.ExprtAuthrtRVO;

@Service
public class ExprtAuthrtServiceImpl implements ExprtAuthrtService
{
    @Autowired
    private ExprtAuthrtMapper exprtAuthrtMapper;

    @Override
    public ExprtAuthrtRVO getExprtAuthrt(ExprtAuthrtPVO exprtAuthrtPVO)
    {
        return exprtAuthrtMapper.getExprtAuthrt(exprtAuthrtPVO);
    }

    @Override
    public int insertExprtAuthrt(ExprtAuthrtPVO exprtAuthrtPVO)
    {
        return exprtAuthrtMapper.insertExprtAuthrt(exprtAuthrtPVO);
    }

    @Override
    public int updateExprtAuthrt(ExprtAuthrtPVO exprtAuthrtPVO)
    {
        return exprtAuthrtMapper.updateExprtAuthrt(exprtAuthrtPVO);
    }

    @Override
    public int saveExprtAuthrt(ExprtAuthrtPVO exprtAuthrtPVO)
    {
        return exprtAuthrtMapper.saveExprtAuthrt(exprtAuthrtPVO);
    }

    @Override
    public int deleteExprtAuthrt(ExprtAuthrtDVO exprtAuthrtDVO)
    {
        return exprtAuthrtMapper.deleteExprtAuthrt(exprtAuthrtDVO);
    }
}

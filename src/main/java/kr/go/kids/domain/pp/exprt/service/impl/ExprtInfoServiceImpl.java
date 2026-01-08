package kr.go.kids.domain.pp.exprt.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.pp.exprt.mapper.ExprtInfoMapper;
import kr.go.kids.domain.pp.exprt.service.ExprtInfoService;
import kr.go.kids.domain.pp.exprt.vo.ExprtInfoDVO;
import kr.go.kids.domain.pp.exprt.vo.ExprtInfoPVO;
import kr.go.kids.domain.pp.exprt.vo.ExprtInfoRVO;

@Service
public class ExprtInfoServiceImpl implements ExprtInfoService
{
    @Autowired
    private ExprtInfoMapper exprtInfoMapper;

    @Override
    public ExprtInfoRVO getExprtInfo(ExprtInfoPVO exprtInfoPVO)
    {
        return exprtInfoMapper.getExprtInfo(exprtInfoPVO);
    }

    @Override
    public int insertExprtInfo(ExprtInfoPVO exprtInfoPVO)
    {
        return exprtInfoMapper.insertExprtInfo(exprtInfoPVO);
    }

    @Override
    public int updateExprtInfo(ExprtInfoPVO exprtInfoPVO)
    {
        return exprtInfoMapper.updateExprtInfo(exprtInfoPVO);
    }

    @Override
    public int saveExprtInfo(ExprtInfoPVO exprtInfoPVO)
    {
        return exprtInfoMapper.saveExprtInfo(exprtInfoPVO);
    }

    @Override
    public int deleteExprtInfo(ExprtInfoDVO exprtInfoDVO)
    {
        return exprtInfoMapper.deleteExprtInfo(exprtInfoDVO);
    }
}

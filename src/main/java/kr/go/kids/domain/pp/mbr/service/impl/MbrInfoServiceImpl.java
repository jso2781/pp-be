package kr.go.kids.domain.pp.mbr.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.pp.mbr.mapper.MbrInfoMapper;
import kr.go.kids.domain.pp.mbr.service.MbrInfoService;
import kr.go.kids.domain.pp.mbr.vo.MbrInfoDVO;
import kr.go.kids.domain.pp.mbr.vo.MbrInfoPVO;
import kr.go.kids.domain.pp.mbr.vo.MbrInfoRVO;

@Service
public class MbrInfoServiceImpl implements MbrInfoService
{
    @Autowired
    private MbrInfoMapper mbrInfoMapper;

    @Override
    public MbrInfoRVO getMbrInfo(MbrInfoPVO mbrInfoPVO)
    {
        return mbrInfoMapper.getMbrInfo(mbrInfoPVO);
    }

    @Override
    public int insertMbrInfo(MbrInfoPVO mbrInfoPVO)
    {
        return mbrInfoMapper.insertMbrInfo(mbrInfoPVO);
    }

    @Override
    public int updateMbrInfo(MbrInfoPVO mbrInfoPVO)
    {
        return mbrInfoMapper.updateMbrInfo(mbrInfoPVO);
    }

    @Override
    public int saveMbrInfo(MbrInfoPVO mbrInfoPVO)
    {
        return mbrInfoMapper.saveMbrInfo(mbrInfoPVO);
    }

    @Override
    public int deleteMbrInfo(MbrInfoDVO mbrInfoDVO)
    {
        return mbrInfoMapper.deleteMbrInfo(mbrInfoDVO);
    }
}

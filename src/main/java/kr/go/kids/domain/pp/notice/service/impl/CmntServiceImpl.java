package kr.go.kids.domain.pp.notice.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.pp.notice.mapper.CmntMapper;
import kr.go.kids.domain.pp.notice.service.CmntService;
import kr.go.kids.domain.pp.notice.vo.CmntDVO;
import kr.go.kids.domain.pp.notice.vo.CmntPVO;
import kr.go.kids.domain.pp.notice.vo.CmntRVO;

@Service
public class CmntServiceImpl implements CmntService
{
    @Autowired
    private CmntMapper cmntMapper;

    @Override
    public CmntRVO getCmnt(CmntPVO cmntPVO)
    {
        return cmntMapper.getCmnt(cmntPVO);
    }

    @Override
    public int insertCmnt(CmntPVO cmntPVO)
    {
        return cmntMapper.insertCmnt(cmntPVO);
    }

    @Override
    public int updateCmnt(CmntPVO cmntPVO)
    {
        return cmntMapper.updateCmnt(cmntPVO);
    }

    @Override
    public int saveCmnt(CmntPVO cmntPVO)
    {
        return cmntMapper.saveCmnt(cmntPVO);
    }

    @Override
    public int deleteCmnt(CmntDVO cmntDVO)
    {
        return cmntMapper.deleteCmnt(cmntDVO);
    }
}

package kr.go.kids.domain.pp.atch.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.pp.atch.mapper.AtchMapper;
import kr.go.kids.domain.pp.atch.service.AtchService;
import kr.go.kids.domain.pp.atch.vo.AtchDVO;
import kr.go.kids.domain.pp.atch.vo.AtchPVO;
import kr.go.kids.domain.pp.atch.vo.AtchRVO;

@Service
public class AtchServiceImpl implements AtchService
{
    @Autowired
    private AtchMapper atchMapper;

    @Override
    public AtchRVO getAtch(AtchPVO atchPVO)
    {
        return atchMapper.getAtch(atchPVO);
    }

    @Override
    public int insertAtch(AtchPVO atchPVO)
    {
        return atchMapper.insertAtch(atchPVO);
    }

    @Override
    public int updateAtch(AtchPVO atchPVO)
    {
        return atchMapper.updateAtch(atchPVO);
    }

    @Override
    public int saveAtch(AtchPVO atchPVO)
    {
        return atchMapper.saveAtch(atchPVO);
    }

    @Override
    public int deleteAtch(AtchDVO atchDVO)
    {
        return atchMapper.deleteAtch(atchDVO);
    }
}

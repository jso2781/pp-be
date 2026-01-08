package kr.go.kids.domain.pp.com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.pp.com.mapper.ComCdMapper;
import kr.go.kids.domain.pp.com.service.ComCdService;
import kr.go.kids.domain.pp.com.vo.ComCdDVO;
import kr.go.kids.domain.pp.com.vo.ComCdPVO;
import kr.go.kids.domain.pp.com.vo.ComCdRVO;

@Service
public class ComCdServiceImpl implements ComCdService
{
    @Autowired
    private ComCdMapper comCdMapper;

    @Override
    public ComCdRVO getComCd(ComCdPVO comCdPVO)
    {
        return comCdMapper.getComCd(comCdPVO);
    }

    @Override
    public int insertComCd(ComCdPVO comCdPVO)
    {
        return comCdMapper.insertComCd(comCdPVO);
    }

    @Override
    public int updateComCd(ComCdPVO comCdPVO)
    {
        return comCdMapper.updateComCd(comCdPVO);
    }

    @Override
    public int saveComCd(ComCdPVO comCdPVO)
    {
        return comCdMapper.saveComCd(comCdPVO);
    }

    @Override
    public int deleteComCd(ComCdDVO comCdDVO)
    {
        return comCdMapper.deleteComCd(comCdDVO);
    }
}

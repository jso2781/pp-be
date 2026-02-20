package kr.or.kids.domain.pp.auth.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.pp.auth.mapper.AuthrtMapper;
import kr.or.kids.domain.pp.auth.service.AuthrtService;
import kr.or.kids.domain.pp.auth.vo.AuthrtDVO;
import kr.or.kids.domain.pp.auth.vo.AuthrtPVO;
import kr.or.kids.domain.pp.auth.vo.AuthrtRVO;

@Service
public class AuthrtServiceImpl implements AuthrtService
{
    @Autowired
    private AuthrtMapper authrtMapper;

    @Override
    public AuthrtRVO getAuthrt(AuthrtPVO authrtPVO)
    {
        return authrtMapper.getAuthrt(authrtPVO);
    }

    @Override
    public int insertAuthrt(AuthrtPVO authrtPVO)
    {
        return authrtMapper.insertAuthrt(authrtPVO);
    }

    @Override
    public int updateAuthrt(AuthrtPVO authrtPVO)
    {
        return authrtMapper.updateAuthrt(authrtPVO);
    }

    @Override
    public int saveAuthrt(AuthrtPVO authrtPVO)
    {
        return authrtMapper.saveAuthrt(authrtPVO);
    }

    @Override
    public int deleteAuthrt(AuthrtDVO authrtDVO)
    {
        return authrtMapper.deleteAuthrt(authrtDVO);
    }
}

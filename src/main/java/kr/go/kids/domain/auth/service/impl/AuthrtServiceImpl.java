package kr.go.kids.domain.auth.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.auth.mapper.AuthrtMapper;
import kr.go.kids.domain.auth.service.AuthrtService;
import kr.go.kids.domain.auth.vo.AuthrtDVO;
import kr.go.kids.domain.auth.vo.AuthrtPVO;
import kr.go.kids.domain.auth.vo.AuthrtRVO;

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

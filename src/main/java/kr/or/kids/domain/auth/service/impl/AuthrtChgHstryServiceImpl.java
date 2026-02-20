package kr.or.kids.domain.auth.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.auth.mapper.AuthrtChgHstryMapper;
import kr.or.kids.domain.auth.service.AuthrtChgHstryService;
import kr.or.kids.domain.auth.vo.AuthrtChgHstryDVO;
import kr.or.kids.domain.auth.vo.AuthrtChgHstryPVO;
import kr.or.kids.domain.auth.vo.AuthrtChgHstryRVO;

@Service
public class AuthrtChgHstryServiceImpl implements AuthrtChgHstryService
{
    @Autowired
    private AuthrtChgHstryMapper authrtChgHstryMapper;

    @Override
    public AuthrtChgHstryRVO getAuthrtChgHstry(AuthrtChgHstryPVO authrtChgHstryPVO)
    {
        return authrtChgHstryMapper.getAuthrtChgHstry(authrtChgHstryPVO);
    }

    @Override
    public int insertAuthrtChgHstry(AuthrtChgHstryPVO authrtChgHstryPVO)
    {
        return authrtChgHstryMapper.insertAuthrtChgHstry(authrtChgHstryPVO);
    }

    @Override
    public int updateAuthrtChgHstry(AuthrtChgHstryPVO authrtChgHstryPVO)
    {
        return authrtChgHstryMapper.updateAuthrtChgHstry(authrtChgHstryPVO);
    }

    @Override
    public int saveAuthrtChgHstry(AuthrtChgHstryPVO authrtChgHstryPVO)
    {
        return authrtChgHstryMapper.saveAuthrtChgHstry(authrtChgHstryPVO);
    }

    @Override
    public int deleteAuthrtChgHstry(AuthrtChgHstryDVO authrtChgHstryDVO)
    {
        return authrtChgHstryMapper.deleteAuthrtChgHstry(authrtChgHstryDVO);
    }
}

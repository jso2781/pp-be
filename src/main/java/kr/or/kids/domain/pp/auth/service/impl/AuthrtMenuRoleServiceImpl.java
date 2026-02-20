package kr.or.kids.domain.pp.auth.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.pp.auth.mapper.AuthrtMenuRoleMapper;
import kr.or.kids.domain.pp.auth.service.AuthrtMenuRoleService;
import kr.or.kids.domain.pp.auth.vo.AuthrtMenuRoleDVO;
import kr.or.kids.domain.pp.auth.vo.AuthrtMenuRolePVO;
import kr.or.kids.domain.pp.auth.vo.AuthrtMenuRoleRVO;

@Service
public class AuthrtMenuRoleServiceImpl implements AuthrtMenuRoleService
{
    @Autowired
    private AuthrtMenuRoleMapper authrtMenuRoleMapper;

    @Override
    public AuthrtMenuRoleRVO getAuthrtMenuRole(AuthrtMenuRolePVO authrtMenuRolePVO)
    {
        return authrtMenuRoleMapper.getAuthrtMenuRole(authrtMenuRolePVO);
    }

    @Override
    public int insertAuthrtMenuRole(AuthrtMenuRolePVO authrtMenuRolePVO)
    {
        return authrtMenuRoleMapper.insertAuthrtMenuRole(authrtMenuRolePVO);
    }

    @Override
    public int updateAuthrtMenuRole(AuthrtMenuRolePVO authrtMenuRolePVO)
    {
        return authrtMenuRoleMapper.updateAuthrtMenuRole(authrtMenuRolePVO);
    }

    @Override
    public int saveAuthrtMenuRole(AuthrtMenuRolePVO authrtMenuRolePVO)
    {
        return authrtMenuRoleMapper.saveAuthrtMenuRole(authrtMenuRolePVO);
    }

    @Override
    public int deleteAuthrtMenuRole(AuthrtMenuRoleDVO authrtMenuRoleDVO)
    {
        return authrtMenuRoleMapper.deleteAuthrtMenuRole(authrtMenuRoleDVO);
    }
}

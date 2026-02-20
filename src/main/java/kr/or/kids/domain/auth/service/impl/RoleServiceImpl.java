package kr.or.kids.domain.auth.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.auth.mapper.RoleMapper;
import kr.or.kids.domain.auth.service.RoleService;
import kr.or.kids.domain.auth.vo.RoleDVO;
import kr.or.kids.domain.auth.vo.RolePVO;
import kr.or.kids.domain.auth.vo.RoleRVO;

@Service
public class RoleServiceImpl implements RoleService
{
    @Autowired
    private RoleMapper roleMapper;

    @Override
    public RoleRVO getRole(RolePVO rolePVO)
    {
        return roleMapper.getRole(rolePVO);
    }

    @Override
    public int insertRole(RolePVO rolePVO)
    {
        return roleMapper.insertRole(rolePVO);
    }

    @Override
    public int updateRole(RolePVO rolePVO)
    {
        return roleMapper.updateRole(rolePVO);
    }

    @Override
    public int saveRole(RolePVO rolePVO)
    {
        return roleMapper.saveRole(rolePVO);
    }

    @Override
    public int deleteRole(RoleDVO roleDVO)
    {
        return roleMapper.deleteRole(roleDVO);
    }
}

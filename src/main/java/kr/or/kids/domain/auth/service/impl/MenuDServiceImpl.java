package kr.or.kids.domain.auth.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.auth.mapper.MenuDMapper;
import kr.or.kids.domain.auth.service.MenuDService;
import kr.or.kids.domain.auth.vo.MenuDDVO;
import kr.or.kids.domain.auth.vo.MenuDPVO;
import kr.or.kids.domain.auth.vo.MenuDRVO;

@Service
public class MenuDServiceImpl implements MenuDService
{
    @Autowired
    private MenuDMapper menuDMapper;

    @Override
    public MenuDRVO getMenuD(MenuDPVO menuDPVO)
    {
        return menuDMapper.getMenuD(menuDPVO);
    }

    @Override
    public int insertMenuD(MenuDPVO menuDPVO)
    {
        return menuDMapper.insertMenuD(menuDPVO);
    }

    @Override
    public int updateMenuD(MenuDPVO menuDPVO)
    {
        return menuDMapper.updateMenuD(menuDPVO);
    }

    @Override
    public int saveMenuD(MenuDPVO menuDPVO)
    {
        return menuDMapper.saveMenuD(menuDPVO);
    }

    @Override
    public int deleteMenuD(MenuDDVO menuDDVO)
    {
        return menuDMapper.deleteMenuD(menuDDVO);
    }
}

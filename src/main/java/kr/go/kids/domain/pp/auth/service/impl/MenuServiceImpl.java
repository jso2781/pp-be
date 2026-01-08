package kr.go.kids.domain.pp.auth.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.pp.auth.mapper.MenuMapper;
import kr.go.kids.domain.pp.auth.service.MenuService;
import kr.go.kids.domain.pp.auth.vo.MenuDVO;
import kr.go.kids.domain.pp.auth.vo.MenuPVO;
import kr.go.kids.domain.pp.auth.vo.MenuRVO;

@Service
public class MenuServiceImpl implements MenuService
{
    @Autowired
    private MenuMapper menuMapper;

    public List<MenuRVO> selectMenuList(MenuPVO menuPVO)
    {
        return menuMapper.selectMenuList(menuPVO);
    }

    @Override
    public MenuRVO getMenu(MenuPVO menuPVO)
    {
        return menuMapper.getMenu(menuPVO);
    }

    @Override
    public int insertMenu(MenuPVO menuPVO)
    {
        return menuMapper.insertMenu(menuPVO);
    }

    @Override
    public int updateMenu(MenuPVO menuPVO)
    {
        return menuMapper.updateMenu(menuPVO);
    }

    @Override
    public int saveMenu(MenuPVO menuPVO)
    {
        return menuMapper.saveMenu(menuPVO);
    }

    @Override
    public int deleteMenu(MenuDVO menuDVO)
    {
        return menuMapper.deleteMenu(menuDVO);
    }
}

package kr.go.kids.domain.pp.auth.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.pp.auth.mapper.MenuMapper;
import kr.go.kids.domain.pp.auth.service.MenuService;
import kr.go.kids.domain.pp.auth.vo.MenuDVO;
import kr.go.kids.domain.pp.auth.vo.MenuPVO;
import kr.go.kids.domain.pp.auth.vo.MenuRVO;
import kr.go.kids.domain.pp.test.service.impl.UserServiceImpl;
import kr.go.kids.global.config.util.MessageContextHolder;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MenuServiceImpl implements MenuService
{
    @Autowired
    private MenuMapper menuMapper;

    public ApiPrnDto selectMenuList(MenuPVO menuPVO)
    {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<String, Object>();
        try {
//            throw new Exception("MenuServiceImpl selectMenuList is TEST Biz Error ");
            List<MenuRVO> menuList = menuMapper.selectMenuList(menuPVO);

            data.put("list", menuList);

        }catch(Exception e){
            log.error("메뉴 목록 조회 실패", e);
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg(MessageContextHolder.getMessage("api.error.500"));
//            result.setMsg("사용자 목록 조회 중 오류가 발생했습니다.");
        }

        result.setData(data);
        return result;
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

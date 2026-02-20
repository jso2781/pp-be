package kr.or.kids.domain.auth.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.or.kids.domain.auth.service.MenuService;
import kr.or.kids.domain.auth.vo.MenuDVO;
import kr.or.kids.domain.auth.vo.MenuPVO;
import kr.or.kids.domain.auth.vo.MenuRVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

@Tag(name = "MenuController", description = "대국민포털_메뉴기본 관리")
@RestController
@RequestMapping(value="/api/auth")
public class MenuController
{
    @Autowired
    private MenuService menuService;

    @Operation(summary = "대국민포털_메뉴 목록 조회", description = "대국민포털_메뉴 목록 조회한다.")
    @PostMapping(value="/selectMenuList")
    @ResponseBody
    public ResponseEntity<ApiPrnDto> selectMenuList(@RequestBody MenuPVO menuPVO)
    {
        if("ko".equals(menuPVO.getLangSeCd())){
            menuPVO.setLangSeCd("KOR");
        }else if("en".equals(menuPVO.getLangSeCd())){
            menuPVO.setLangSeCd("ENG");
        }

        ApiPrnDto apiPrnDto = menuService.selectMenuList(menuPVO);

        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    @Operation(summary = "대국민포털_메뉴 정보 조회", description = "대국민포털_메뉴 정보 조회한다.")
    @PostMapping(value="/getMenu")
    @ResponseBody
    public ResponseEntity<MenuRVO> getMenu(@RequestBody MenuPVO menuPVO)
    {
        MenuRVO menu = menuService.getMenu(menuPVO);

        return ResponseEntity.ok(menu);
    }

    @Operation(summary = "대국민포털_메뉴기본 입력", description = "대국민포털_메뉴기본 입력한다.")
    @PostMapping(value="/insertMenu")
    @ResponseBody
    public Map<String,Object> insertMenu(@RequestBody List<MenuPVO> menuList)
    {
        int menuListCount = menuList.size();

        int insertCnt = 0;
        MenuPVO menu = null;

        for(int i=0;i<menuListCount;i++)
        {
            menu = menuList.get(i);

            menuService.insertMenu(menu);
            insertCnt++;

            menu = null;
        }

//        List<MenuRVO> selectedMenuList = menuService.selectMenuList(menu);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("menuList", selectedMenuList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_메뉴기본 수정", description = "대국민포털_메뉴기본 수정한다.")
    @PostMapping(value="/updateMenu")
    @ResponseBody
    public Map<String,Object> updateMenu(@RequestBody List<MenuPVO> menuList)
    {
        int menuListCount = menuList.size();

        int updateCnt = 0;
        MenuPVO menu = null;

        for(int i=0;i<menuListCount;i++)
        {
            menu = menuList.get(i);

            menuService.updateMenu(menu);
            updateCnt++;

            menu = null;
        }

//        List<MenuRVO> selectedMenuList = menuService.selectMenuList(menu);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("menuList", selectedMenuList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_메뉴기본 저장", description = "대국민포털_메뉴기본 저장한다.")
    @PostMapping(value="/saveMenu")
    @ResponseBody
    public Map<String,Object> saveMenu(@RequestBody List<MenuPVO> menuList)
    {
        int menuListCount = menuList.size();

        int saveCnt = 0;
        MenuPVO menu = null;

        for(int i=0;i<menuListCount;i++)
        {
            menu = menuList.get(i);

            menuService.saveMenu(menu);
            saveCnt++;

            menu = null;
        }

//        List<MenuRVO> selectedMenuList = menuService.selectMenuList(menu);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("menuList", selectedMenuList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_메뉴기본 삭제", description = "대국민포털_메뉴기본 삭제한다.")
    @PostMapping(value="/deleteMenu")
    @ResponseBody
    public Map<String,Object> deleteMenu(@RequestBody MenuDVO menuDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = menuService.deleteMenu(menuDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

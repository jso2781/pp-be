package kr.go.kids.domain.auth.controller;

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
import kr.go.kids.domain.auth.service.MenuDService;
import kr.go.kids.domain.auth.vo.MenuDDVO;
import kr.go.kids.domain.auth.vo.MenuDPVO;
import kr.go.kids.domain.auth.vo.MenuDRVO;

@Tag(name = "MenuDController", description = "대국민포털_메뉴상세 관리")
@RestController
@RequestMapping(value="/api/auth")
public class MenuDController
{
    @Autowired
    private MenuDService menuDService;

    @Operation(summary = "대국민포털_메뉴상세 조회", description = "대국민포털_메뉴상세 조회한다.")
    @PostMapping(value="/getMenuD")
    @ResponseBody
    public ResponseEntity<MenuDRVO> getMenuD(@RequestBody MenuDPVO menuDPVO)
    {
        MenuDRVO menuD = menuDService.getMenuD(menuDPVO);

        return ResponseEntity.ok(menuD);
    }

    @Operation(summary = "대국민포털_메뉴상세 입력", description = "대국민포털_메뉴상세 입력한다.")
    @PostMapping(value="/insertMenuD")
    @ResponseBody
    public Map<String,Object> insertMenuD(@RequestBody List<MenuDPVO> menuDList)
    {
        int menuDListCount = menuDList.size();

        int insertCnt = 0;
        MenuDPVO menuD = null;

        for(int i=0;i<menuDListCount;i++)
        {
            menuD = menuDList.get(i);

            menuDService.insertMenuD(menuD);
            insertCnt++;

            menuD = null;
        }

//        List<MenuDRVO> selectedMenuDList = menuDService.selectMenuDList(menuD);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("menuDList", selectedMenuDList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_메뉴상세 수정", description = "대국민포털_메뉴상세 수정한다.")
    @PostMapping(value="/updateMenuD")
    @ResponseBody
    public Map<String,Object> updateMenuD(@RequestBody List<MenuDPVO> menuDList)
    {
        int menuDListCount = menuDList.size();

        int updateCnt = 0;
        MenuDPVO menuD = null;

        for(int i=0;i<menuDListCount;i++)
        {
            menuD = menuDList.get(i);

            menuDService.updateMenuD(menuD);
            updateCnt++;

            menuD = null;
        }

//        List<MenuDRVO> selectedMenuDList = menuDService.selectMenuDList(menuD);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("menuDList", selectedMenuDList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_메뉴상세 저장", description = "대국민포털_메뉴상세 저장한다.")
    @PostMapping(value="/saveMenuD")
    @ResponseBody
    public Map<String,Object> saveMenuD(@RequestBody List<MenuDPVO> menuDList)
    {
        int menuDListCount = menuDList.size();

        int saveCnt = 0;
        MenuDPVO menuD = null;

        for(int i=0;i<menuDListCount;i++)
        {
            menuD = menuDList.get(i);

            menuDService.saveMenuD(menuD);
            saveCnt++;

            menuD = null;
        }

//        List<MenuDRVO> selectedMenuDList = menuDService.selectMenuDList(menuD);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("menuDList", selectedMenuDList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_메뉴상세 삭제", description = "대국민포털_메뉴상세 삭제한다.")
    @PostMapping(value="/deleteMenuD")
    @ResponseBody
    public Map<String,Object> deleteMenuD(@RequestBody MenuDDVO menuDDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = menuDService.deleteMenuD(menuDDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

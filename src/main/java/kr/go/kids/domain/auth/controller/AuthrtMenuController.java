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
import kr.go.kids.domain.auth.service.AuthrtMenuService;
import kr.go.kids.domain.auth.vo.AuthrtMenuDVO;
import kr.go.kids.domain.auth.vo.AuthrtMenuPVO;
import kr.go.kids.domain.auth.vo.AuthrtMenuRVO;

@Tag(name = "AuthrtMenuController", description = "대국민포털_권한메뉴기본 관리")
@RestController
@RequestMapping(value="/api/auth")
public class AuthrtMenuController
{
    @Autowired
    private AuthrtMenuService authrtMenuService;

    @Operation(summary = "대국민포털_권한메뉴기본 조회", description = "대국민포털_권한메뉴기본 조회한다.")
    @PostMapping(value="/getAuthrtMenu")
    @ResponseBody
    public ResponseEntity<AuthrtMenuRVO> getAuthrtMenu(@RequestBody AuthrtMenuPVO authrtMenuPVO)
    {
        AuthrtMenuRVO authrtMenu = authrtMenuService.getAuthrtMenu(authrtMenuPVO);

        return ResponseEntity.ok(authrtMenu);
    }

    @Operation(summary = "대국민포털_권한메뉴기본 입력", description = "대국민포털_권한메뉴기본 입력한다.")
    @PostMapping(value="/insertAuthrtMenu")
    @ResponseBody
    public Map<String,Object> insertAuthrtMenu(@RequestBody List<AuthrtMenuPVO> authrtMenuList)
    {
        int authrtMenuListCount = authrtMenuList.size();

        int insertCnt = 0;
        AuthrtMenuPVO authrtMenu = null;

        for(int i=0;i<authrtMenuListCount;i++)
        {
            authrtMenu = authrtMenuList.get(i);

            authrtMenuService.insertAuthrtMenu(authrtMenu);
            insertCnt++;

            authrtMenu = null;
        }

//        List<AuthrtMenuRVO> selectedAuthrtMenuList = authrtMenuService.selectAuthrtMenuList(authrtMenu);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("authrtMenuList", selectedAuthrtMenuList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_권한메뉴기본 수정", description = "대국민포털_권한메뉴기본 수정한다.")
    @PostMapping(value="/updateAuthrtMenu")
    @ResponseBody
    public Map<String,Object> updateAuthrtMenu(@RequestBody List<AuthrtMenuPVO> authrtMenuList)
    {
        int authrtMenuListCount = authrtMenuList.size();

        int updateCnt = 0;
        AuthrtMenuPVO authrtMenu = null;

        for(int i=0;i<authrtMenuListCount;i++)
        {
            authrtMenu = authrtMenuList.get(i);

            authrtMenuService.updateAuthrtMenu(authrtMenu);
            updateCnt++;

            authrtMenu = null;
        }

//        List<AuthrtMenuRVO> selectedAuthrtMenuList = authrtMenuService.selectAuthrtMenuList(authrtMenu);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("authrtMenuList", selectedAuthrtMenuList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_권한메뉴기본 저장", description = "대국민포털_권한메뉴기본 저장한다.")
    @PostMapping(value="/saveAuthrtMenu")
    @ResponseBody
    public Map<String,Object> saveAuthrtMenu(@RequestBody List<AuthrtMenuPVO> authrtMenuList)
    {
        int authrtMenuListCount = authrtMenuList.size();

        int saveCnt = 0;
        AuthrtMenuPVO authrtMenu = null;

        for(int i=0;i<authrtMenuListCount;i++)
        {
            authrtMenu = authrtMenuList.get(i);

            authrtMenuService.saveAuthrtMenu(authrtMenu);
            saveCnt++;

            authrtMenu = null;
        }

//        List<AuthrtMenuRVO> selectedAuthrtMenuList = authrtMenuService.selectAuthrtMenuList(authrtMenu);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("authrtMenuList", selectedAuthrtMenuList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_권한메뉴기본 삭제", description = "대국민포털_권한메뉴기본 삭제한다.")
    @PostMapping(value="/deleteAuthrtMenu")
    @ResponseBody
    public Map<String,Object> deleteAuthrtMenu(@RequestBody AuthrtMenuDVO authrtMenuDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = authrtMenuService.deleteAuthrtMenu(authrtMenuDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

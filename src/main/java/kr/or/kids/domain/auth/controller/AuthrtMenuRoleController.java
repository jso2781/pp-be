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
import kr.or.kids.domain.auth.service.AuthrtMenuRoleService;
import kr.or.kids.domain.auth.vo.AuthrtMenuRoleDVO;
import kr.or.kids.domain.auth.vo.AuthrtMenuRolePVO;
import kr.or.kids.domain.auth.vo.AuthrtMenuRoleRVO;

@Tag(name = "AuthrtMenuRoleController", description = "대국민포털_권한메뉴롤기본 관리")
@RestController
@RequestMapping(value="/api/auth")
public class AuthrtMenuRoleController
{
    @Autowired
    private AuthrtMenuRoleService authrtMenuRoleService;

    @Operation(summary = "대국민포털_권한메뉴롤기본 조회", description = "대국민포털_권한메뉴롤기본 조회한다.")
    @PostMapping(value="/getAuthrtMenuRole")
    @ResponseBody
    public ResponseEntity<AuthrtMenuRoleRVO> getAuthrtMenuRole(@RequestBody AuthrtMenuRolePVO authrtMenuRolePVO)
    {
        AuthrtMenuRoleRVO authrtMenuRole = authrtMenuRoleService.getAuthrtMenuRole(authrtMenuRolePVO);

        return ResponseEntity.ok(authrtMenuRole);
    }

    @Operation(summary = "대국민포털_권한메뉴롤기본 입력", description = "대국민포털_권한메뉴롤기본 입력한다.")
    @PostMapping(value="/insertAuthrtMenuRole")
    @ResponseBody
    public Map<String,Object> insertAuthrtMenuRole(@RequestBody List<AuthrtMenuRolePVO> authrtMenuRoleList)
    {
        int authrtMenuRoleListCount = authrtMenuRoleList.size();

        int insertCnt = 0;
        AuthrtMenuRolePVO authrtMenuRole = null;

        for(int i=0;i<authrtMenuRoleListCount;i++)
        {
            authrtMenuRole = authrtMenuRoleList.get(i);

            authrtMenuRoleService.insertAuthrtMenuRole(authrtMenuRole);
            insertCnt++;

            authrtMenuRole = null;
        }

//        List<AuthrtMenuRoleRVO> selectedAuthrtMenuRoleList = authrtMenuRoleService.selectAuthrtMenuRoleList(authrtMenuRole);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("authrtMenuRoleList", selectedAuthrtMenuRoleList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_권한메뉴롤기본 수정", description = "대국민포털_권한메뉴롤기본 수정한다.")
    @PostMapping(value="/updateAuthrtMenuRole")
    @ResponseBody
    public Map<String,Object> updateAuthrtMenuRole(@RequestBody List<AuthrtMenuRolePVO> authrtMenuRoleList)
    {
        int authrtMenuRoleListCount = authrtMenuRoleList.size();

        int updateCnt = 0;
        AuthrtMenuRolePVO authrtMenuRole = null;

        for(int i=0;i<authrtMenuRoleListCount;i++)
        {
            authrtMenuRole = authrtMenuRoleList.get(i);

            authrtMenuRoleService.updateAuthrtMenuRole(authrtMenuRole);
            updateCnt++;

            authrtMenuRole = null;
        }

//        List<AuthrtMenuRoleRVO> selectedAuthrtMenuRoleList = authrtMenuRoleService.selectAuthrtMenuRoleList(authrtMenuRole);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("authrtMenuRoleList", selectedAuthrtMenuRoleList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_권한메뉴롤기본 저장", description = "대국민포털_권한메뉴롤기본 저장한다.")
    @PostMapping(value="/saveAuthrtMenuRole")
    @ResponseBody
    public Map<String,Object> saveAuthrtMenuRole(@RequestBody List<AuthrtMenuRolePVO> authrtMenuRoleList)
    {
        int authrtMenuRoleListCount = authrtMenuRoleList.size();

        int saveCnt = 0;
        AuthrtMenuRolePVO authrtMenuRole = null;

        for(int i=0;i<authrtMenuRoleListCount;i++)
        {
            authrtMenuRole = authrtMenuRoleList.get(i);

            authrtMenuRoleService.saveAuthrtMenuRole(authrtMenuRole);
            saveCnt++;

            authrtMenuRole = null;
        }

//        List<AuthrtMenuRoleRVO> selectedAuthrtMenuRoleList = authrtMenuRoleService.selectAuthrtMenuRoleList(authrtMenuRole);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("authrtMenuRoleList", selectedAuthrtMenuRoleList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_권한메뉴롤기본 삭제", description = "대국민포털_권한메뉴롤기본 삭제한다.")
    @PostMapping(value="/deleteAuthrtMenuRole")
    @ResponseBody
    public Map<String,Object> deleteAuthrtMenuRole(@RequestBody AuthrtMenuRoleDVO authrtMenuRoleDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = authrtMenuRoleService.deleteAuthrtMenuRole(authrtMenuRoleDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

package kr.or.kids.domain.pp.auth.controller;

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
import kr.or.kids.domain.pp.auth.service.RoleService;
import kr.or.kids.domain.pp.auth.vo.RoleDVO;
import kr.or.kids.domain.pp.auth.vo.RolePVO;
import kr.or.kids.domain.pp.auth.vo.RoleRVO;

@Tag(name = "RoleController", description = "대국민포털_역할기본 관리")
@RestController
@RequestMapping(value="/api/auth")
public class RoleController
{
    @Autowired
    private RoleService roleService;

    @Operation(summary = "대국민포털_역할기본 조회", description = "대국민포털_역할기본 조회한다.")
    @PostMapping(value="/getRole")
    @ResponseBody
    public ResponseEntity<RoleRVO> getRole(@RequestBody RolePVO rolePVO)
    {
        RoleRVO role = roleService.getRole(rolePVO);

        return ResponseEntity.ok(role);
    }

    @Operation(summary = "대국민포털_역할기본 입력", description = "대국민포털_역할기본 입력한다.")
    @PostMapping(value="/insertRole")
    @ResponseBody
    public Map<String,Object> insertRole(@RequestBody List<RolePVO> roleList)
    {
        int roleListCount = roleList.size();

        int insertCnt = 0;
        RolePVO role = null;

        for(int i=0;i<roleListCount;i++)
        {
            role = roleList.get(i);

            roleService.insertRole(role);
            insertCnt++;

            role = null;
        }

//        List<RoleRVO> selectedRoleList = roleService.selectRoleList(role);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("roleList", selectedRoleList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_역할기본 수정", description = "대국민포털_역할기본 수정한다.")
    @PostMapping(value="/updateRole")
    @ResponseBody
    public Map<String,Object> updateRole(@RequestBody List<RolePVO> roleList)
    {
        int roleListCount = roleList.size();

        int updateCnt = 0;
        RolePVO role = null;

        for(int i=0;i<roleListCount;i++)
        {
            role = roleList.get(i);

            roleService.updateRole(role);
            updateCnt++;

            role = null;
        }

//        List<RoleRVO> selectedRoleList = roleService.selectRoleList(role);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("roleList", selectedRoleList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_역할기본 저장", description = "대국민포털_역할기본 저장한다.")
    @PostMapping(value="/saveRole")
    @ResponseBody
    public Map<String,Object> saveRole(@RequestBody List<RolePVO> roleList)
    {
        int roleListCount = roleList.size();

        int saveCnt = 0;
        RolePVO role = null;

        for(int i=0;i<roleListCount;i++)
        {
            role = roleList.get(i);

            roleService.saveRole(role);
            saveCnt++;

            role = null;
        }

//        List<RoleRVO> selectedRoleList = roleService.selectRoleList(role);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("roleList", selectedRoleList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_역할기본 삭제", description = "대국민포털_역할기본 삭제한다.")
    @PostMapping(value="/deleteRole")
    @ResponseBody
    public Map<String,Object> deleteRole(@RequestBody RoleDVO roleDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = roleService.deleteRole(roleDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

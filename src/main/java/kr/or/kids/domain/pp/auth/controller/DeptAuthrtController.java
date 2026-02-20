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
import kr.or.kids.domain.pp.auth.service.DeptAuthrtService;
import kr.or.kids.domain.pp.auth.vo.DeptAuthrtDVO;
import kr.or.kids.domain.pp.auth.vo.DeptAuthrtPVO;
import kr.or.kids.domain.pp.auth.vo.DeptAuthrtRVO;

@Tag(name = "DeptAuthrtController", description = "대국민포털_부서권한기본 관리")
@RestController
@RequestMapping(value="/api/auth")
public class DeptAuthrtController
{
    @Autowired
    private DeptAuthrtService deptAuthrtService;

    @Operation(summary = "대국민포털_부서권한기본 조회", description = "대국민포털_부서권한기본 조회한다.")
    @PostMapping(value="/getDeptAuthrt")
    @ResponseBody
    public ResponseEntity<DeptAuthrtRVO> getDeptAuthrt(@RequestBody DeptAuthrtPVO deptAuthrtPVO)
    {
        DeptAuthrtRVO deptAuthrt = deptAuthrtService.getDeptAuthrt(deptAuthrtPVO);

        return ResponseEntity.ok(deptAuthrt);
    }

    @Operation(summary = "대국민포털_부서권한기본 입력", description = "대국민포털_부서권한기본 입력한다.")
    @PostMapping(value="/insertDeptAuthrt")
    @ResponseBody
    public Map<String,Object> insertDeptAuthrt(@RequestBody List<DeptAuthrtPVO> deptAuthrtList)
    {
        int deptAuthrtListCount = deptAuthrtList.size();

        int insertCnt = 0;
        DeptAuthrtPVO deptAuthrt = null;

        for(int i=0;i<deptAuthrtListCount;i++)
        {
            deptAuthrt = deptAuthrtList.get(i);

            deptAuthrtService.insertDeptAuthrt(deptAuthrt);
            insertCnt++;

            deptAuthrt = null;
        }

//        List<DeptAuthrtRVO> selectedDeptAuthrtList = deptAuthrtService.selectDeptAuthrtList(deptAuthrt);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("deptAuthrtList", selectedDeptAuthrtList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_부서권한기본 수정", description = "대국민포털_부서권한기본 수정한다.")
    @PostMapping(value="/updateDeptAuthrt")
    @ResponseBody
    public Map<String,Object> updateDeptAuthrt(@RequestBody List<DeptAuthrtPVO> deptAuthrtList)
    {
        int deptAuthrtListCount = deptAuthrtList.size();

        int updateCnt = 0;
        DeptAuthrtPVO deptAuthrt = null;

        for(int i=0;i<deptAuthrtListCount;i++)
        {
            deptAuthrt = deptAuthrtList.get(i);

            deptAuthrtService.updateDeptAuthrt(deptAuthrt);
            updateCnt++;

            deptAuthrt = null;
        }

//        List<DeptAuthrtRVO> selectedDeptAuthrtList = deptAuthrtService.selectDeptAuthrtList(deptAuthrt);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("deptAuthrtList", selectedDeptAuthrtList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_부서권한기본 저장", description = "대국민포털_부서권한기본 저장한다.")
    @PostMapping(value="/saveDeptAuthrt")
    @ResponseBody
    public Map<String,Object> saveDeptAuthrt(@RequestBody List<DeptAuthrtPVO> deptAuthrtList)
    {
        int deptAuthrtListCount = deptAuthrtList.size();

        int saveCnt = 0;
        DeptAuthrtPVO deptAuthrt = null;

        for(int i=0;i<deptAuthrtListCount;i++)
        {
            deptAuthrt = deptAuthrtList.get(i);

            deptAuthrtService.saveDeptAuthrt(deptAuthrt);
            saveCnt++;

            deptAuthrt = null;
        }

//        List<DeptAuthrtRVO> selectedDeptAuthrtList = deptAuthrtService.selectDeptAuthrtList(deptAuthrt);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("deptAuthrtList", selectedDeptAuthrtList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_부서권한기본 삭제", description = "대국민포털_부서권한기본 삭제한다.")
    @PostMapping(value="/deleteDeptAuthrt")
    @ResponseBody
    public Map<String,Object> deleteDeptAuthrt(@RequestBody DeptAuthrtDVO deptAuthrtDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = deptAuthrtService.deleteDeptAuthrt(deptAuthrtDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

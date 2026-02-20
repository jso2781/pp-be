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
import kr.or.kids.domain.pp.auth.service.ExprtAuthrtService;
import kr.or.kids.domain.pp.auth.vo.ExprtAuthrtDVO;
import kr.or.kids.domain.pp.auth.vo.ExprtAuthrtPVO;
import kr.or.kids.domain.pp.auth.vo.ExprtAuthrtRVO;

@Tag(name = "ExprtAuthrtController", description = "대국민포털_전문가권한기본 관리")
@RestController
@RequestMapping(value="/api/auth")
public class ExprtAuthrtController
{
    @Autowired
    private ExprtAuthrtService exprtAuthrtService;

    @Operation(summary = "대국민포털_전문가권한기본 조회", description = "대국민포털_전문가권한기본 조회한다.")
    @PostMapping(value="/getExprtAuthrt")
    @ResponseBody
    public ResponseEntity<ExprtAuthrtRVO> getExprtAuthrt(@RequestBody ExprtAuthrtPVO exprtAuthrtPVO)
    {
        ExprtAuthrtRVO exprtAuthrt = exprtAuthrtService.getExprtAuthrt(exprtAuthrtPVO);

        return ResponseEntity.ok(exprtAuthrt);
    }

    @Operation(summary = "대국민포털_전문가권한기본 입력", description = "대국민포털_전문가권한기본 입력한다.")
    @PostMapping(value="/insertExprtAuthrt")
    @ResponseBody
    public Map<String,Object> insertExprtAuthrt(@RequestBody List<ExprtAuthrtPVO> exprtAuthrtList)
    {
        int exprtAuthrtListCount = exprtAuthrtList.size();

        int insertCnt = 0;
        ExprtAuthrtPVO exprtAuthrt = null;

        for(int i=0;i<exprtAuthrtListCount;i++)
        {
            exprtAuthrt = exprtAuthrtList.get(i);

            exprtAuthrtService.insertExprtAuthrt(exprtAuthrt);
            insertCnt++;

            exprtAuthrt = null;
        }

//        List<ExprtAuthrtRVO> selectedExprtAuthrtList = exprtAuthrtService.selectExprtAuthrtList(exprtAuthrt);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("exprtAuthrtList", selectedExprtAuthrtList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_전문가권한기본 수정", description = "대국민포털_전문가권한기본 수정한다.")
    @PostMapping(value="/updateExprtAuthrt")
    @ResponseBody
    public Map<String,Object> updateExprtAuthrt(@RequestBody List<ExprtAuthrtPVO> exprtAuthrtList)
    {
        int exprtAuthrtListCount = exprtAuthrtList.size();

        int updateCnt = 0;
        ExprtAuthrtPVO exprtAuthrt = null;

        for(int i=0;i<exprtAuthrtListCount;i++)
        {
            exprtAuthrt = exprtAuthrtList.get(i);

            exprtAuthrtService.updateExprtAuthrt(exprtAuthrt);
            updateCnt++;

            exprtAuthrt = null;
        }

//        List<ExprtAuthrtRVO> selectedExprtAuthrtList = exprtAuthrtService.selectExprtAuthrtList(exprtAuthrt);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("exprtAuthrtList", selectedExprtAuthrtList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_전문가권한기본 저장", description = "대국민포털_전문가권한기본 저장한다.")
    @PostMapping(value="/saveExprtAuthrt")
    @ResponseBody
    public Map<String,Object> saveExprtAuthrt(@RequestBody List<ExprtAuthrtPVO> exprtAuthrtList)
    {
        int exprtAuthrtListCount = exprtAuthrtList.size();

        int saveCnt = 0;
        ExprtAuthrtPVO exprtAuthrt = null;

        for(int i=0;i<exprtAuthrtListCount;i++)
        {
            exprtAuthrt = exprtAuthrtList.get(i);

            exprtAuthrtService.saveExprtAuthrt(exprtAuthrt);
            saveCnt++;

            exprtAuthrt = null;
        }

//        List<ExprtAuthrtRVO> selectedExprtAuthrtList = exprtAuthrtService.selectExprtAuthrtList(exprtAuthrt);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("exprtAuthrtList", selectedExprtAuthrtList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_전문가권한기본 삭제", description = "대국민포털_전문가권한기본 삭제한다.")
    @PostMapping(value="/deleteExprtAuthrt")
    @ResponseBody
    public Map<String,Object> deleteExprtAuthrt(@RequestBody ExprtAuthrtDVO exprtAuthrtDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = exprtAuthrtService.deleteExprtAuthrt(exprtAuthrtDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

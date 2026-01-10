package kr.go.kids.domain.exprt.controller;

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
import kr.go.kids.domain.exprt.service.ExprtInfoService;
import kr.go.kids.domain.exprt.vo.ExprtInfoDVO;
import kr.go.kids.domain.exprt.vo.ExprtInfoPVO;
import kr.go.kids.domain.exprt.vo.ExprtInfoRVO;

@Tag(name = "ExprtInfoController", description = "대국민포털_전문가정보기본 관리")
@RestController
@RequestMapping(value="/api/exprt")
public class ExprtInfoController
{
    @Autowired
    private ExprtInfoService exprtInfoService;

    @Operation(summary = "대국민포털_전문가정보기본 조회", description = "대국민포털_전문가정보기본 조회한다.")
    @PostMapping(value="/getExprtInfo")
    @ResponseBody
    public ResponseEntity<ExprtInfoRVO> getExprtInfo(@RequestBody ExprtInfoPVO exprtInfoPVO)
    {
        ExprtInfoRVO exprtInfo = exprtInfoService.getExprtInfo(exprtInfoPVO);

        return ResponseEntity.ok(exprtInfo);
    }

    @Operation(summary = "대국민포털_전문가정보기본 입력", description = "대국민포털_전문가정보기본 입력한다.")
    @PostMapping(value="/insertExprtInfo")
    @ResponseBody
    public Map<String,Object> insertExprtInfo(@RequestBody List<ExprtInfoPVO> exprtInfoList)
    {
        int exprtInfoListCount = exprtInfoList.size();

        int insertCnt = 0;
        ExprtInfoPVO exprtInfo = null;

        for(int i=0;i<exprtInfoListCount;i++)
        {
            exprtInfo = exprtInfoList.get(i);

            exprtInfoService.insertExprtInfo(exprtInfo);
            insertCnt++;

            exprtInfo = null;
        }

//        List<ExprtInfoRVO> selectedExprtInfoList = exprtInfoService.selectExprtInfoList(exprtInfo);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("exprtInfoList", selectedExprtInfoList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_전문가정보기본 수정", description = "대국민포털_전문가정보기본 수정한다.")
    @PostMapping(value="/updateExprtInfo")
    @ResponseBody
    public Map<String,Object> updateExprtInfo(@RequestBody List<ExprtInfoPVO> exprtInfoList)
    {
        int exprtInfoListCount = exprtInfoList.size();

        int updateCnt = 0;
        ExprtInfoPVO exprtInfo = null;

        for(int i=0;i<exprtInfoListCount;i++)
        {
            exprtInfo = exprtInfoList.get(i);

            exprtInfoService.updateExprtInfo(exprtInfo);
            updateCnt++;

            exprtInfo = null;
        }

//        List<ExprtInfoRVO> selectedExprtInfoList = exprtInfoService.selectExprtInfoList(exprtInfo);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("exprtInfoList", selectedExprtInfoList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_전문가정보기본 저장", description = "대국민포털_전문가정보기본 저장한다.")
    @PostMapping(value="/saveExprtInfo")
    @ResponseBody
    public Map<String,Object> saveExprtInfo(@RequestBody List<ExprtInfoPVO> exprtInfoList)
    {
        int exprtInfoListCount = exprtInfoList.size();

        int saveCnt = 0;
        ExprtInfoPVO exprtInfo = null;

        for(int i=0;i<exprtInfoListCount;i++)
        {
            exprtInfo = exprtInfoList.get(i);

            exprtInfoService.saveExprtInfo(exprtInfo);
            saveCnt++;

            exprtInfo = null;
        }

//        List<ExprtInfoRVO> selectedExprtInfoList = exprtInfoService.selectExprtInfoList(exprtInfo);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("exprtInfoList", selectedExprtInfoList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_전문가정보기본 삭제", description = "대국민포털_전문가정보기본 삭제한다.")
    @PostMapping(value="/deleteExprtInfo")
    @ResponseBody
    public Map<String,Object> deleteExprtInfo(@RequestBody ExprtInfoDVO exprtInfoDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = exprtInfoService.deleteExprtInfo(exprtInfoDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

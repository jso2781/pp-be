package kr.or.kids.domain.dur.controller;

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
import kr.or.kids.domain.dur.service.DurCpctService;
import kr.or.kids.domain.dur.vo.DurCpctDVO;
import kr.or.kids.domain.dur.vo.DurCpctPVO;
import kr.or.kids.domain.dur.vo.DurCpctRVO;

@Tag(name = "DurCpctController", description = "대국민포털_DUR용량주의기본 관리")
@RestController
@RequestMapping(value="/api/dur")
public class DurCpctController
{
    @Autowired
    private DurCpctService durCpctService;

    @Operation(summary = "대국민포털_DUR용량주의기본 조회", description = "대국민포털_DUR용량주의기본 조회한다.")
    @PostMapping(value="/getDurCpct")
    @ResponseBody
    public ResponseEntity<DurCpctRVO> getDurCpct(@RequestBody DurCpctPVO durCpctPVO)
    {
        DurCpctRVO durCpct = durCpctService.getDurCpct(durCpctPVO);

        return ResponseEntity.ok(durCpct);
    }

    @Operation(summary = "대국민포털_DUR용량주의기본 입력", description = "대국민포털_DUR용량주의기본 입력한다.")
    @PostMapping(value="/insertDurCpct")
    @ResponseBody
    public Map<String,Object> insertDurCpct(@RequestBody List<DurCpctPVO> durCpctList)
    {
        int durCpctListCount = durCpctList.size();

        int insertCnt = 0;
        DurCpctPVO durCpct = null;

        for(int i=0;i<durCpctListCount;i++)
        {
            durCpct = durCpctList.get(i);

            durCpctService.insertDurCpct(durCpct);
            insertCnt++;

            durCpct = null;
        }

//        List<DurCpctRVO> selectedDurCpctList = durCpctService.selectDurCpctList(durCpct);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("durCpctList", selectedDurCpctList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR용량주의기본 수정", description = "대국민포털_DUR용량주의기본 수정한다.")
    @PostMapping(value="/updateDurCpct")
    @ResponseBody
    public Map<String,Object> updateDurCpct(@RequestBody List<DurCpctPVO> durCpctList)
    {
        int durCpctListCount = durCpctList.size();

        int updateCnt = 0;
        DurCpctPVO durCpct = null;

        for(int i=0;i<durCpctListCount;i++)
        {
            durCpct = durCpctList.get(i);

            durCpctService.updateDurCpct(durCpct);
            updateCnt++;

            durCpct = null;
        }

//        List<DurCpctRVO> selectedDurCpctList = durCpctService.selectDurCpctList(durCpct);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("durCpctList", selectedDurCpctList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR용량주의기본 저장", description = "대국민포털_DUR용량주의기본 저장한다.")
    @PostMapping(value="/saveDurCpct")
    @ResponseBody
    public Map<String,Object> saveDurCpct(@RequestBody List<DurCpctPVO> durCpctList)
    {
        int durCpctListCount = durCpctList.size();

        int saveCnt = 0;
        DurCpctPVO durCpct = null;

        for(int i=0;i<durCpctListCount;i++)
        {
            durCpct = durCpctList.get(i);

            durCpctService.saveDurCpct(durCpct);
            saveCnt++;

            durCpct = null;
        }

//        List<DurCpctRVO> selectedDurCpctList = durCpctService.selectDurCpctList(durCpct);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("durCpctList", selectedDurCpctList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR용량주의기본 삭제", description = "대국민포털_DUR용량주의기본 삭제한다.")
    @PostMapping(value="/deleteDurCpct")
    @ResponseBody
    public Map<String,Object> deleteDurCpct(@RequestBody DurCpctDVO durCpctDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = durCpctService.deleteDurCpct(durCpctDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

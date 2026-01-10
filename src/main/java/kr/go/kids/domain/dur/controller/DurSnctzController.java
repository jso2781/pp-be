package kr.go.kids.domain.dur.controller;

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
import kr.go.kids.domain.dur.service.DurSnctzService;
import kr.go.kids.domain.dur.vo.DurSnctzDVO;
import kr.go.kids.domain.dur.vo.DurSnctzPVO;
import kr.go.kids.domain.dur.vo.DurSnctzRVO;

@Tag(name = "DurSnctzController", description = "대국민포털_DUR노인주의기본 관리")
@RestController
@RequestMapping(value="/api/dur")
public class DurSnctzController
{
    @Autowired
    private DurSnctzService durSnctzService;

    @Operation(summary = "대국민포털_DUR노인주의기본 조회", description = "대국민포털_DUR노인주의기본 조회한다.")
    @PostMapping(value="/getDurSnctz")
    @ResponseBody
    public ResponseEntity<DurSnctzRVO> getDurSnctz(@RequestBody DurSnctzPVO durSnctzPVO)
    {
        DurSnctzRVO durSnctz = durSnctzService.getDurSnctz(durSnctzPVO);

        return ResponseEntity.ok(durSnctz);
    }

    @Operation(summary = "대국민포털_DUR노인주의기본 입력", description = "대국민포털_DUR노인주의기본 입력한다.")
    @PostMapping(value="/insertDurSnctz")
    @ResponseBody
    public Map<String,Object> insertDurSnctz(@RequestBody List<DurSnctzPVO> durSnctzList)
    {
        int durSnctzListCount = durSnctzList.size();

        int insertCnt = 0;
        DurSnctzPVO durSnctz = null;

        for(int i=0;i<durSnctzListCount;i++)
        {
            durSnctz = durSnctzList.get(i);

            durSnctzService.insertDurSnctz(durSnctz);
            insertCnt++;

            durSnctz = null;
        }

//        List<DurSnctzRVO> selectedDurSnctzList = durSnctzService.selectDurSnctzList(durSnctz);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("durSnctzList", selectedDurSnctzList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR노인주의기본 수정", description = "대국민포털_DUR노인주의기본 수정한다.")
    @PostMapping(value="/updateDurSnctz")
    @ResponseBody
    public Map<String,Object> updateDurSnctz(@RequestBody List<DurSnctzPVO> durSnctzList)
    {
        int durSnctzListCount = durSnctzList.size();

        int updateCnt = 0;
        DurSnctzPVO durSnctz = null;

        for(int i=0;i<durSnctzListCount;i++)
        {
            durSnctz = durSnctzList.get(i);

            durSnctzService.updateDurSnctz(durSnctz);
            updateCnt++;

            durSnctz = null;
        }

//        List<DurSnctzRVO> selectedDurSnctzList = durSnctzService.selectDurSnctzList(durSnctz);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("durSnctzList", selectedDurSnctzList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR노인주의기본 저장", description = "대국민포털_DUR노인주의기본 저장한다.")
    @PostMapping(value="/saveDurSnctz")
    @ResponseBody
    public Map<String,Object> saveDurSnctz(@RequestBody List<DurSnctzPVO> durSnctzList)
    {
        int durSnctzListCount = durSnctzList.size();

        int saveCnt = 0;
        DurSnctzPVO durSnctz = null;

        for(int i=0;i<durSnctzListCount;i++)
        {
            durSnctz = durSnctzList.get(i);

            durSnctzService.saveDurSnctz(durSnctz);
            saveCnt++;

            durSnctz = null;
        }

//        List<DurSnctzRVO> selectedDurSnctzList = durSnctzService.selectDurSnctzList(durSnctz);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("durSnctzList", selectedDurSnctzList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR노인주의기본 삭제", description = "대국민포털_DUR노인주의기본 삭제한다.")
    @PostMapping(value="/deleteDurSnctz")
    @ResponseBody
    public Map<String,Object> deleteDurSnctz(@RequestBody DurSnctzDVO durSnctzDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = durSnctzService.deleteDurSnctz(durSnctzDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

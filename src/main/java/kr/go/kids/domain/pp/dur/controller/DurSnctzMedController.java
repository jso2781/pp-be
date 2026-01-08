package kr.go.kids.domain.pp.dur.controller;

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
import kr.go.kids.domain.pp.dur.service.DurSnctzMedService;
import kr.go.kids.domain.pp.dur.vo.DurSnctzMedDVO;
import kr.go.kids.domain.pp.dur.vo.DurSnctzMedPVO;
import kr.go.kids.domain.pp.dur.vo.DurSnctzMedRVO;

@Tag(name = "DurSnctzMedController", description = "대국민포털_DUR노인주의해열진통소염제기본 관리")
@RestController
@RequestMapping(value="/api/dur")
public class DurSnctzMedController
{
    @Autowired
    private DurSnctzMedService durSnctzMedService;

    @Operation(summary = "대국민포털_DUR노인주의해열진통소염제기본 조회", description = "대국민포털_DUR노인주의해열진통소염제기본 조회한다.")
    @PostMapping(value="/getDurSnctzMed")
    @ResponseBody
    public ResponseEntity<DurSnctzMedRVO> getDurSnctzMed(@RequestBody DurSnctzMedPVO durSnctzMedPVO)
    {
        DurSnctzMedRVO durSnctzMed = durSnctzMedService.getDurSnctzMed(durSnctzMedPVO);

        return ResponseEntity.ok(durSnctzMed);
    }

    @Operation(summary = "대국민포털_DUR노인주의해열진통소염제기본 입력", description = "대국민포털_DUR노인주의해열진통소염제기본 입력한다.")
    @PostMapping(value="/insertDurSnctzMed")
    @ResponseBody
    public Map<String,Object> insertDurSnctzMed(@RequestBody List<DurSnctzMedPVO> durSnctzMedList)
    {
        int durSnctzMedListCount = durSnctzMedList.size();

        int insertCnt = 0;
        DurSnctzMedPVO durSnctzMed = null;

        for(int i=0;i<durSnctzMedListCount;i++)
        {
            durSnctzMed = durSnctzMedList.get(i);

            durSnctzMedService.insertDurSnctzMed(durSnctzMed);
            insertCnt++;

            durSnctzMed = null;
        }

//        List<DurSnctzMedRVO> selectedDurSnctzMedList = durSnctzMedService.selectDurSnctzMedList(durSnctzMed);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("durSnctzMedList", selectedDurSnctzMedList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR노인주의해열진통소염제기본 수정", description = "대국민포털_DUR노인주의해열진통소염제기본 수정한다.")
    @PostMapping(value="/updateDurSnctzMed")
    @ResponseBody
    public Map<String,Object> updateDurSnctzMed(@RequestBody List<DurSnctzMedPVO> durSnctzMedList)
    {
        int durSnctzMedListCount = durSnctzMedList.size();

        int updateCnt = 0;
        DurSnctzMedPVO durSnctzMed = null;

        for(int i=0;i<durSnctzMedListCount;i++)
        {
            durSnctzMed = durSnctzMedList.get(i);

            durSnctzMedService.updateDurSnctzMed(durSnctzMed);
            updateCnt++;

            durSnctzMed = null;
        }

//        List<DurSnctzMedRVO> selectedDurSnctzMedList = durSnctzMedService.selectDurSnctzMedList(durSnctzMed);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("durSnctzMedList", selectedDurSnctzMedList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR노인주의해열진통소염제기본 저장", description = "대국민포털_DUR노인주의해열진통소염제기본 저장한다.")
    @PostMapping(value="/saveDurSnctzMed")
    @ResponseBody
    public Map<String,Object> saveDurSnctzMed(@RequestBody List<DurSnctzMedPVO> durSnctzMedList)
    {
        int durSnctzMedListCount = durSnctzMedList.size();

        int saveCnt = 0;
        DurSnctzMedPVO durSnctzMed = null;

        for(int i=0;i<durSnctzMedListCount;i++)
        {
            durSnctzMed = durSnctzMedList.get(i);

            durSnctzMedService.saveDurSnctzMed(durSnctzMed);
            saveCnt++;

            durSnctzMed = null;
        }

//        List<DurSnctzMedRVO> selectedDurSnctzMedList = durSnctzMedService.selectDurSnctzMedList(durSnctzMed);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("durSnctzMedList", selectedDurSnctzMedList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR노인주의해열진통소염제기본 삭제", description = "대국민포털_DUR노인주의해열진통소염제기본 삭제한다.")
    @PostMapping(value="/deleteDurSnctzMed")
    @ResponseBody
    public Map<String,Object> deleteDurSnctzMed(@RequestBody DurSnctzMedDVO durSnctzMedDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = durSnctzMedService.deleteDurSnctzMed(durSnctzMedDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

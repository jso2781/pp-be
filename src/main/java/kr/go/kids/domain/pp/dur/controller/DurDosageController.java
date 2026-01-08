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
import kr.go.kids.domain.pp.dur.service.DurDosageService;
import kr.go.kids.domain.pp.dur.vo.DurDosageDVO;
import kr.go.kids.domain.pp.dur.vo.DurDosagePVO;
import kr.go.kids.domain.pp.dur.vo.DurDosageRVO;

@Tag(name = "DurDosageController", description = "대국민포털_DUR투여기간주의기본 관리")
@RestController
@RequestMapping(value="/api/dur")
public class DurDosageController
{
    @Autowired
    private DurDosageService durDosageService;

    @Operation(summary = "대국민포털_DUR투여기간주의기본 조회", description = "대국민포털_DUR투여기간주의기본 조회한다.")
    @PostMapping(value="/getDurDosage")
    @ResponseBody
    public ResponseEntity<DurDosageRVO> getDurDosage(@RequestBody DurDosagePVO durDosagePVO)
    {
        DurDosageRVO durDosage = durDosageService.getDurDosage(durDosagePVO);

        return ResponseEntity.ok(durDosage);
    }

    @Operation(summary = "대국민포털_DUR투여기간주의기본 입력", description = "대국민포털_DUR투여기간주의기본 입력한다.")
    @PostMapping(value="/insertDurDosage")
    @ResponseBody
    public Map<String,Object> insertDurDosage(@RequestBody List<DurDosagePVO> durDosageList)
    {
        int durDosageListCount = durDosageList.size();

        int insertCnt = 0;
        DurDosagePVO durDosage = null;

        for(int i=0;i<durDosageListCount;i++)
        {
            durDosage = durDosageList.get(i);

            durDosageService.insertDurDosage(durDosage);
            insertCnt++;

            durDosage = null;
        }

//        List<DurDosageRVO> selectedDurDosageList = durDosageService.selectDurDosageList(durDosage);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("durDosageList", selectedDurDosageList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR투여기간주의기본 수정", description = "대국민포털_DUR투여기간주의기본 수정한다.")
    @PostMapping(value="/updateDurDosage")
    @ResponseBody
    public Map<String,Object> updateDurDosage(@RequestBody List<DurDosagePVO> durDosageList)
    {
        int durDosageListCount = durDosageList.size();

        int updateCnt = 0;
        DurDosagePVO durDosage = null;

        for(int i=0;i<durDosageListCount;i++)
        {
            durDosage = durDosageList.get(i);

            durDosageService.updateDurDosage(durDosage);
            updateCnt++;

            durDosage = null;
        }

//        List<DurDosageRVO> selectedDurDosageList = durDosageService.selectDurDosageList(durDosage);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("durDosageList", selectedDurDosageList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR투여기간주의기본 저장", description = "대국민포털_DUR투여기간주의기본 저장한다.")
    @PostMapping(value="/saveDurDosage")
    @ResponseBody
    public Map<String,Object> saveDurDosage(@RequestBody List<DurDosagePVO> durDosageList)
    {
        int durDosageListCount = durDosageList.size();

        int saveCnt = 0;
        DurDosagePVO durDosage = null;

        for(int i=0;i<durDosageListCount;i++)
        {
            durDosage = durDosageList.get(i);

            durDosageService.saveDurDosage(durDosage);
            saveCnt++;

            durDosage = null;
        }

//        List<DurDosageRVO> selectedDurDosageList = durDosageService.selectDurDosageList(durDosage);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("durDosageList", selectedDurDosageList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR투여기간주의기본 삭제", description = "대국민포털_DUR투여기간주의기본 삭제한다.")
    @PostMapping(value="/deleteDurDosage")
    @ResponseBody
    public Map<String,Object> deleteDurDosage(@RequestBody DurDosageDVO durDosageDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = durDosageService.deleteDurDosage(durDosageDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

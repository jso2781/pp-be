package kr.or.kids.domain.pp.dur.controller;

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
import kr.or.kids.domain.pp.dur.service.DurNurswService;
import kr.or.kids.domain.pp.dur.vo.DurNurswDVO;
import kr.or.kids.domain.pp.dur.vo.DurNurswPVO;
import kr.or.kids.domain.pp.dur.vo.DurNurswRVO;

@Tag(name = "DurNurswController", description = "대국민포털_DUR수유부주의기본 관리")
@RestController
@RequestMapping(value="/api/dur")
public class DurNurswController
{
    @Autowired
    private DurNurswService durNurswService;

    @Operation(summary = "대국민포털_DUR수유부주의기본 조회", description = "대국민포털_DUR수유부주의기본 조회한다.")
    @PostMapping(value="/getDurNursw")
    @ResponseBody
    public ResponseEntity<DurNurswRVO> getDurNursw(@RequestBody DurNurswPVO durNurswPVO)
    {
        DurNurswRVO durNursw = durNurswService.getDurNursw(durNurswPVO);

        return ResponseEntity.ok(durNursw);
    }

    @Operation(summary = "대국민포털_DUR수유부주의기본 입력", description = "대국민포털_DUR수유부주의기본 입력한다.")
    @PostMapping(value="/insertDurNursw")
    @ResponseBody
    public Map<String,Object> insertDurNursw(@RequestBody List<DurNurswPVO> durNurswList)
    {
        int durNurswListCount = durNurswList.size();

        int insertCnt = 0;
        DurNurswPVO durNursw = null;

        for(int i=0;i<durNurswListCount;i++)
        {
            durNursw = durNurswList.get(i);

            durNurswService.insertDurNursw(durNursw);
            insertCnt++;

            durNursw = null;
        }

//        List<DurNurswRVO> selectedDurNurswList = durNurswService.selectDurNurswList(durNursw);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("durNurswList", selectedDurNurswList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR수유부주의기본 수정", description = "대국민포털_DUR수유부주의기본 수정한다.")
    @PostMapping(value="/updateDurNursw")
    @ResponseBody
    public Map<String,Object> updateDurNursw(@RequestBody List<DurNurswPVO> durNurswList)
    {
        int durNurswListCount = durNurswList.size();

        int updateCnt = 0;
        DurNurswPVO durNursw = null;

        for(int i=0;i<durNurswListCount;i++)
        {
            durNursw = durNurswList.get(i);

            durNurswService.updateDurNursw(durNursw);
            updateCnt++;

            durNursw = null;
        }

//        List<DurNurswRVO> selectedDurNurswList = durNurswService.selectDurNurswList(durNursw);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("durNurswList", selectedDurNurswList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR수유부주의기본 저장", description = "대국민포털_DUR수유부주의기본 저장한다.")
    @PostMapping(value="/saveDurNursw")
    @ResponseBody
    public Map<String,Object> saveDurNursw(@RequestBody List<DurNurswPVO> durNurswList)
    {
        int durNurswListCount = durNurswList.size();

        int saveCnt = 0;
        DurNurswPVO durNursw = null;

        for(int i=0;i<durNurswListCount;i++)
        {
            durNursw = durNurswList.get(i);

            durNurswService.saveDurNursw(durNursw);
            saveCnt++;

            durNursw = null;
        }

//        List<DurNurswRVO> selectedDurNurswList = durNurswService.selectDurNurswList(durNursw);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("durNurswList", selectedDurNurswList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR수유부주의기본 삭제", description = "대국민포털_DUR수유부주의기본 삭제한다.")
    @PostMapping(value="/deleteDurNursw")
    @ResponseBody
    public Map<String,Object> deleteDurNursw(@RequestBody DurNurswDVO durNurswDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = durNurswService.deleteDurNursw(durNurswDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

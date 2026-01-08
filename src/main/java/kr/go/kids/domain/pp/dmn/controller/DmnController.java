package kr.go.kids.domain.pp.dmn.controller;

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
import kr.go.kids.domain.pp.dmn.service.DmnService;
import kr.go.kids.domain.pp.dmn.vo.DmnDVO;
import kr.go.kids.domain.pp.dmn.vo.DmnPVO;
import kr.go.kids.domain.pp.dmn.vo.DmnRVO;

@Tag(name = "DmnController", description = "대국민포털_도메인기본 관리")
@RestController
@RequestMapping(value="/api/dmn")
public class DmnController
{
    @Autowired
    private DmnService dmnService;

    @Operation(summary = "대국민포털_도메인기본 조회", description = "대국민포털_도메인기본 조회한다.")
    @PostMapping(value="/getDmn")
    @ResponseBody
    public ResponseEntity<DmnRVO> getDmn(@RequestBody DmnPVO dmnPVO)
    {
        DmnRVO dmn = dmnService.getDmn(dmnPVO);

        return ResponseEntity.ok(dmn);
    }

    @Operation(summary = "대국민포털_도메인기본 입력", description = "대국민포털_도메인기본 입력한다.")
    @PostMapping(value="/insertDmn")
    @ResponseBody
    public Map<String,Object> insertDmn(@RequestBody List<DmnPVO> dmnList)
    {
        int dmnListCount = dmnList.size();

        int insertCnt = 0;
        DmnPVO dmn = null;

        for(int i=0;i<dmnListCount;i++)
        {
            dmn = dmnList.get(i);

            dmnService.insertDmn(dmn);
            insertCnt++;

            dmn = null;
        }

//        List<DmnRVO> selectedDmnList = dmnService.selectDmnList(dmn);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("dmnList", selectedDmnList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_도메인기본 수정", description = "대국민포털_도메인기본 수정한다.")
    @PostMapping(value="/updateDmn")
    @ResponseBody
    public Map<String,Object> updateDmn(@RequestBody List<DmnPVO> dmnList)
    {
        int dmnListCount = dmnList.size();

        int updateCnt = 0;
        DmnPVO dmn = null;

        for(int i=0;i<dmnListCount;i++)
        {
            dmn = dmnList.get(i);

            dmnService.updateDmn(dmn);
            updateCnt++;

            dmn = null;
        }

//        List<DmnRVO> selectedDmnList = dmnService.selectDmnList(dmn);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("dmnList", selectedDmnList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_도메인기본 저장", description = "대국민포털_도메인기본 저장한다.")
    @PostMapping(value="/saveDmn")
    @ResponseBody
    public Map<String,Object> saveDmn(@RequestBody List<DmnPVO> dmnList)
    {
        int dmnListCount = dmnList.size();

        int saveCnt = 0;
        DmnPVO dmn = null;

        for(int i=0;i<dmnListCount;i++)
        {
            dmn = dmnList.get(i);

            dmnService.saveDmn(dmn);
            saveCnt++;

            dmn = null;
        }

//        List<DmnRVO> selectedDmnList = dmnService.selectDmnList(dmn);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("dmnList", selectedDmnList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_도메인기본 삭제", description = "대국민포털_도메인기본 삭제한다.")
    @PostMapping(value="/deleteDmn")
    @ResponseBody
    public Map<String,Object> deleteDmn(@RequestBody DmnDVO dmnDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = dmnService.deleteDmn(dmnDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

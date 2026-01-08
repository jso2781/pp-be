package kr.go.kids.domain.pp.trm.controller;

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
import kr.go.kids.domain.pp.trm.service.TrmService;
import kr.go.kids.domain.pp.trm.vo.TrmDVO;
import kr.go.kids.domain.pp.trm.vo.TrmPVO;
import kr.go.kids.domain.pp.trm.vo.TrmRVO;

@Tag(name = "TrmController", description = "대국민포털_용어기본 관리")
@RestController
@RequestMapping(value="/api/trm")
public class TrmController
{
    @Autowired
    private TrmService trmService;

    @Operation(summary = "대국민포털_용어기본 조회", description = "대국민포털_용어기본 조회한다.")
    @PostMapping(value="/getTrm")
    @ResponseBody
    public ResponseEntity<TrmRVO> getTrm(@RequestBody TrmPVO trmPVO)
    {
        TrmRVO trm = trmService.getTrm(trmPVO);

        return ResponseEntity.ok(trm);
    }

    @Operation(summary = "대국민포털_용어기본 입력", description = "대국민포털_용어기본 입력한다.")
    @PostMapping(value="/insertTrm")
    @ResponseBody
    public Map<String,Object> insertTrm(@RequestBody List<TrmPVO> trmList)
    {
        int trmListCount = trmList.size();

        int insertCnt = 0;
        TrmPVO trm = null;

        for(int i=0;i<trmListCount;i++)
        {
            trm = trmList.get(i);

            trmService.insertTrm(trm);
            insertCnt++;

            trm = null;
        }

//        List<TrmRVO> selectedTrmList = trmService.selectTrmList(trm);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("trmList", selectedTrmList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_용어기본 수정", description = "대국민포털_용어기본 수정한다.")
    @PostMapping(value="/updateTrm")
    @ResponseBody
    public Map<String,Object> updateTrm(@RequestBody List<TrmPVO> trmList)
    {
        int trmListCount = trmList.size();

        int updateCnt = 0;
        TrmPVO trm = null;

        for(int i=0;i<trmListCount;i++)
        {
            trm = trmList.get(i);

            trmService.updateTrm(trm);
            updateCnt++;

            trm = null;
        }

//        List<TrmRVO> selectedTrmList = trmService.selectTrmList(trm);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("trmList", selectedTrmList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_용어기본 저장", description = "대국민포털_용어기본 저장한다.")
    @PostMapping(value="/saveTrm")
    @ResponseBody
    public Map<String,Object> saveTrm(@RequestBody List<TrmPVO> trmList)
    {
        int trmListCount = trmList.size();

        int saveCnt = 0;
        TrmPVO trm = null;

        for(int i=0;i<trmListCount;i++)
        {
            trm = trmList.get(i);

            trmService.saveTrm(trm);
            saveCnt++;

            trm = null;
        }

//        List<TrmRVO> selectedTrmList = trmService.selectTrmList(trm);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("trmList", selectedTrmList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_용어기본 삭제", description = "대국민포털_용어기본 삭제한다.")
    @PostMapping(value="/deleteTrm")
    @ResponseBody
    public Map<String,Object> deleteTrm(@RequestBody TrmDVO trmDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = trmService.deleteTrm(trmDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

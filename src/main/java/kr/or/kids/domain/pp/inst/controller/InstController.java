package kr.or.kids.domain.pp.inst.controller;

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
import kr.or.kids.domain.pp.inst.service.InstService;
import kr.or.kids.domain.pp.inst.vo.InstDVO;
import kr.or.kids.domain.pp.inst.vo.InstPVO;
import kr.or.kids.domain.pp.inst.vo.InstRVO;

@Tag(name = "InstController", description = "대국민포털_기관정보기본 관리")
@RestController
@RequestMapping(value="/api/inst")
public class InstController
{
    @Autowired
    private InstService instService;

    @Operation(summary = "대국민포털_기관정보기본 조회", description = "대국민포털_기관정보기본 조회한다.")
    @PostMapping(value="/getInst")
    @ResponseBody
    public ResponseEntity<InstRVO> getInst(@RequestBody InstPVO instPVO)
    {
        InstRVO inst = instService.getInst(instPVO);

        return ResponseEntity.ok(inst);
    }

    @Operation(summary = "대국민포털_기관정보기본 입력", description = "대국민포털_기관정보기본 입력한다.")
    @PostMapping(value="/insertInst")
    @ResponseBody
    public Map<String,Object> insertInst(@RequestBody List<InstPVO> instList)
    {
        int instListCount = instList.size();

        int insertCnt = 0;
        InstPVO inst = null;

        for(int i=0;i<instListCount;i++)
        {
            inst = instList.get(i);

            instService.insertInst(inst);
            insertCnt++;

            inst = null;
        }

//        List<InstRVO> selectedInstList = instService.selectInstList(inst);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("instList", selectedInstList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_기관정보기본 수정", description = "대국민포털_기관정보기본 수정한다.")
    @PostMapping(value="/updateInst")
    @ResponseBody
    public Map<String,Object> updateInst(@RequestBody List<InstPVO> instList)
    {
        int instListCount = instList.size();

        int updateCnt = 0;
        InstPVO inst = null;

        for(int i=0;i<instListCount;i++)
        {
            inst = instList.get(i);

            instService.updateInst(inst);
            updateCnt++;

            inst = null;
        }

//        List<InstRVO> selectedInstList = instService.selectInstList(inst);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("instList", selectedInstList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_기관정보기본 저장", description = "대국민포털_기관정보기본 저장한다.")
    @PostMapping(value="/saveInst")
    @ResponseBody
    public Map<String,Object> saveInst(@RequestBody List<InstPVO> instList)
    {
        int instListCount = instList.size();

        int saveCnt = 0;
        InstPVO inst = null;

        for(int i=0;i<instListCount;i++)
        {
            inst = instList.get(i);

            instService.saveInst(inst);
            saveCnt++;

            inst = null;
        }

//        List<InstRVO> selectedInstList = instService.selectInstList(inst);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("instList", selectedInstList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_기관정보기본 삭제", description = "대국민포털_기관정보기본 삭제한다.")
    @PostMapping(value="/deleteInst")
    @ResponseBody
    public Map<String,Object> deleteInst(@RequestBody InstDVO instDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = instService.deleteInst(instDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

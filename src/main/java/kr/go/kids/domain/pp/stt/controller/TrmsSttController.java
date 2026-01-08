package kr.go.kids.domain.pp.stt.controller;

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
import kr.go.kids.domain.pp.stt.service.TrmsSttService;
import kr.go.kids.domain.pp.stt.vo.TrmsSttDVO;
import kr.go.kids.domain.pp.stt.vo.TrmsSttPVO;
import kr.go.kids.domain.pp.stt.vo.TrmsSttRVO;

@Tag(name = "TrmsSttController", description = "대국민포털_약관법령기본 관리")
@RestController
@RequestMapping(value="/api/stt")
public class TrmsSttController
{
    @Autowired
    private TrmsSttService trmsSttService;

    @Operation(summary = "대국민포털_약관법령기본 조회", description = "대국민포털_약관법령기본 조회한다.")
    @PostMapping(value="/getTrmsStt")
    @ResponseBody
    public ResponseEntity<TrmsSttRVO> getTrmsStt(@RequestBody TrmsSttPVO trmsSttPVO)
    {
        TrmsSttRVO trmsStt = trmsSttService.getTrmsStt(trmsSttPVO);

        return ResponseEntity.ok(trmsStt);
    }

    @Operation(summary = "대국민포털_약관법령기본 입력", description = "대국민포털_약관법령기본 입력한다.")
    @PostMapping(value="/insertTrmsStt")
    @ResponseBody
    public Map<String,Object> insertTrmsStt(@RequestBody List<TrmsSttPVO> trmsSttList)
    {
        int trmsSttListCount = trmsSttList.size();

        int insertCnt = 0;
        TrmsSttPVO trmsStt = null;

        for(int i=0;i<trmsSttListCount;i++)
        {
            trmsStt = trmsSttList.get(i);

            trmsSttService.insertTrmsStt(trmsStt);
            insertCnt++;

            trmsStt = null;
        }

//        List<TrmsSttRVO> selectedTrmsSttList = trmsSttService.selectTrmsSttList(trmsStt);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("trmsSttList", selectedTrmsSttList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_약관법령기본 수정", description = "대국민포털_약관법령기본 수정한다.")
    @PostMapping(value="/updateTrmsStt")
    @ResponseBody
    public Map<String,Object> updateTrmsStt(@RequestBody List<TrmsSttPVO> trmsSttList)
    {
        int trmsSttListCount = trmsSttList.size();

        int updateCnt = 0;
        TrmsSttPVO trmsStt = null;

        for(int i=0;i<trmsSttListCount;i++)
        {
            trmsStt = trmsSttList.get(i);

            trmsSttService.updateTrmsStt(trmsStt);
            updateCnt++;

            trmsStt = null;
        }

//        List<TrmsSttRVO> selectedTrmsSttList = trmsSttService.selectTrmsSttList(trmsStt);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("trmsSttList", selectedTrmsSttList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_약관법령기본 저장", description = "대국민포털_약관법령기본 저장한다.")
    @PostMapping(value="/saveTrmsStt")
    @ResponseBody
    public Map<String,Object> saveTrmsStt(@RequestBody List<TrmsSttPVO> trmsSttList)
    {
        int trmsSttListCount = trmsSttList.size();

        int saveCnt = 0;
        TrmsSttPVO trmsStt = null;

        for(int i=0;i<trmsSttListCount;i++)
        {
            trmsStt = trmsSttList.get(i);

            trmsSttService.saveTrmsStt(trmsStt);
            saveCnt++;

            trmsStt = null;
        }

//        List<TrmsSttRVO> selectedTrmsSttList = trmsSttService.selectTrmsSttList(trmsStt);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("trmsSttList", selectedTrmsSttList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_약관법령기본 삭제", description = "대국민포털_약관법령기본 삭제한다.")
    @PostMapping(value="/deleteTrmsStt")
    @ResponseBody
    public Map<String,Object> deleteTrmsStt(@RequestBody TrmsSttDVO trmsSttDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = trmsSttService.deleteTrmsStt(trmsSttDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

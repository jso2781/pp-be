package kr.go.kids.domain.atch.controller;

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
import kr.go.kids.domain.atch.service.AtchService;
import kr.go.kids.domain.atch.vo.AtchDVO;
import kr.go.kids.domain.atch.vo.AtchPVO;
import kr.go.kids.domain.atch.vo.AtchRVO;

@Tag(name = "AtchController", description = "공통_첨부파일기본 관리")
@RestController
@RequestMapping(value="/api/atch")
public class AtchController
{
    @Autowired
    private AtchService atchService;

    @Operation(summary = "공통_첨부파일기본 조회", description = "공통_첨부파일기본 조회한다.")
    @PostMapping(value="/getAtch")
    @ResponseBody
    public ResponseEntity<AtchRVO> getAtch(@RequestBody AtchPVO atchPVO)
    {
        AtchRVO atch = atchService.getAtch(atchPVO);

        return ResponseEntity.ok(atch);
    }

    @Operation(summary = "공통_첨부파일기본 입력", description = "공통_첨부파일기본 입력한다.")
    @PostMapping(value="/insertAtch")
    @ResponseBody
    public Map<String,Object> insertAtch(@RequestBody List<AtchPVO> atchList)
    {
        int atchListCount = atchList.size();

        int insertCnt = 0;
        AtchPVO atch = null;

        for(int i=0;i<atchListCount;i++)
        {
            atch = atchList.get(i);

            atchService.insertAtch(atch);
            insertCnt++;

            atch = null;
        }

//        List<AtchRVO> selectedAtchList = atchService.selectAtchList(atch);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("atchList", selectedAtchList);

        return resultMap;
    }

    @Operation(summary = "공통_첨부파일기본 수정", description = "공통_첨부파일기본 수정한다.")
    @PostMapping(value="/updateAtch")
    @ResponseBody
    public Map<String,Object> updateAtch(@RequestBody List<AtchPVO> atchList)
    {
        int atchListCount = atchList.size();

        int updateCnt = 0;
        AtchPVO atch = null;

        for(int i=0;i<atchListCount;i++)
        {
            atch = atchList.get(i);

            atchService.updateAtch(atch);
            updateCnt++;

            atch = null;
        }

//        List<AtchRVO> selectedAtchList = atchService.selectAtchList(atch);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("atchList", selectedAtchList);

        return resultMap;
    }

    @Operation(summary = "공통_첨부파일기본 저장", description = "공통_첨부파일기본 저장한다.")
    @PostMapping(value="/saveAtch")
    @ResponseBody
    public Map<String,Object> saveAtch(@RequestBody List<AtchPVO> atchList)
    {
        int atchListCount = atchList.size();

        int saveCnt = 0;
        AtchPVO atch = null;

        for(int i=0;i<atchListCount;i++)
        {
            atch = atchList.get(i);

            atchService.saveAtch(atch);
            saveCnt++;

            atch = null;
        }

//        List<AtchRVO> selectedAtchList = atchService.selectAtchList(atch);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("atchList", selectedAtchList);

        return resultMap;
    }

    @Operation(summary = "공통_첨부파일기본 삭제", description = "공통_첨부파일기본 삭제한다.")
    @PostMapping(value="/deleteAtch")
    @ResponseBody
    public Map<String,Object> deleteAtch(@RequestBody AtchDVO atchDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = atchService.deleteAtch(atchDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

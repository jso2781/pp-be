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
import kr.go.kids.domain.dur.service.DurEftgrpIgrdService;
import kr.go.kids.domain.dur.vo.DurEftgrpIgrdDVO;
import kr.go.kids.domain.dur.vo.DurEftgrpIgrdPVO;
import kr.go.kids.domain.dur.vo.DurEftgrpIgrdRVO;

@Tag(name = "DurEftgrpIgrdController", description = "대국민포털_DUR효능군중복성분기본 관리")
@RestController
@RequestMapping(value="/api/dur")
public class DurEftgrpIgrdController
{
    @Autowired
    private DurEftgrpIgrdService durEftgrpIgrdService;

    @Operation(summary = "대국민포털_DUR효능군중복성분기본 조회", description = "대국민포털_DUR효능군중복성분기본 조회한다.")
    @PostMapping(value="/getDurEftgrpIgrd")
    @ResponseBody
    public ResponseEntity<DurEftgrpIgrdRVO> getDurEftgrpIgrd(@RequestBody DurEftgrpIgrdPVO durEftgrpIgrdPVO)
    {
        DurEftgrpIgrdRVO durEftgrpIgrd = durEftgrpIgrdService.getDurEftgrpIgrd(durEftgrpIgrdPVO);

        return ResponseEntity.ok(durEftgrpIgrd);
    }

    @Operation(summary = "대국민포털_DUR효능군중복성분기본 입력", description = "대국민포털_DUR효능군중복성분기본 입력한다.")
    @PostMapping(value="/insertDurEftgrpIgrd")
    @ResponseBody
    public Map<String,Object> insertDurEftgrpIgrd(@RequestBody List<DurEftgrpIgrdPVO> durEftgrpIgrdList)
    {
        int durEftgrpIgrdListCount = durEftgrpIgrdList.size();

        int insertCnt = 0;
        DurEftgrpIgrdPVO durEftgrpIgrd = null;

        for(int i=0;i<durEftgrpIgrdListCount;i++)
        {
            durEftgrpIgrd = durEftgrpIgrdList.get(i);

            durEftgrpIgrdService.insertDurEftgrpIgrd(durEftgrpIgrd);
            insertCnt++;

            durEftgrpIgrd = null;
        }

//        List<DurEftgrpIgrdRVO> selectedDurEftgrpIgrdList = durEftgrpIgrdService.selectDurEftgrpIgrdList(durEftgrpIgrd);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("durEftgrpIgrdList", selectedDurEftgrpIgrdList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR효능군중복성분기본 수정", description = "대국민포털_DUR효능군중복성분기본 수정한다.")
    @PostMapping(value="/updateDurEftgrpIgrd")
    @ResponseBody
    public Map<String,Object> updateDurEftgrpIgrd(@RequestBody List<DurEftgrpIgrdPVO> durEftgrpIgrdList)
    {
        int durEftgrpIgrdListCount = durEftgrpIgrdList.size();

        int updateCnt = 0;
        DurEftgrpIgrdPVO durEftgrpIgrd = null;

        for(int i=0;i<durEftgrpIgrdListCount;i++)
        {
            durEftgrpIgrd = durEftgrpIgrdList.get(i);

            durEftgrpIgrdService.updateDurEftgrpIgrd(durEftgrpIgrd);
            updateCnt++;

            durEftgrpIgrd = null;
        }

//        List<DurEftgrpIgrdRVO> selectedDurEftgrpIgrdList = durEftgrpIgrdService.selectDurEftgrpIgrdList(durEftgrpIgrd);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("durEftgrpIgrdList", selectedDurEftgrpIgrdList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR효능군중복성분기본 저장", description = "대국민포털_DUR효능군중복성분기본 저장한다.")
    @PostMapping(value="/saveDurEftgrpIgrd")
    @ResponseBody
    public Map<String,Object> saveDurEftgrpIgrd(@RequestBody List<DurEftgrpIgrdPVO> durEftgrpIgrdList)
    {
        int durEftgrpIgrdListCount = durEftgrpIgrdList.size();

        int saveCnt = 0;
        DurEftgrpIgrdPVO durEftgrpIgrd = null;

        for(int i=0;i<durEftgrpIgrdListCount;i++)
        {
            durEftgrpIgrd = durEftgrpIgrdList.get(i);

            durEftgrpIgrdService.saveDurEftgrpIgrd(durEftgrpIgrd);
            saveCnt++;

            durEftgrpIgrd = null;
        }

//        List<DurEftgrpIgrdRVO> selectedDurEftgrpIgrdList = durEftgrpIgrdService.selectDurEftgrpIgrdList(durEftgrpIgrd);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("durEftgrpIgrdList", selectedDurEftgrpIgrdList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR효능군중복성분기본 삭제", description = "대국민포털_DUR효능군중복성분기본 삭제한다.")
    @PostMapping(value="/deleteDurEftgrpIgrd")
    @ResponseBody
    public Map<String,Object> deleteDurEftgrpIgrd(@RequestBody DurEftgrpIgrdDVO durEftgrpIgrdDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = durEftgrpIgrdService.deleteDurEftgrpIgrd(durEftgrpIgrdDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

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
import kr.or.kids.domain.pp.dur.service.DurConcBannService;
import kr.or.kids.domain.pp.dur.vo.DurConcBannDVO;
import kr.or.kids.domain.pp.dur.vo.DurConcBannPVO;
import kr.or.kids.domain.pp.dur.vo.DurConcBannRVO;

@Tag(name = "DurConcBannController", description = "대국민포털_DUR병용금기기본 관리")
@RestController
@RequestMapping(value="/api/dur")
public class DurConcBannController
{
    @Autowired
    private DurConcBannService concBannService;

    @Operation(summary = "대국민포털_DUR병용금기기본 조회", description = "대국민포털_DUR병용금기기본 조회한다.")
    @PostMapping(value="/getDurConcBann")
    @ResponseBody
    public ResponseEntity<DurConcBannRVO> getDurConcBann(@RequestBody DurConcBannPVO concBannPVO)
    {
        DurConcBannRVO concBann = concBannService.getDurConcBann(concBannPVO);

        return ResponseEntity.ok(concBann);
    }

    @Operation(summary = "대국민포털_DUR병용금기기본 입력", description = "대국민포털_DUR병용금기기본 입력한다.")
    @PostMapping(value="/insertDurConcBann")
    @ResponseBody
    public Map<String,Object> insertDurConcBann(@RequestBody List<DurConcBannPVO> concBannList)
    {
        int concBannListCount = concBannList.size();

        int insertCnt = 0;
        DurConcBannPVO concBann = null;

        for(int i=0;i<concBannListCount;i++)
        {
            concBann = concBannList.get(i);

            concBannService.insertDurConcBann(concBann);
            insertCnt++;

            concBann = null;
        }

//        List<DurConcBannRVO> selectedDurConcBannList = concBannService.selectDurConcBannList(concBann);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("concBannList", selectedDurConcBannList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR병용금기기본 수정", description = "대국민포털_DUR병용금기기본 수정한다.")
    @PostMapping(value="/updateDurConcBann")
    @ResponseBody
    public Map<String,Object> updateDurConcBann(@RequestBody List<DurConcBannPVO> concBannList)
    {
        int concBannListCount = concBannList.size();

        int updateCnt = 0;
        DurConcBannPVO concBann = null;

        for(int i=0;i<concBannListCount;i++)
        {
            concBann = concBannList.get(i);

            concBannService.updateDurConcBann(concBann);
            updateCnt++;

            concBann = null;
        }

//        List<DurConcBannRVO> selectedDurConcBannList = concBannService.selectDurConcBannList(concBann);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("concBannList", selectedDurConcBannList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR병용금기기본 저장", description = "대국민포털_DUR병용금기기본 저장한다.")
    @PostMapping(value="/saveDurConcBann")
    @ResponseBody
    public Map<String,Object> saveDurConcBann(@RequestBody List<DurConcBannPVO> concBannList)
    {
        int concBannListCount = concBannList.size();

        int saveCnt = 0;
        DurConcBannPVO concBann = null;

        for(int i=0;i<concBannListCount;i++)
        {
            concBann = concBannList.get(i);

            concBannService.saveDurConcBann(concBann);
            saveCnt++;

            concBann = null;
        }

//        List<DurConcBannRVO> selectedDurConcBannList = concBannService.selectDurConcBannList(concBann);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("concBannList", selectedDurConcBannList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR병용금기기본 삭제", description = "대국민포털_DUR병용금기기본 삭제한다.")
    @PostMapping(value="/deleteDurConcBann")
    @ResponseBody
    public Map<String,Object> deleteDurConcBann(@RequestBody DurConcBannDVO concBannDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = concBannService.deleteDurConcBann(concBannDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

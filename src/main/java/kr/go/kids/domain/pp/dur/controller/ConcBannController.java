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
import kr.go.kids.domain.pp.dur.service.ConcBannService;
import kr.go.kids.domain.pp.dur.vo.ConcBannDVO;
import kr.go.kids.domain.pp.dur.vo.ConcBannPVO;
import kr.go.kids.domain.pp.dur.vo.ConcBannRVO;

@Tag(name = "ConcBannController", description = "대국민포털_DUR병용금기기본 관리")
@RestController
@RequestMapping(value="/api/dur")
public class ConcBannController
{
    @Autowired
    private ConcBannService concBannService;

    @Operation(summary = "대국민포털_DUR병용금기기본 조회", description = "대국민포털_DUR병용금기기본 조회한다.")
    @PostMapping(value="/getConcBann")
    @ResponseBody
    public ResponseEntity<ConcBannRVO> getConcBann(@RequestBody ConcBannPVO concBannPVO)
    {
        ConcBannRVO concBann = concBannService.getConcBann(concBannPVO);

        return ResponseEntity.ok(concBann);
    }

    @Operation(summary = "대국민포털_DUR병용금기기본 입력", description = "대국민포털_DUR병용금기기본 입력한다.")
    @PostMapping(value="/insertConcBann")
    @ResponseBody
    public Map<String,Object> insertConcBann(@RequestBody List<ConcBannPVO> concBannList)
    {
        int concBannListCount = concBannList.size();

        int insertCnt = 0;
        ConcBannPVO concBann = null;

        for(int i=0;i<concBannListCount;i++)
        {
            concBann = concBannList.get(i);

            concBannService.insertConcBann(concBann);
            insertCnt++;

            concBann = null;
        }

//        List<ConcBannRVO> selectedConcBannList = concBannService.selectConcBannList(concBann);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("concBannList", selectedConcBannList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR병용금기기본 수정", description = "대국민포털_DUR병용금기기본 수정한다.")
    @PostMapping(value="/updateConcBann")
    @ResponseBody
    public Map<String,Object> updateConcBann(@RequestBody List<ConcBannPVO> concBannList)
    {
        int concBannListCount = concBannList.size();

        int updateCnt = 0;
        ConcBannPVO concBann = null;

        for(int i=0;i<concBannListCount;i++)
        {
            concBann = concBannList.get(i);

            concBannService.updateConcBann(concBann);
            updateCnt++;

            concBann = null;
        }

//        List<ConcBannRVO> selectedConcBannList = concBannService.selectConcBannList(concBann);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("concBannList", selectedConcBannList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR병용금기기본 저장", description = "대국민포털_DUR병용금기기본 저장한다.")
    @PostMapping(value="/saveConcBann")
    @ResponseBody
    public Map<String,Object> saveConcBann(@RequestBody List<ConcBannPVO> concBannList)
    {
        int concBannListCount = concBannList.size();

        int saveCnt = 0;
        ConcBannPVO concBann = null;

        for(int i=0;i<concBannListCount;i++)
        {
            concBann = concBannList.get(i);

            concBannService.saveConcBann(concBann);
            saveCnt++;

            concBann = null;
        }

//        List<ConcBannRVO> selectedConcBannList = concBannService.selectConcBannList(concBann);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("concBannList", selectedConcBannList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR병용금기기본 삭제", description = "대국민포털_DUR병용금기기본 삭제한다.")
    @PostMapping(value="/deleteConcBann")
    @ResponseBody
    public Map<String,Object> deleteConcBann(@RequestBody ConcBannDVO concBannDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = concBannService.deleteConcBann(concBannDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

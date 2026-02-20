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
import kr.or.kids.domain.pp.dur.service.DurAgeBannService;
import kr.or.kids.domain.pp.dur.vo.DurAgeBannDVO;
import kr.or.kids.domain.pp.dur.vo.DurAgeBannPVO;
import kr.or.kids.domain.pp.dur.vo.DurAgeBannRVO;

@Tag(name = "DurAgeBannController", description = "대국민포털_DUR연령금기기본 관리")
@RestController
@RequestMapping(value="/api/dur")
public class DurAgeBannController
{
    @Autowired
    private DurAgeBannService durAgeBannService;

    @Operation(summary = "대국민포털_DUR연령금기기본 조회", description = "대국민포털_DUR연령금기기본 조회한다.")
    @PostMapping(value="/getDurAgeBann")
    @ResponseBody
    public ResponseEntity<DurAgeBannRVO> getDurAgeBann(@RequestBody DurAgeBannPVO durAgeBannPVO)
    {
        DurAgeBannRVO durAgeBann = durAgeBannService.getDurAgeBann(durAgeBannPVO);

        return ResponseEntity.ok(durAgeBann);
    }

    @Operation(summary = "대국민포털_DUR연령금기기본 입력", description = "대국민포털_DUR연령금기기본 입력한다.")
    @PostMapping(value="/insertDurAgeBann")
    @ResponseBody
    public Map<String,Object> insertDurAgeBann(@RequestBody List<DurAgeBannPVO> durAgeBannList)
    {
        int durAgeBannListCount = durAgeBannList.size();

        int insertCnt = 0;
        DurAgeBannPVO durAgeBann = null;

        for(int i=0;i<durAgeBannListCount;i++)
        {
            durAgeBann = durAgeBannList.get(i);

            durAgeBannService.insertDurAgeBann(durAgeBann);
            insertCnt++;

            durAgeBann = null;
        }

//        List<DurAgeBannRVO> selectedDurAgeBannList = durAgeBannService.selectDurAgeBannList(durAgeBann);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("durAgeBannList", selectedDurAgeBannList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR연령금기기본 수정", description = "대국민포털_DUR연령금기기본 수정한다.")
    @PostMapping(value="/updateDurAgeBann")
    @ResponseBody
    public Map<String,Object> updateDurAgeBann(@RequestBody List<DurAgeBannPVO> durAgeBannList)
    {
        int durAgeBannListCount = durAgeBannList.size();

        int updateCnt = 0;
        DurAgeBannPVO durAgeBann = null;

        for(int i=0;i<durAgeBannListCount;i++)
        {
            durAgeBann = durAgeBannList.get(i);

            durAgeBannService.updateDurAgeBann(durAgeBann);
            updateCnt++;

            durAgeBann = null;
        }

//        List<DurAgeBannRVO> selectedDurAgeBannList = durAgeBannService.selectDurAgeBannList(durAgeBann);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("durAgeBannList", selectedDurAgeBannList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR연령금기기본 저장", description = "대국민포털_DUR연령금기기본 저장한다.")
    @PostMapping(value="/saveDurAgeBann")
    @ResponseBody
    public Map<String,Object> saveDurAgeBann(@RequestBody List<DurAgeBannPVO> durAgeBannList)
    {
        int durAgeBannListCount = durAgeBannList.size();

        int saveCnt = 0;
        DurAgeBannPVO durAgeBann = null;

        for(int i=0;i<durAgeBannListCount;i++)
        {
            durAgeBann = durAgeBannList.get(i);

            durAgeBannService.saveDurAgeBann(durAgeBann);
            saveCnt++;

            durAgeBann = null;
        }

//        List<DurAgeBannRVO> selectedDurAgeBannList = durAgeBannService.selectDurAgeBannList(durAgeBann);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("durAgeBannList", selectedDurAgeBannList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR연령금기기본 삭제", description = "대국민포털_DUR연령금기기본 삭제한다.")
    @PostMapping(value="/deleteDurAgeBann")
    @ResponseBody
    public Map<String,Object> deleteDurAgeBann(@RequestBody DurAgeBannDVO durAgeBannDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = durAgeBannService.deleteDurAgeBann(durAgeBannDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

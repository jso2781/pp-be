package kr.or.kids.domain.dur.controller;

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
import kr.or.kids.domain.dur.service.DurEftgrpItemService;
import kr.or.kids.domain.dur.vo.DurEftgrpItemDVO;
import kr.or.kids.domain.dur.vo.DurEftgrpItemPVO;
import kr.or.kids.domain.dur.vo.DurEftgrpItemRVO;

@Tag(name = "DurEftgrpItemController", description = "대국민포털_DUR효능군중복품목기본 관리")
@RestController
@RequestMapping(value="/api/dur")
public class DurEftgrpItemController
{
    @Autowired
    private DurEftgrpItemService durEftgrpItemService;

    @Operation(summary = "대국민포털_DUR효능군중복품목기본 조회", description = "대국민포털_DUR효능군중복품목기본 조회한다.")
    @PostMapping(value="/getDurEftgrpItem")
    @ResponseBody
    public ResponseEntity<DurEftgrpItemRVO> getDurEftgrpItem(@RequestBody DurEftgrpItemPVO durEftgrpItemPVO)
    {
        DurEftgrpItemRVO durEftgrpItem = durEftgrpItemService.getDurEftgrpItem(durEftgrpItemPVO);

        return ResponseEntity.ok(durEftgrpItem);
    }

    @Operation(summary = "대국민포털_DUR효능군중복품목기본 입력", description = "대국민포털_DUR효능군중복품목기본 입력한다.")
    @PostMapping(value="/insertDurEftgrpItem")
    @ResponseBody
    public Map<String,Object> insertDurEftgrpItem(@RequestBody List<DurEftgrpItemPVO> durEftgrpItemList)
    {
        int durEftgrpItemListCount = durEftgrpItemList.size();

        int insertCnt = 0;
        DurEftgrpItemPVO durEftgrpItem = null;

        for(int i=0;i<durEftgrpItemListCount;i++)
        {
            durEftgrpItem = durEftgrpItemList.get(i);

            durEftgrpItemService.insertDurEftgrpItem(durEftgrpItem);
            insertCnt++;

            durEftgrpItem = null;
        }

//        List<DurEftgrpItemRVO> selectedDurEftgrpItemList = durEftgrpItemService.selectDurEftgrpItemList(durEftgrpItem);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("durEftgrpItemList", selectedDurEftgrpItemList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR효능군중복품목기본 수정", description = "대국민포털_DUR효능군중복품목기본 수정한다.")
    @PostMapping(value="/updateDurEftgrpItem")
    @ResponseBody
    public Map<String,Object> updateDurEftgrpItem(@RequestBody List<DurEftgrpItemPVO> durEftgrpItemList)
    {
        int durEftgrpItemListCount = durEftgrpItemList.size();

        int updateCnt = 0;
        DurEftgrpItemPVO durEftgrpItem = null;

        for(int i=0;i<durEftgrpItemListCount;i++)
        {
            durEftgrpItem = durEftgrpItemList.get(i);

            durEftgrpItemService.updateDurEftgrpItem(durEftgrpItem);
            updateCnt++;

            durEftgrpItem = null;
        }

//        List<DurEftgrpItemRVO> selectedDurEftgrpItemList = durEftgrpItemService.selectDurEftgrpItemList(durEftgrpItem);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("durEftgrpItemList", selectedDurEftgrpItemList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR효능군중복품목기본 저장", description = "대국민포털_DUR효능군중복품목기본 저장한다.")
    @PostMapping(value="/saveDurEftgrpItem")
    @ResponseBody
    public Map<String,Object> saveDurEftgrpItem(@RequestBody List<DurEftgrpItemPVO> durEftgrpItemList)
    {
        int durEftgrpItemListCount = durEftgrpItemList.size();

        int saveCnt = 0;
        DurEftgrpItemPVO durEftgrpItem = null;

        for(int i=0;i<durEftgrpItemListCount;i++)
        {
            durEftgrpItem = durEftgrpItemList.get(i);

            durEftgrpItemService.saveDurEftgrpItem(durEftgrpItem);
            saveCnt++;

            durEftgrpItem = null;
        }

//        List<DurEftgrpItemRVO> selectedDurEftgrpItemList = durEftgrpItemService.selectDurEftgrpItemList(durEftgrpItem);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("durEftgrpItemList", selectedDurEftgrpItemList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR효능군중복품목기본 삭제", description = "대국민포털_DUR효능군중복품목기본 삭제한다.")
    @PostMapping(value="/deleteDurEftgrpItem")
    @ResponseBody
    public Map<String,Object> deleteDurEftgrpItem(@RequestBody DurEftgrpItemDVO durEftgrpItemDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = durEftgrpItemService.deleteDurEftgrpItem(durEftgrpItemDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

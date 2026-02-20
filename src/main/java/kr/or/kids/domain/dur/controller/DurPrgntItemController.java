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
import kr.or.kids.domain.dur.service.DurPrgntItemService;
import kr.or.kids.domain.dur.vo.DurPrgntItemDVO;
import kr.or.kids.domain.dur.vo.DurPrgntItemPVO;
import kr.or.kids.domain.dur.vo.DurPrgntItemRVO;

@Tag(name = "DurPrgntItemController", description = "대국민포털_DUR임부금기품목기본 관리")
@RestController
@RequestMapping(value="/api/dur")
public class DurPrgntItemController
{
    @Autowired
    private DurPrgntItemService durPrgntItemService;

    @Operation(summary = "대국민포털_DUR임부금기품목기본 조회", description = "대국민포털_DUR임부금기품목기본 조회한다.")
    @PostMapping(value="/getDurPrgntItem")
    @ResponseBody
    public ResponseEntity<DurPrgntItemRVO> getDurPrgntItem(@RequestBody DurPrgntItemPVO durPrgntItemPVO)
    {
        DurPrgntItemRVO durPrgntItem = durPrgntItemService.getDurPrgntItem(durPrgntItemPVO);

        return ResponseEntity.ok(durPrgntItem);
    }

    @Operation(summary = "대국민포털_DUR임부금기품목기본 입력", description = "대국민포털_DUR임부금기품목기본 입력한다.")
    @PostMapping(value="/insertDurPrgntItem")
    @ResponseBody
    public Map<String,Object> insertDurPrgntItem(@RequestBody List<DurPrgntItemPVO> durPrgntItemList)
    {
        int durPrgntItemListCount = durPrgntItemList.size();

        int insertCnt = 0;
        DurPrgntItemPVO durPrgntItem = null;

        for(int i=0;i<durPrgntItemListCount;i++)
        {
            durPrgntItem = durPrgntItemList.get(i);

            durPrgntItemService.insertDurPrgntItem(durPrgntItem);
            insertCnt++;

            durPrgntItem = null;
        }

//        List<DurPrgntItemRVO> selectedDurPrgntItemList = durPrgntItemService.selectDurPrgntItemList(durPrgntItem);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("durPrgntItemList", selectedDurPrgntItemList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR임부금기품목기본 수정", description = "대국민포털_DUR임부금기품목기본 수정한다.")
    @PostMapping(value="/updateDurPrgntItem")
    @ResponseBody
    public Map<String,Object> updateDurPrgntItem(@RequestBody List<DurPrgntItemPVO> durPrgntItemList)
    {
        int durPrgntItemListCount = durPrgntItemList.size();

        int updateCnt = 0;
        DurPrgntItemPVO durPrgntItem = null;

        for(int i=0;i<durPrgntItemListCount;i++)
        {
            durPrgntItem = durPrgntItemList.get(i);

            durPrgntItemService.updateDurPrgntItem(durPrgntItem);
            updateCnt++;

            durPrgntItem = null;
        }

//        List<DurPrgntItemRVO> selectedDurPrgntItemList = durPrgntItemService.selectDurPrgntItemList(durPrgntItem);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("durPrgntItemList", selectedDurPrgntItemList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR임부금기품목기본 저장", description = "대국민포털_DUR임부금기품목기본 저장한다.")
    @PostMapping(value="/saveDurPrgntItem")
    @ResponseBody
    public Map<String,Object> saveDurPrgntItem(@RequestBody List<DurPrgntItemPVO> durPrgntItemList)
    {
        int durPrgntItemListCount = durPrgntItemList.size();

        int saveCnt = 0;
        DurPrgntItemPVO durPrgntItem = null;

        for(int i=0;i<durPrgntItemListCount;i++)
        {
            durPrgntItem = durPrgntItemList.get(i);

            durPrgntItemService.saveDurPrgntItem(durPrgntItem);
            saveCnt++;

            durPrgntItem = null;
        }

//        List<DurPrgntItemRVO> selectedDurPrgntItemList = durPrgntItemService.selectDurPrgntItemList(durPrgntItem);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("durPrgntItemList", selectedDurPrgntItemList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_DUR임부금기품목기본 삭제", description = "대국민포털_DUR임부금기품목기본 삭제한다.")
    @PostMapping(value="/deleteDurPrgntItem")
    @ResponseBody
    public Map<String,Object> deleteDurPrgntItem(@RequestBody DurPrgntItemDVO durPrgntItemDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = durPrgntItemService.deleteDurPrgntItem(durPrgntItemDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

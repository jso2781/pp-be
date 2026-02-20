package kr.or.kids.domain.pp.hstry.controller;

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
import kr.or.kids.domain.pp.hstry.service.PrvcAcsHstryService;
import kr.or.kids.domain.pp.hstry.vo.PrvcAcsHstryDVO;
import kr.or.kids.domain.pp.hstry.vo.PrvcAcsHstryPVO;
import kr.or.kids.domain.pp.hstry.vo.PrvcAcsHstryRVO;

@Tag(name = "PrvcAcsHstryController", description = "대국민포털_개인정보접근이력기본 관리")
@RestController
@RequestMapping(value="/api/hstry")
public class PrvcAcsHstryController
{
    @Autowired
    private PrvcAcsHstryService prvcAcsHstryService;

    @Operation(summary = "대국민포털_개인정보접근이력기본 조회", description = "대국민포털_개인정보접근이력기본 조회한다.")
    @PostMapping(value="/getPrvcAcsHstry")
    @ResponseBody
    public ResponseEntity<PrvcAcsHstryRVO> getPrvcAcsHstry(@RequestBody PrvcAcsHstryPVO prvcAcsHstryPVO)
    {
        PrvcAcsHstryRVO prvcAcsHstry = prvcAcsHstryService.getPrvcAcsHstry(prvcAcsHstryPVO);

        return ResponseEntity.ok(prvcAcsHstry);
    }

    @Operation(summary = "대국민포털_개인정보접근이력기본 입력", description = "대국민포털_개인정보접근이력기본 입력한다.")
    @PostMapping(value="/insertPrvcAcsHstry")
    @ResponseBody
    public Map<String,Object> insertPrvcAcsHstry(@RequestBody List<PrvcAcsHstryPVO> prvcAcsHstryList)
    {
        int prvcAcsHstryListCount = prvcAcsHstryList.size();

        int insertCnt = 0;
        PrvcAcsHstryPVO prvcAcsHstry = null;

        for(int i=0;i<prvcAcsHstryListCount;i++)
        {
            prvcAcsHstry = prvcAcsHstryList.get(i);

            prvcAcsHstryService.insertPrvcAcsHstry(prvcAcsHstry);
            insertCnt++;

            prvcAcsHstry = null;
        }

//        List<PrvcAcsHstryRVO> selectedPrvcAcsHstryList = prvcAcsHstryService.selectPrvcAcsHstryList(prvcAcsHstry);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("prvcAcsHstryList", selectedPrvcAcsHstryList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_개인정보접근이력기본 수정", description = "대국민포털_개인정보접근이력기본 수정한다.")
    @PostMapping(value="/updatePrvcAcsHstry")
    @ResponseBody
    public Map<String,Object> updatePrvcAcsHstry(@RequestBody List<PrvcAcsHstryPVO> prvcAcsHstryList)
    {
        int prvcAcsHstryListCount = prvcAcsHstryList.size();

        int updateCnt = 0;
        PrvcAcsHstryPVO prvcAcsHstry = null;

        for(int i=0;i<prvcAcsHstryListCount;i++)
        {
            prvcAcsHstry = prvcAcsHstryList.get(i);

            prvcAcsHstryService.updatePrvcAcsHstry(prvcAcsHstry);
            updateCnt++;

            prvcAcsHstry = null;
        }

//        List<PrvcAcsHstryRVO> selectedPrvcAcsHstryList = prvcAcsHstryService.selectPrvcAcsHstryList(prvcAcsHstry);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("prvcAcsHstryList", selectedPrvcAcsHstryList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_개인정보접근이력기본 저장", description = "대국민포털_개인정보접근이력기본 저장한다.")
    @PostMapping(value="/savePrvcAcsHstry")
    @ResponseBody
    public Map<String,Object> savePrvcAcsHstry(@RequestBody List<PrvcAcsHstryPVO> prvcAcsHstryList)
    {
        int prvcAcsHstryListCount = prvcAcsHstryList.size();

        int saveCnt = 0;
        PrvcAcsHstryPVO prvcAcsHstry = null;

        for(int i=0;i<prvcAcsHstryListCount;i++)
        {
            prvcAcsHstry = prvcAcsHstryList.get(i);

            prvcAcsHstryService.savePrvcAcsHstry(prvcAcsHstry);
            saveCnt++;

            prvcAcsHstry = null;
        }

//        List<PrvcAcsHstryRVO> selectedPrvcAcsHstryList = prvcAcsHstryService.selectPrvcAcsHstryList(prvcAcsHstry);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("prvcAcsHstryList", selectedPrvcAcsHstryList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_개인정보접근이력기본 삭제", description = "대국민포털_개인정보접근이력기본 삭제한다.")
    @PostMapping(value="/deletePrvcAcsHstry")
    @ResponseBody
    public Map<String,Object> deletePrvcAcsHstry(@RequestBody PrvcAcsHstryDVO prvcAcsHstryDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = prvcAcsHstryService.deletePrvcAcsHstry(prvcAcsHstryDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

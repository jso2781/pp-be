package kr.go.kids.domain.pp.faq.controller;

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
import kr.go.kids.domain.pp.faq.service.FaqService;
import kr.go.kids.domain.pp.faq.vo.FaqDVO;
import kr.go.kids.domain.pp.faq.vo.FaqPVO;
import kr.go.kids.domain.pp.faq.vo.FaqRVO;

@Tag(name = "FaqController", description = "대국민포털_FAQ기본 관리")
@RestController
@RequestMapping(value="/api/faq")
public class FaqController
{
    @Autowired
    private FaqService faqService;

    @Operation(summary = "대국민포털_FAQ기본 조회", description = "대국민포털_FAQ기본 조회한다.")
    @PostMapping(value="/getFaq")
    @ResponseBody
    public ResponseEntity<FaqRVO> getFaq(@RequestBody FaqPVO faqPVO)
    {
        FaqRVO faq = faqService.getFaq(faqPVO);

        return ResponseEntity.ok(faq);
    }

    @Operation(summary = "대국민포털_FAQ기본 입력", description = "대국민포털_FAQ기본 입력한다.")
    @PostMapping(value="/insertFaq")
    @ResponseBody
    public Map<String,Object> insertFaq(@RequestBody List<FaqPVO> faqList)
    {
        int faqListCount = faqList.size();

        int insertCnt = 0;
        FaqPVO faq = null;

        for(int i=0;i<faqListCount;i++)
        {
            faq = faqList.get(i);

            faqService.insertFaq(faq);
            insertCnt++;

            faq = null;
        }

//        List<FaqRVO> selectedFaqList = faqService.selectFaqList(faq);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("faqList", selectedFaqList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_FAQ기본 수정", description = "대국민포털_FAQ기본 수정한다.")
    @PostMapping(value="/updateFaq")
    @ResponseBody
    public Map<String,Object> updateFaq(@RequestBody List<FaqPVO> faqList)
    {
        int faqListCount = faqList.size();

        int updateCnt = 0;
        FaqPVO faq = null;

        for(int i=0;i<faqListCount;i++)
        {
            faq = faqList.get(i);

            faqService.updateFaq(faq);
            updateCnt++;

            faq = null;
        }

//        List<FaqRVO> selectedFaqList = faqService.selectFaqList(faq);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("faqList", selectedFaqList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_FAQ기본 저장", description = "대국민포털_FAQ기본 저장한다.")
    @PostMapping(value="/saveFaq")
    @ResponseBody
    public Map<String,Object> saveFaq(@RequestBody List<FaqPVO> faqList)
    {
        int faqListCount = faqList.size();

        int saveCnt = 0;
        FaqPVO faq = null;

        for(int i=0;i<faqListCount;i++)
        {
            faq = faqList.get(i);

            faqService.saveFaq(faq);
            saveCnt++;

            faq = null;
        }

//        List<FaqRVO> selectedFaqList = faqService.selectFaqList(faq);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("faqList", selectedFaqList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_FAQ기본 삭제", description = "대국민포털_FAQ기본 삭제한다.")
    @PostMapping(value="/deleteFaq")
    @ResponseBody
    public Map<String,Object> deleteFaq(@RequestBody FaqDVO faqDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = faqService.deleteFaq(faqDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

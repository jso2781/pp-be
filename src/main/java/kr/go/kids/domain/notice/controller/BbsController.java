package kr.go.kids.domain.notice.controller;

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
import kr.go.kids.domain.notice.service.BbsService;
import kr.go.kids.domain.notice.vo.BbsDVO;
import kr.go.kids.domain.notice.vo.BbsPVO;
import kr.go.kids.domain.notice.vo.BbsRVO;

@Tag(name = "BbsController", description = "대국민포털_게시판기본 관리")
@RestController
@RequestMapping(value="/api/notice")
public class BbsController
{
    @Autowired
    private BbsService bbsService;

    @Operation(summary = "대국민포털_게시판기본 조회", description = "대국민포털_게시판기본 조회한다.")
    @PostMapping(value="/getBbs")
    @ResponseBody
    public ResponseEntity<BbsRVO> getBbs(@RequestBody BbsPVO bbsPVO)
    {
        BbsRVO bbs = bbsService.getBbs(bbsPVO);

        return ResponseEntity.ok(bbs);
    }

    @Operation(summary = "대국민포털_게시판기본 입력", description = "대국민포털_게시판기본 입력한다.")
    @PostMapping(value="/insertBbs")
    @ResponseBody
    public Map<String,Object> insertBbs(@RequestBody List<BbsPVO> bbsList)
    {
        int bbsListCount = bbsList.size();

        int insertCnt = 0;
        BbsPVO bbs = null;

        for(int i=0;i<bbsListCount;i++)
        {
            bbs = bbsList.get(i);

            bbsService.insertBbs(bbs);
            insertCnt++;

            bbs = null;
        }

//        List<BbsRVO> selectedBbsList = bbsService.selectBbsList(bbs);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("bbsList", selectedBbsList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_게시판기본 수정", description = "대국민포털_게시판기본 수정한다.")
    @PostMapping(value="/updateBbs")
    @ResponseBody
    public Map<String,Object> updateBbs(@RequestBody List<BbsPVO> bbsList)
    {
        int bbsListCount = bbsList.size();

        int updateCnt = 0;
        BbsPVO bbs = null;

        for(int i=0;i<bbsListCount;i++)
        {
            bbs = bbsList.get(i);

            bbsService.updateBbs(bbs);
            updateCnt++;

            bbs = null;
        }

//        List<BbsRVO> selectedBbsList = bbsService.selectBbsList(bbs);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("bbsList", selectedBbsList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_게시판기본 저장", description = "대국민포털_게시판기본 저장한다.")
    @PostMapping(value="/saveBbs")
    @ResponseBody
    public Map<String,Object> saveBbs(@RequestBody List<BbsPVO> bbsList)
    {
        int bbsListCount = bbsList.size();

        int saveCnt = 0;
        BbsPVO bbs = null;

        for(int i=0;i<bbsListCount;i++)
        {
            bbs = bbsList.get(i);

            bbsService.saveBbs(bbs);
            saveCnt++;

            bbs = null;
        }

//        List<BbsRVO> selectedBbsList = bbsService.selectBbsList(bbs);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("bbsList", selectedBbsList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_게시판기본 삭제", description = "대국민포털_게시판기본 삭제한다.")
    @PostMapping(value="/deleteBbs")
    @ResponseBody
    public Map<String,Object> deleteBbs(@RequestBody BbsDVO bbsDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = bbsService.deleteBbs(bbsDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

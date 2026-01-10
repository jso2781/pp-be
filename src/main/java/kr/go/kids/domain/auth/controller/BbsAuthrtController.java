package kr.go.kids.domain.auth.controller;

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
import kr.go.kids.domain.auth.service.BbsAuthrtService;
import kr.go.kids.domain.auth.vo.BbsAuthrtDVO;
import kr.go.kids.domain.auth.vo.BbsAuthrtPVO;
import kr.go.kids.domain.auth.vo.BbsAuthrtRVO;

@Tag(name = "BbsAuthrtController", description = "대국민포털_게시판권한기본 관리")
@RestController
@RequestMapping(value="/api/auth")
public class BbsAuthrtController
{
    @Autowired
    private BbsAuthrtService bbsAuthrtService;

    @Operation(summary = "대국민포털_게시판권한기본 조회", description = "대국민포털_게시판권한기본 조회한다.")
    @PostMapping(value="/getBbsAuthrt")
    @ResponseBody
    public ResponseEntity<BbsAuthrtRVO> getBbsAuthrt(@RequestBody BbsAuthrtPVO bbsAuthrtPVO)
    {
        BbsAuthrtRVO bbsAuthrt = bbsAuthrtService.getBbsAuthrt(bbsAuthrtPVO);

        return ResponseEntity.ok(bbsAuthrt);
    }

    @Operation(summary = "대국민포털_게시판권한기본 입력", description = "대국민포털_게시판권한기본 입력한다.")
    @PostMapping(value="/insertBbsAuthrt")
    @ResponseBody
    public Map<String,Object> insertBbsAuthrt(@RequestBody List<BbsAuthrtPVO> bbsAuthrtList)
    {
        int bbsAuthrtListCount = bbsAuthrtList.size();

        int insertCnt = 0;
        BbsAuthrtPVO bbsAuthrt = null;

        for(int i=0;i<bbsAuthrtListCount;i++)
        {
            bbsAuthrt = bbsAuthrtList.get(i);

            bbsAuthrtService.insertBbsAuthrt(bbsAuthrt);
            insertCnt++;

            bbsAuthrt = null;
        }

//        List<BbsAuthrtRVO> selectedBbsAuthrtList = bbsAuthrtService.selectBbsAuthrtList(bbsAuthrt);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("bbsAuthrtList", selectedBbsAuthrtList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_게시판권한기본 수정", description = "대국민포털_게시판권한기본 수정한다.")
    @PostMapping(value="/updateBbsAuthrt")
    @ResponseBody
    public Map<String,Object> updateBbsAuthrt(@RequestBody List<BbsAuthrtPVO> bbsAuthrtList)
    {
        int bbsAuthrtListCount = bbsAuthrtList.size();

        int updateCnt = 0;
        BbsAuthrtPVO bbsAuthrt = null;

        for(int i=0;i<bbsAuthrtListCount;i++)
        {
            bbsAuthrt = bbsAuthrtList.get(i);

            bbsAuthrtService.updateBbsAuthrt(bbsAuthrt);
            updateCnt++;

            bbsAuthrt = null;
        }

//        List<BbsAuthrtRVO> selectedBbsAuthrtList = bbsAuthrtService.selectBbsAuthrtList(bbsAuthrt);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("bbsAuthrtList", selectedBbsAuthrtList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_게시판권한기본 저장", description = "대국민포털_게시판권한기본 저장한다.")
    @PostMapping(value="/saveBbsAuthrt")
    @ResponseBody
    public Map<String,Object> saveBbsAuthrt(@RequestBody List<BbsAuthrtPVO> bbsAuthrtList)
    {
        int bbsAuthrtListCount = bbsAuthrtList.size();

        int saveCnt = 0;
        BbsAuthrtPVO bbsAuthrt = null;

        for(int i=0;i<bbsAuthrtListCount;i++)
        {
            bbsAuthrt = bbsAuthrtList.get(i);

            bbsAuthrtService.saveBbsAuthrt(bbsAuthrt);
            saveCnt++;

            bbsAuthrt = null;
        }

//        List<BbsAuthrtRVO> selectedBbsAuthrtList = bbsAuthrtService.selectBbsAuthrtList(bbsAuthrt);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("bbsAuthrtList", selectedBbsAuthrtList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_게시판권한기본 삭제", description = "대국민포털_게시판권한기본 삭제한다.")
    @PostMapping(value="/deleteBbsAuthrt")
    @ResponseBody
    public Map<String,Object> deleteBbsAuthrt(@RequestBody BbsAuthrtDVO bbsAuthrtDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = bbsAuthrtService.deleteBbsAuthrt(bbsAuthrtDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

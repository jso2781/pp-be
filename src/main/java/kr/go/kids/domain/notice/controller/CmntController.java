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
import kr.go.kids.domain.notice.service.CmntService;
import kr.go.kids.domain.notice.vo.CmntDVO;
import kr.go.kids.domain.notice.vo.CmntPVO;
import kr.go.kids.domain.notice.vo.CmntRVO;

@Tag(name = "CmntController", description = "대국민포털_댓글기본 관리")
@RestController
@RequestMapping(value="/api/notice")
public class CmntController
{
    @Autowired
    private CmntService cmntService;

    @Operation(summary = "대국민포털_댓글기본 조회", description = "대국민포털_댓글기본 조회한다.")
    @PostMapping(value="/getCmnt")
    @ResponseBody
    public ResponseEntity<CmntRVO> getCmnt(@RequestBody CmntPVO cmntPVO)
    {
        CmntRVO cmnt = cmntService.getCmnt(cmntPVO);

        return ResponseEntity.ok(cmnt);
    }

    @Operation(summary = "대국민포털_댓글기본 입력", description = "대국민포털_댓글기본 입력한다.")
    @PostMapping(value="/insertCmnt")
    @ResponseBody
    public Map<String,Object> insertCmnt(@RequestBody List<CmntPVO> cmntList)
    {
        int cmntListCount = cmntList.size();

        int insertCnt = 0;
        CmntPVO cmnt = null;

        for(int i=0;i<cmntListCount;i++)
        {
            cmnt = cmntList.get(i);

            cmntService.insertCmnt(cmnt);
            insertCnt++;

            cmnt = null;
        }

//        List<CmntRVO> selectedCmntList = cmntService.selectCmntList(cmnt);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("cmntList", selectedCmntList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_댓글기본 수정", description = "대국민포털_댓글기본 수정한다.")
    @PostMapping(value="/updateCmnt")
    @ResponseBody
    public Map<String,Object> updateCmnt(@RequestBody List<CmntPVO> cmntList)
    {
        int cmntListCount = cmntList.size();

        int updateCnt = 0;
        CmntPVO cmnt = null;

        for(int i=0;i<cmntListCount;i++)
        {
            cmnt = cmntList.get(i);

            cmntService.updateCmnt(cmnt);
            updateCnt++;

            cmnt = null;
        }

//        List<CmntRVO> selectedCmntList = cmntService.selectCmntList(cmnt);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("cmntList", selectedCmntList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_댓글기본 저장", description = "대국민포털_댓글기본 저장한다.")
    @PostMapping(value="/saveCmnt")
    @ResponseBody
    public Map<String,Object> saveCmnt(@RequestBody List<CmntPVO> cmntList)
    {
        int cmntListCount = cmntList.size();

        int saveCnt = 0;
        CmntPVO cmnt = null;

        for(int i=0;i<cmntListCount;i++)
        {
            cmnt = cmntList.get(i);

            cmntService.saveCmnt(cmnt);
            saveCnt++;

            cmnt = null;
        }

//        List<CmntRVO> selectedCmntList = cmntService.selectCmntList(cmnt);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("cmntList", selectedCmntList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_댓글기본 삭제", description = "대국민포털_댓글기본 삭제한다.")
    @PostMapping(value="/deleteCmnt")
    @ResponseBody
    public Map<String,Object> deleteCmnt(@RequestBody CmntDVO cmntDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = cmntService.deleteCmnt(cmntDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

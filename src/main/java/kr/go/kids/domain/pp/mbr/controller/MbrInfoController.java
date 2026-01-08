package kr.go.kids.domain.pp.mbr.controller;

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
import kr.go.kids.domain.pp.mbr.service.MbrInfoService;
import kr.go.kids.domain.pp.mbr.vo.MbrInfoDVO;
import kr.go.kids.domain.pp.mbr.vo.MbrInfoPVO;
import kr.go.kids.domain.pp.mbr.vo.MbrInfoRVO;

@Tag(name = "MbrInfoController", description = "대국민포털_회원정보기본 관리")
@RestController
@RequestMapping(value="/api/mbr")
public class MbrInfoController
{
    @Autowired
    private MbrInfoService mbrInfoService;

    @Operation(summary = "대국민포털_회원정보기본 조회", description = "대국민포털_회원정보기본 조회한다.")
    @PostMapping(value="/getMbrInfo")
    @ResponseBody
    public ResponseEntity<MbrInfoRVO> getMbrInfo(@RequestBody MbrInfoPVO mbrInfoPVO)
    {
        MbrInfoRVO mbrInfo = mbrInfoService.getMbrInfo(mbrInfoPVO);

        return ResponseEntity.ok(mbrInfo);
    }

    @Operation(summary = "대국민포털_회원정보기본 입력", description = "대국민포털_회원정보기본 입력한다.")
    @PostMapping(value="/insertMbrInfo")
    @ResponseBody
    public Map<String,Object> insertMbrInfo(@RequestBody List<MbrInfoPVO> mbrInfoList)
    {
        int mbrInfoListCount = mbrInfoList.size();

        int insertCnt = 0;
        MbrInfoPVO mbrInfo = null;

        for(int i=0;i<mbrInfoListCount;i++)
        {
            mbrInfo = mbrInfoList.get(i);

            mbrInfoService.insertMbrInfo(mbrInfo);
            insertCnt++;

            mbrInfo = null;
        }

//        List<MbrInfoRVO> selectedMbrInfoList = mbrInfoService.selectMbrInfoList(mbrInfo);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("mbrInfoList", selectedMbrInfoList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_회원정보기본 수정", description = "대국민포털_회원정보기본 수정한다.")
    @PostMapping(value="/updateMbrInfo")
    @ResponseBody
    public Map<String,Object> updateMbrInfo(@RequestBody List<MbrInfoPVO> mbrInfoList)
    {
        int mbrInfoListCount = mbrInfoList.size();

        int updateCnt = 0;
        MbrInfoPVO mbrInfo = null;

        for(int i=0;i<mbrInfoListCount;i++)
        {
            mbrInfo = mbrInfoList.get(i);

            mbrInfoService.updateMbrInfo(mbrInfo);
            updateCnt++;

            mbrInfo = null;
        }

//        List<MbrInfoRVO> selectedMbrInfoList = mbrInfoService.selectMbrInfoList(mbrInfo);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("mbrInfoList", selectedMbrInfoList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_회원정보기본 저장", description = "대국민포털_회원정보기본 저장한다.")
    @PostMapping(value="/saveMbrInfo")
    @ResponseBody
    public Map<String,Object> saveMbrInfo(@RequestBody List<MbrInfoPVO> mbrInfoList)
    {
        int mbrInfoListCount = mbrInfoList.size();

        int saveCnt = 0;
        MbrInfoPVO mbrInfo = null;

        for(int i=0;i<mbrInfoListCount;i++)
        {
            mbrInfo = mbrInfoList.get(i);

            mbrInfoService.saveMbrInfo(mbrInfo);
            saveCnt++;

            mbrInfo = null;
        }

//        List<MbrInfoRVO> selectedMbrInfoList = mbrInfoService.selectMbrInfoList(mbrInfo);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("mbrInfoList", selectedMbrInfoList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_회원정보기본 삭제", description = "대국민포털_회원정보기본 삭제한다.")
    @PostMapping(value="/deleteMbrInfo")
    @ResponseBody
    public Map<String,Object> deleteMbrInfo(@RequestBody MbrInfoDVO mbrInfoDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = mbrInfoService.deleteMbrInfo(mbrInfoDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

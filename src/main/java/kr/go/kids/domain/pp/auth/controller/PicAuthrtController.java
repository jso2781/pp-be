package kr.go.kids.domain.pp.auth.controller;

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
import kr.go.kids.domain.pp.auth.service.PicAuthrtService;
import kr.go.kids.domain.pp.auth.vo.PicAuthrtDVO;
import kr.go.kids.domain.pp.auth.vo.PicAuthrtPVO;
import kr.go.kids.domain.pp.auth.vo.PicAuthrtRVO;

@Tag(name = "PicAuthrtController", description = "대국민포털_담당자권한기본 관리")
@RestController
@RequestMapping(value="/api/auth")
public class PicAuthrtController
{
    @Autowired
    private PicAuthrtService picAuthrtService;

    @Operation(summary = "대국민포털_담당자권한기본 조회", description = "대국민포털_담당자권한기본 조회한다.")
    @PostMapping(value="/getPicAuthrt")
    @ResponseBody
    public ResponseEntity<PicAuthrtRVO> getPicAuthrt(@RequestBody PicAuthrtPVO picAuthrtPVO)
    {
        PicAuthrtRVO picAuthrt = picAuthrtService.getPicAuthrt(picAuthrtPVO);

        return ResponseEntity.ok(picAuthrt);
    }

    @Operation(summary = "대국민포털_담당자권한기본 입력", description = "대국민포털_담당자권한기본 입력한다.")
    @PostMapping(value="/insertPicAuthrt")
    @ResponseBody
    public Map<String,Object> insertPicAuthrt(@RequestBody List<PicAuthrtPVO> picAuthrtList)
    {
        int picAuthrtListCount = picAuthrtList.size();

        int insertCnt = 0;
        PicAuthrtPVO picAuthrt = null;

        for(int i=0;i<picAuthrtListCount;i++)
        {
            picAuthrt = picAuthrtList.get(i);

            picAuthrtService.insertPicAuthrt(picAuthrt);
            insertCnt++;

            picAuthrt = null;
        }

//        List<PicAuthrtRVO> selectedPicAuthrtList = picAuthrtService.selectPicAuthrtList(picAuthrt);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("picAuthrtList", selectedPicAuthrtList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_담당자권한기본 수정", description = "대국민포털_담당자권한기본 수정한다.")
    @PostMapping(value="/updatePicAuthrt")
    @ResponseBody
    public Map<String,Object> updatePicAuthrt(@RequestBody List<PicAuthrtPVO> picAuthrtList)
    {
        int picAuthrtListCount = picAuthrtList.size();

        int updateCnt = 0;
        PicAuthrtPVO picAuthrt = null;

        for(int i=0;i<picAuthrtListCount;i++)
        {
            picAuthrt = picAuthrtList.get(i);

            picAuthrtService.updatePicAuthrt(picAuthrt);
            updateCnt++;

            picAuthrt = null;
        }

//        List<PicAuthrtRVO> selectedPicAuthrtList = picAuthrtService.selectPicAuthrtList(picAuthrt);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("picAuthrtList", selectedPicAuthrtList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_담당자권한기본 저장", description = "대국민포털_담당자권한기본 저장한다.")
    @PostMapping(value="/savePicAuthrt")
    @ResponseBody
    public Map<String,Object> savePicAuthrt(@RequestBody List<PicAuthrtPVO> picAuthrtList)
    {
        int picAuthrtListCount = picAuthrtList.size();

        int saveCnt = 0;
        PicAuthrtPVO picAuthrt = null;

        for(int i=0;i<picAuthrtListCount;i++)
        {
            picAuthrt = picAuthrtList.get(i);

            picAuthrtService.savePicAuthrt(picAuthrt);
            saveCnt++;

            picAuthrt = null;
        }

//        List<PicAuthrtRVO> selectedPicAuthrtList = picAuthrtService.selectPicAuthrtList(picAuthrt);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("picAuthrtList", selectedPicAuthrtList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_담당자권한기본 삭제", description = "대국민포털_담당자권한기본 삭제한다.")
    @PostMapping(value="/deletePicAuthrt")
    @ResponseBody
    public Map<String,Object> deletePicAuthrt(@RequestBody PicAuthrtDVO picAuthrtDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = picAuthrtService.deletePicAuthrt(picAuthrtDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

package kr.or.kids.domain.pp.com.controller;

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
import kr.or.kids.domain.pp.com.service.ComCdService;
import kr.or.kids.domain.pp.com.vo.ComCdDVO;
import kr.or.kids.domain.pp.com.vo.ComCdPVO;
import kr.or.kids.domain.pp.com.vo.ComCdRVO;

@Tag(name = "ComCdController", description = "공통_공통코드기본 관리")
@RestController
@RequestMapping(value="/api/com")
public class ComCdController
{
    @Autowired
    private ComCdService comCdService;

    @Operation(summary = "공통_공통코드기본 조회", description = "공통_공통코드기본 조회한다.")
    @PostMapping(value="/getComCd")
    @ResponseBody
    public ResponseEntity<ComCdRVO> getComCd(@RequestBody ComCdPVO comCdPVO)
    {
        ComCdRVO comCd = comCdService.getComCd(comCdPVO);

        return ResponseEntity.ok(comCd);
    }

    @Operation(summary = "공통_공통코드기본 입력", description = "공통_공통코드기본 입력한다.")
    @PostMapping(value="/insertComCd")
    @ResponseBody
    public Map<String,Object> insertComCd(@RequestBody List<ComCdPVO> comCdList)
    {
        int comCdListCount = comCdList.size();

        int insertCnt = 0;
        ComCdPVO comCd = null;

        for(int i=0;i<comCdListCount;i++)
        {
            comCd = comCdList.get(i);

            comCdService.insertComCd(comCd);
            insertCnt++;

            comCd = null;
        }

//        List<ComCdRVO> selectedComCdList = comCdService.selectComCdList(comCd);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("comCdList", selectedComCdList);

        return resultMap;
    }

    @Operation(summary = "공통_공통코드기본 수정", description = "공통_공통코드기본 수정한다.")
    @PostMapping(value="/updateComCd")
    @ResponseBody
    public Map<String,Object> updateComCd(@RequestBody List<ComCdPVO> comCdList)
    {
        int comCdListCount = comCdList.size();

        int updateCnt = 0;
        ComCdPVO comCd = null;

        for(int i=0;i<comCdListCount;i++)
        {
            comCd = comCdList.get(i);

            comCdService.updateComCd(comCd);
            updateCnt++;

            comCd = null;
        }

//        List<ComCdRVO> selectedComCdList = comCdService.selectComCdList(comCd);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("comCdList", selectedComCdList);

        return resultMap;
    }

    @Operation(summary = "공통_공통코드기본 저장", description = "공통_공통코드기본 저장한다.")
    @PostMapping(value="/saveComCd")
    @ResponseBody
    public Map<String,Object> saveComCd(@RequestBody List<ComCdPVO> comCdList)
    {
        int comCdListCount = comCdList.size();

        int saveCnt = 0;
        ComCdPVO comCd = null;

        for(int i=0;i<comCdListCount;i++)
        {
            comCd = comCdList.get(i);

            comCdService.saveComCd(comCd);
            saveCnt++;

            comCd = null;
        }

//        List<ComCdRVO> selectedComCdList = comCdService.selectComCdList(comCd);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("comCdList", selectedComCdList);

        return resultMap;
    }

    @Operation(summary = "공통_공통코드기본 삭제", description = "공통_공통코드기본 삭제한다.")
    @PostMapping(value="/deleteComCd")
    @ResponseBody
    public Map<String,Object> deleteComCd(@RequestBody ComCdDVO comCdDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = comCdService.deleteComCd(comCdDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

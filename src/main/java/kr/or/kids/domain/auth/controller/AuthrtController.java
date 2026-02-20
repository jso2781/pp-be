package kr.or.kids.domain.auth.controller;

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
import kr.or.kids.domain.auth.service.AuthrtService;
import kr.or.kids.domain.auth.vo.AuthrtDVO;
import kr.or.kids.domain.auth.vo.AuthrtPVO;
import kr.or.kids.domain.auth.vo.AuthrtRVO;

@Tag(name = "AuthrtController", description = "대국민포털_권한기본 관리")
@RestController
@RequestMapping(value="/api/auth")
public class AuthrtController
{
    @Autowired
    private AuthrtService authrtService;

    @Operation(summary = "대국민포털_권한기본 조회", description = "대국민포털_권한기본 조회한다.")
    @PostMapping(value="/getAuthrt")
    @ResponseBody
    public ResponseEntity<AuthrtRVO> getAuthrt(@RequestBody AuthrtPVO authrtPVO)
    {
        AuthrtRVO authrt = authrtService.getAuthrt(authrtPVO);

        return ResponseEntity.ok(authrt);
    }

    @Operation(summary = "대국민포털_권한기본 입력", description = "대국민포털_권한기본 입력한다.")
    @PostMapping(value="/insertAuthrt")
    @ResponseBody
    public Map<String,Object> insertAuthrt(@RequestBody List<AuthrtPVO> authrtList)
    {
        int authrtListCount = authrtList.size();

        int insertCnt = 0;
        AuthrtPVO authrt = null;

        for(int i=0;i<authrtListCount;i++)
        {
            authrt = authrtList.get(i);

            authrtService.insertAuthrt(authrt);
            insertCnt++;

            authrt = null;
        }

//        List<AuthrtRVO> selectedAuthrtList = authrtService.selectAuthrtList(authrt);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("authrtList", selectedAuthrtList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_권한기본 수정", description = "대국민포털_권한기본 수정한다.")
    @PostMapping(value="/updateAuthrt")
    @ResponseBody
    public Map<String,Object> updateAuthrt(@RequestBody List<AuthrtPVO> authrtList)
    {
        int authrtListCount = authrtList.size();

        int updateCnt = 0;
        AuthrtPVO authrt = null;

        for(int i=0;i<authrtListCount;i++)
        {
            authrt = authrtList.get(i);

            authrtService.updateAuthrt(authrt);
            updateCnt++;

            authrt = null;
        }

//        List<AuthrtRVO> selectedAuthrtList = authrtService.selectAuthrtList(authrt);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("authrtList", selectedAuthrtList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_권한기본 저장", description = "대국민포털_권한기본 저장한다.")
    @PostMapping(value="/saveAuthrt")
    @ResponseBody
    public Map<String,Object> saveAuthrt(@RequestBody List<AuthrtPVO> authrtList)
    {
        int authrtListCount = authrtList.size();

        int saveCnt = 0;
        AuthrtPVO authrt = null;

        for(int i=0;i<authrtListCount;i++)
        {
            authrt = authrtList.get(i);

            authrtService.saveAuthrt(authrt);
            saveCnt++;

            authrt = null;
        }

//        List<AuthrtRVO> selectedAuthrtList = authrtService.selectAuthrtList(authrt);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("authrtList", selectedAuthrtList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_권한기본 삭제", description = "대국민포털_권한기본 삭제한다.")
    @PostMapping(value="/deleteAuthrt")
    @ResponseBody
    public Map<String,Object> deleteAuthrt(@RequestBody AuthrtDVO authrtDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = authrtService.deleteAuthrt(authrtDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

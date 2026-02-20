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
import kr.or.kids.domain.auth.service.AuthrtChgHstryService;
import kr.or.kids.domain.auth.vo.AuthrtChgHstryDVO;
import kr.or.kids.domain.auth.vo.AuthrtChgHstryPVO;
import kr.or.kids.domain.auth.vo.AuthrtChgHstryRVO;

@Tag(name = "AuthrtChgHstryController", description = "대국민포털_권한변경이력기본 관리")
@RestController
@RequestMapping(value="/api/auth")
public class AuthrtChgHstryController
{
    @Autowired
    private AuthrtChgHstryService authrtChgHstryService;

    @Operation(summary = "대국민포털_권한변경이력기본 조회", description = "대국민포털_권한변경이력기본 조회한다.")
    @PostMapping(value="/getAuthrtChgHstry")
    @ResponseBody
    public ResponseEntity<AuthrtChgHstryRVO> getAuthrtChgHstry(@RequestBody AuthrtChgHstryPVO authrtChgHstryPVO)
    {
        AuthrtChgHstryRVO authrtChgHstry = authrtChgHstryService.getAuthrtChgHstry(authrtChgHstryPVO);

        return ResponseEntity.ok(authrtChgHstry);
    }

    @Operation(summary = "대국민포털_권한변경이력기본 입력", description = "대국민포털_권한변경이력기본 입력한다.")
    @PostMapping(value="/insertAuthrtChgHstry")
    @ResponseBody
    public Map<String,Object> insertAuthrtChgHstry(@RequestBody List<AuthrtChgHstryPVO> authrtChgHstryList)
    {
        int authrtChgHstryListCount = authrtChgHstryList.size();

        int insertCnt = 0;
        AuthrtChgHstryPVO authrtChgHstry = null;

        for(int i=0;i<authrtChgHstryListCount;i++)
        {
            authrtChgHstry = authrtChgHstryList.get(i);

            authrtChgHstryService.insertAuthrtChgHstry(authrtChgHstry);
            insertCnt++;

            authrtChgHstry = null;
        }

//        List<AuthrtChgHstryRVO> selectedAuthrtChgHstryList = authrtChgHstryService.selectAuthrtChgHstryList(authrtChgHstry);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("authrtChgHstryList", selectedAuthrtChgHstryList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_권한변경이력기본 수정", description = "대국민포털_권한변경이력기본 수정한다.")
    @PostMapping(value="/updateAuthrtChgHstry")
    @ResponseBody
    public Map<String,Object> updateAuthrtChgHstry(@RequestBody List<AuthrtChgHstryPVO> authrtChgHstryList)
    {
        int authrtChgHstryListCount = authrtChgHstryList.size();

        int updateCnt = 0;
        AuthrtChgHstryPVO authrtChgHstry = null;

        for(int i=0;i<authrtChgHstryListCount;i++)
        {
            authrtChgHstry = authrtChgHstryList.get(i);

            authrtChgHstryService.updateAuthrtChgHstry(authrtChgHstry);
            updateCnt++;

            authrtChgHstry = null;
        }

//        List<AuthrtChgHstryRVO> selectedAuthrtChgHstryList = authrtChgHstryService.selectAuthrtChgHstryList(authrtChgHstry);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("authrtChgHstryList", selectedAuthrtChgHstryList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_권한변경이력기본 저장", description = "대국민포털_권한변경이력기본 저장한다.")
    @PostMapping(value="/saveAuthrtChgHstry")
    @ResponseBody
    public Map<String,Object> saveAuthrtChgHstry(@RequestBody List<AuthrtChgHstryPVO> authrtChgHstryList)
    {
        int authrtChgHstryListCount = authrtChgHstryList.size();

        int saveCnt = 0;
        AuthrtChgHstryPVO authrtChgHstry = null;

        for(int i=0;i<authrtChgHstryListCount;i++)
        {
            authrtChgHstry = authrtChgHstryList.get(i);

            authrtChgHstryService.saveAuthrtChgHstry(authrtChgHstry);
            saveCnt++;

            authrtChgHstry = null;
        }

//        List<AuthrtChgHstryRVO> selectedAuthrtChgHstryList = authrtChgHstryService.selectAuthrtChgHstryList(authrtChgHstry);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("authrtChgHstryList", selectedAuthrtChgHstryList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_권한변경이력기본 삭제", description = "대국민포털_권한변경이력기본 삭제한다.")
    @PostMapping(value="/deleteAuthrtChgHstry")
    @ResponseBody
    public Map<String,Object> deleteAuthrtChgHstry(@RequestBody AuthrtChgHstryDVO authrtChgHstryDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = authrtChgHstryService.deleteAuthrtChgHstry(authrtChgHstryDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

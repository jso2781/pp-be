package kr.go.kids.domain.dgstfn.controller;

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
import kr.go.kids.domain.dgstfn.service.DgstfnExmnService;
import kr.go.kids.domain.dgstfn.vo.DgstfnExmnDVO;
import kr.go.kids.domain.dgstfn.vo.DgstfnExmnPVO;
import kr.go.kids.domain.dgstfn.vo.DgstfnExmnRVO;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;

@Tag(name = "DgstfnExmnController", description = "대국민포털_만족도조사기본 관리")
@RestController
@RequestMapping(value="/api/dgstfn")
public class DgstfnExmnController
{
    @Autowired
    private DgstfnExmnService dgstfnExmnService;

    @Operation(summary = "대국민포털_만족도조사기본 조회", description = "대국민포털_만족도조사기본 조회한다.")
    @PostMapping(value="/getDgstfnExmn")
    @ResponseBody
    public ResponseEntity<DgstfnExmnRVO> getDgstfnExmn(@RequestBody DgstfnExmnPVO dgstfnExmnPVO)
    {
        DgstfnExmnRVO dgstfnExmn = dgstfnExmnService.getDgstfnExmn(dgstfnExmnPVO);

        return ResponseEntity.ok(dgstfnExmn);
    }

    @Operation(summary = "대국민포털_만족도조사기본 입력", description = "대국민포털_만족도조사기본 입력한다.")
    @PostMapping(value="/insertDgstfnExmn")
    @ResponseBody
    public ResponseEntity<ApiPrnDto> insertDgstfnExmn(@RequestBody DgstfnExmnPVO dgstfnExmn)
    {
        ApiPrnDto apiPrnDto = dgstfnExmnService.insertDgstfnExmn(dgstfnExmn);

        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    @Operation(summary = "대국민포털_만족도조사기본 수정", description = "대국민포털_만족도조사기본 수정한다.")
    @PostMapping(value="/updateDgstfnExmn")
    @ResponseBody
    public Map<String,Object> updateDgstfnExmn(@RequestBody List<DgstfnExmnPVO> dgstfnExmnList)
    {
        int dgstfnExmnListCount = dgstfnExmnList.size();

        int updateCnt = 0;
        DgstfnExmnPVO dgstfnExmn = null;

        for(int i=0;i<dgstfnExmnListCount;i++)
        {
            dgstfnExmn = dgstfnExmnList.get(i);

            dgstfnExmnService.updateDgstfnExmn(dgstfnExmn);
            updateCnt++;

            dgstfnExmn = null;
        }

//        List<DgstfnExmnRVO> selectedDgstfnExmnList = dgstfnExmnService.selectDgstfnExmnList(dgstfnExmn);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("dgstfnExmnList", selectedDgstfnExmnList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_만족도조사기본 저장", description = "대국민포털_만족도조사기본 저장한다.")
    @PostMapping(value="/saveDgstfnExmn")
    @ResponseBody
    public Map<String,Object> saveDgstfnExmn(@RequestBody List<DgstfnExmnPVO> dgstfnExmnList)
    {
        int dgstfnExmnListCount = dgstfnExmnList.size();

        int saveCnt = 0;
        DgstfnExmnPVO dgstfnExmn = null;

        for(int i=0;i<dgstfnExmnListCount;i++)
        {
            dgstfnExmn = dgstfnExmnList.get(i);

            dgstfnExmnService.saveDgstfnExmn(dgstfnExmn);
            saveCnt++;

            dgstfnExmn = null;
        }

//        List<DgstfnExmnRVO> selectedDgstfnExmnList = dgstfnExmnService.selectDgstfnExmnList(dgstfnExmn);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("dgstfnExmnList", selectedDgstfnExmnList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_만족도조사기본 삭제", description = "대국민포털_만족도조사기본 삭제한다.")
    @PostMapping(value="/deleteDgstfnExmn")
    @ResponseBody
    public Map<String,Object> deleteDgstfnExmn(@RequestBody DgstfnExmnDVO dgstfnExmnDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = dgstfnExmnService.deleteDgstfnExmn(dgstfnExmnDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

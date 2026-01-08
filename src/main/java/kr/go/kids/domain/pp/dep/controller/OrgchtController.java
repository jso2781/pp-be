package kr.go.kids.domain.pp.dep.controller;

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
import kr.go.kids.domain.pp.dep.service.OrgchtService;
import kr.go.kids.domain.pp.dep.vo.OrgchtDVO;
import kr.go.kids.domain.pp.dep.vo.OrgchtPVO;
import kr.go.kids.domain.pp.dep.vo.OrgchtRVO;

@Tag(name = "OrgchtController", description = "대국민포털_KIDS조직도기본 관리")
@RestController
@RequestMapping(value="/api/dep")
public class OrgchtController
{
    @Autowired
    private OrgchtService orgchtService;

    @Operation(summary = "대국민포털_KIDS조직도기본 조회", description = "대국민포털_KIDS조직도기본 조회한다.")
    @PostMapping(value="/getOrgcht")
    @ResponseBody
    public ResponseEntity<OrgchtRVO> getOrgcht(@RequestBody OrgchtPVO orgchtPVO)
    {
        OrgchtRVO orgcht = orgchtService.getOrgcht(orgchtPVO);

        return ResponseEntity.ok(orgcht);
    }

    @Operation(summary = "대국민포털_KIDS조직도기본 입력", description = "대국민포털_KIDS조직도기본 입력한다.")
    @PostMapping(value="/insertOrgcht")
    @ResponseBody
    public Map<String,Object> insertOrgcht(@RequestBody List<OrgchtPVO> orgchtList)
    {
        int orgchtListCount = orgchtList.size();

        int insertCnt = 0;
        OrgchtPVO orgcht = null;

        for(int i=0;i<orgchtListCount;i++)
        {
            orgcht = orgchtList.get(i);

            orgchtService.insertOrgcht(orgcht);
            insertCnt++;

            orgcht = null;
        }

//        List<OrgchtRVO> selectedOrgchtList = orgchtService.selectOrgchtList(orgcht);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("orgchtList", selectedOrgchtList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_KIDS조직도기본 수정", description = "대국민포털_KIDS조직도기본 수정한다.")
    @PostMapping(value="/updateOrgcht")
    @ResponseBody
    public Map<String,Object> updateOrgcht(@RequestBody List<OrgchtPVO> orgchtList)
    {
        int orgchtListCount = orgchtList.size();

        int updateCnt = 0;
        OrgchtPVO orgcht = null;

        for(int i=0;i<orgchtListCount;i++)
        {
            orgcht = orgchtList.get(i);

            orgchtService.updateOrgcht(orgcht);
            updateCnt++;

            orgcht = null;
        }

//        List<OrgchtRVO> selectedOrgchtList = orgchtService.selectOrgchtList(orgcht);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("orgchtList", selectedOrgchtList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_KIDS조직도기본 저장", description = "대국민포털_KIDS조직도기본 저장한다.")
    @PostMapping(value="/saveOrgcht")
    @ResponseBody
    public Map<String,Object> saveOrgcht(@RequestBody List<OrgchtPVO> orgchtList)
    {
        int orgchtListCount = orgchtList.size();

        int saveCnt = 0;
        OrgchtPVO orgcht = null;

        for(int i=0;i<orgchtListCount;i++)
        {
            orgcht = orgchtList.get(i);

            orgchtService.saveOrgcht(orgcht);
            saveCnt++;

            orgcht = null;
        }

//        List<OrgchtRVO> selectedOrgchtList = orgchtService.selectOrgchtList(orgcht);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("orgchtList", selectedOrgchtList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_KIDS조직도기본 삭제", description = "대국민포털_KIDS조직도기본 삭제한다.")
    @PostMapping(value="/deleteOrgcht")
    @ResponseBody
    public Map<String,Object> deleteOrgcht(@RequestBody OrgchtDVO orgchtDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = orgchtService.deleteOrgcht(orgchtDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

package kr.go.kids.domain.pp.form.controller;

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
import kr.go.kids.domain.pp.form.service.FormService;
import kr.go.kids.domain.pp.form.vo.FormDVO;
import kr.go.kids.domain.pp.form.vo.FormPVO;
import kr.go.kids.domain.pp.form.vo.FormRVO;

@Tag(name = "FormController", description = "대국민포털_양식기본 관리")
@RestController
@RequestMapping(value="/api/form")
public class FormController
{
    @Autowired
    private FormService formService;

    @Operation(summary = "대국민포털_양식기본 조회", description = "대국민포털_양식기본 조회한다.")
    @PostMapping(value="/getForm")
    @ResponseBody
    public ResponseEntity<FormRVO> getForm(@RequestBody FormPVO formPVO)
    {
        FormRVO form = formService.getForm(formPVO);

        return ResponseEntity.ok(form);
    }

    @Operation(summary = "대국민포털_양식기본 입력", description = "대국민포털_양식기본 입력한다.")
    @PostMapping(value="/insertForm")
    @ResponseBody
    public Map<String,Object> insertForm(@RequestBody List<FormPVO> formList)
    {
        int formListCount = formList.size();

        int insertCnt = 0;
        FormPVO form = null;

        for(int i=0;i<formListCount;i++)
        {
            form = formList.get(i);

            formService.insertForm(form);
            insertCnt++;

            form = null;
        }

//        List<FormRVO> selectedFormList = formService.selectFormList(form);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("formList", selectedFormList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_양식기본 수정", description = "대국민포털_양식기본 수정한다.")
    @PostMapping(value="/updateForm")
    @ResponseBody
    public Map<String,Object> updateForm(@RequestBody List<FormPVO> formList)
    {
        int formListCount = formList.size();

        int updateCnt = 0;
        FormPVO form = null;

        for(int i=0;i<formListCount;i++)
        {
            form = formList.get(i);

            formService.updateForm(form);
            updateCnt++;

            form = null;
        }

//        List<FormRVO> selectedFormList = formService.selectFormList(form);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("formList", selectedFormList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_양식기본 저장", description = "대국민포털_양식기본 저장한다.")
    @PostMapping(value="/saveForm")
    @ResponseBody
    public Map<String,Object> saveForm(@RequestBody List<FormPVO> formList)
    {
        int formListCount = formList.size();

        int saveCnt = 0;
        FormPVO form = null;

        for(int i=0;i<formListCount;i++)
        {
            form = formList.get(i);

            formService.saveForm(form);
            saveCnt++;

            form = null;
        }

//        List<FormRVO> selectedFormList = formService.selectFormList(form);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("formList", selectedFormList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_양식기본 삭제", description = "대국민포털_양식기본 삭제한다.")
    @PostMapping(value="/deleteForm")
    @ResponseBody
    public Map<String,Object> deleteForm(@RequestBody FormDVO formDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = formService.deleteForm(formDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

package kr.go.kids.domain.pp.exprt.controller;

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
import kr.go.kids.domain.pp.exprt.service.ExprtTaskService;
import kr.go.kids.domain.pp.exprt.vo.ExprtTaskDVO;
import kr.go.kids.domain.pp.exprt.vo.ExprtTaskPVO;
import kr.go.kids.domain.pp.exprt.vo.ExprtTaskRVO;

@Tag(name = "ExprtTaskController", description = "대국민포털_전문가업무기본 관리")
@RestController
@RequestMapping(value="/api/exprt")
public class ExprtTaskController
{
    @Autowired
    private ExprtTaskService exprtTaskService;

    @Operation(summary = "대국민포털_전문가업무기본 조회", description = "대국민포털_전문가업무기본 조회한다.")
    @PostMapping(value="/getExprtTask")
    @ResponseBody
    public ResponseEntity<ExprtTaskRVO> getExprtTask(@RequestBody ExprtTaskPVO exprtTaskPVO)
    {
        ExprtTaskRVO exprtTask = exprtTaskService.getExprtTask(exprtTaskPVO);

        return ResponseEntity.ok(exprtTask);
    }

    @Operation(summary = "대국민포털_전문가업무기본 입력", description = "대국민포털_전문가업무기본 입력한다.")
    @PostMapping(value="/insertExprtTask")
    @ResponseBody
    public Map<String,Object> insertExprtTask(@RequestBody List<ExprtTaskPVO> exprtTaskList)
    {
        int exprtTaskListCount = exprtTaskList.size();

        int insertCnt = 0;
        ExprtTaskPVO exprtTask = null;

        for(int i=0;i<exprtTaskListCount;i++)
        {
            exprtTask = exprtTaskList.get(i);

            exprtTaskService.insertExprtTask(exprtTask);
            insertCnt++;

            exprtTask = null;
        }

//        List<ExprtTaskRVO> selectedExprtTaskList = exprtTaskService.selectExprtTaskList(exprtTask);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("exprtTaskList", selectedExprtTaskList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_전문가업무기본 수정", description = "대국민포털_전문가업무기본 수정한다.")
    @PostMapping(value="/updateExprtTask")
    @ResponseBody
    public Map<String,Object> updateExprtTask(@RequestBody List<ExprtTaskPVO> exprtTaskList)
    {
        int exprtTaskListCount = exprtTaskList.size();

        int updateCnt = 0;
        ExprtTaskPVO exprtTask = null;

        for(int i=0;i<exprtTaskListCount;i++)
        {
            exprtTask = exprtTaskList.get(i);

            exprtTaskService.updateExprtTask(exprtTask);
            updateCnt++;

            exprtTask = null;
        }

//        List<ExprtTaskRVO> selectedExprtTaskList = exprtTaskService.selectExprtTaskList(exprtTask);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("exprtTaskList", selectedExprtTaskList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_전문가업무기본 저장", description = "대국민포털_전문가업무기본 저장한다.")
    @PostMapping(value="/saveExprtTask")
    @ResponseBody
    public Map<String,Object> saveExprtTask(@RequestBody List<ExprtTaskPVO> exprtTaskList)
    {
        int exprtTaskListCount = exprtTaskList.size();

        int saveCnt = 0;
        ExprtTaskPVO exprtTask = null;

        for(int i=0;i<exprtTaskListCount;i++)
        {
            exprtTask = exprtTaskList.get(i);

            exprtTaskService.saveExprtTask(exprtTask);
            saveCnt++;

            exprtTask = null;
        }

//        List<ExprtTaskRVO> selectedExprtTaskList = exprtTaskService.selectExprtTaskList(exprtTask);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("exprtTaskList", selectedExprtTaskList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_전문가업무기본 삭제", description = "대국민포털_전문가업무기본 삭제한다.")
    @PostMapping(value="/deleteExprtTask")
    @ResponseBody
    public Map<String,Object> deleteExprtTask(@RequestBody ExprtTaskDVO exprtTaskDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = exprtTaskService.deleteExprtTask(exprtTaskDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

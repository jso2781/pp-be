package kr.or.kids.domain.inst.controller;

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
import kr.or.kids.domain.inst.service.InstTaskService;
import kr.or.kids.domain.inst.vo.InstTaskDVO;
import kr.or.kids.domain.inst.vo.InstTaskPVO;
import kr.or.kids.domain.inst.vo.InstTaskRVO;

@Tag(name = "InstTaskController", description = "대국민포털_기관업무기본 관리")
@RestController
@RequestMapping(value="/api/inst")
public class InstTaskController
{
    @Autowired
    private InstTaskService instTaskService;

    @Operation(summary = "대국민포털_기관업무기본 조회", description = "대국민포털_기관업무기본 조회한다.")
    @PostMapping(value="/getInstTask")
    @ResponseBody
    public ResponseEntity<InstTaskRVO> getInstTask(@RequestBody InstTaskPVO instTaskPVO)
    {
        InstTaskRVO instTask = instTaskService.getInstTask(instTaskPVO);

        return ResponseEntity.ok(instTask);
    }

    @Operation(summary = "대국민포털_기관업무기본 입력", description = "대국민포털_기관업무기본 입력한다.")
    @PostMapping(value="/insertInstTask")
    @ResponseBody
    public Map<String,Object> insertInstTask(@RequestBody List<InstTaskPVO> instTaskList)
    {
        int instTaskListCount = instTaskList.size();

        int insertCnt = 0;
        InstTaskPVO instTask = null;

        for(int i=0;i<instTaskListCount;i++)
        {
            instTask = instTaskList.get(i);

            instTaskService.insertInstTask(instTask);
            insertCnt++;

            instTask = null;
        }

//        List<InstTaskRVO> selectedInstTaskList = instTaskService.selectInstTaskList(instTask);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("instTaskList", selectedInstTaskList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_기관업무기본 수정", description = "대국민포털_기관업무기본 수정한다.")
    @PostMapping(value="/updateInstTask")
    @ResponseBody
    public Map<String,Object> updateInstTask(@RequestBody List<InstTaskPVO> instTaskList)
    {
        int instTaskListCount = instTaskList.size();

        int updateCnt = 0;
        InstTaskPVO instTask = null;

        for(int i=0;i<instTaskListCount;i++)
        {
            instTask = instTaskList.get(i);

            instTaskService.updateInstTask(instTask);
            updateCnt++;

            instTask = null;
        }

//        List<InstTaskRVO> selectedInstTaskList = instTaskService.selectInstTaskList(instTask);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("instTaskList", selectedInstTaskList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_기관업무기본 저장", description = "대국민포털_기관업무기본 저장한다.")
    @PostMapping(value="/saveInstTask")
    @ResponseBody
    public Map<String,Object> saveInstTask(@RequestBody List<InstTaskPVO> instTaskList)
    {
        int instTaskListCount = instTaskList.size();

        int saveCnt = 0;
        InstTaskPVO instTask = null;

        for(int i=0;i<instTaskListCount;i++)
        {
            instTask = instTaskList.get(i);

            instTaskService.saveInstTask(instTask);
            saveCnt++;

            instTask = null;
        }

//        List<InstTaskRVO> selectedInstTaskList = instTaskService.selectInstTaskList(instTask);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("instTaskList", selectedInstTaskList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_기관업무기본 삭제", description = "대국민포털_기관업무기본 삭제한다.")
    @PostMapping(value="/deleteInstTask")
    @ResponseBody
    public Map<String,Object> deleteInstTask(@RequestBody InstTaskDVO instTaskDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = instTaskService.deleteInstTask(instTaskDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

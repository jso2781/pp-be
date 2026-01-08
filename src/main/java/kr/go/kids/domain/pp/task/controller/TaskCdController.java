package kr.go.kids.domain.pp.task.controller;

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
import kr.go.kids.domain.pp.task.service.TaskCdService;
import kr.go.kids.domain.pp.task.vo.TaskCdDVO;
import kr.go.kids.domain.pp.task.vo.TaskCdPVO;
import kr.go.kids.domain.pp.task.vo.TaskCdRVO;

@Tag(name = "TaskCdController", description = "대국민포털_업무코드기본 관리")
@RestController
@RequestMapping(value="/api/task")
public class TaskCdController
{
    @Autowired
    private TaskCdService taskCdService;

    @Operation(summary = "대국민포털_업무코드기본 조회", description = "대국민포털_업무코드기본 조회한다.")
    @PostMapping(value="/getTaskCd")
    @ResponseBody
    public ResponseEntity<TaskCdRVO> getTaskCd(@RequestBody TaskCdPVO taskCdPVO)
    {
        TaskCdRVO taskCd = taskCdService.getTaskCd(taskCdPVO);

        return ResponseEntity.ok(taskCd);
    }

    @Operation(summary = "대국민포털_업무코드기본 입력", description = "대국민포털_업무코드기본 입력한다.")
    @PostMapping(value="/insertTaskCd")
    @ResponseBody
    public Map<String,Object> insertTaskCd(@RequestBody List<TaskCdPVO> taskCdList)
    {
        int taskCdListCount = taskCdList.size();

        int insertCnt = 0;
        TaskCdPVO taskCd = null;

        for(int i=0;i<taskCdListCount;i++)
        {
            taskCd = taskCdList.get(i);

            taskCdService.insertTaskCd(taskCd);
            insertCnt++;

            taskCd = null;
        }

//        List<TaskCdRVO> selectedTaskCdList = taskCdService.selectTaskCdList(taskCd);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("taskCdList", selectedTaskCdList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_업무코드기본 수정", description = "대국민포털_업무코드기본 수정한다.")
    @PostMapping(value="/updateTaskCd")
    @ResponseBody
    public Map<String,Object> updateTaskCd(@RequestBody List<TaskCdPVO> taskCdList)
    {
        int taskCdListCount = taskCdList.size();

        int updateCnt = 0;
        TaskCdPVO taskCd = null;

        for(int i=0;i<taskCdListCount;i++)
        {
            taskCd = taskCdList.get(i);

            taskCdService.updateTaskCd(taskCd);
            updateCnt++;

            taskCd = null;
        }

//        List<TaskCdRVO> selectedTaskCdList = taskCdService.selectTaskCdList(taskCd);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("taskCdList", selectedTaskCdList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_업무코드기본 저장", description = "대국민포털_업무코드기본 저장한다.")
    @PostMapping(value="/saveTaskCd")
    @ResponseBody
    public Map<String,Object> saveTaskCd(@RequestBody List<TaskCdPVO> taskCdList)
    {
        int taskCdListCount = taskCdList.size();

        int saveCnt = 0;
        TaskCdPVO taskCd = null;

        for(int i=0;i<taskCdListCount;i++)
        {
            taskCd = taskCdList.get(i);

            taskCdService.saveTaskCd(taskCd);
            saveCnt++;

            taskCd = null;
        }

//        List<TaskCdRVO> selectedTaskCdList = taskCdService.selectTaskCdList(taskCd);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("taskCdList", selectedTaskCdList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_업무코드기본 삭제", description = "대국민포털_업무코드기본 삭제한다.")
    @PostMapping(value="/deleteTaskCd")
    @ResponseBody
    public Map<String,Object> deleteTaskCd(@RequestBody TaskCdDVO taskCdDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = taskCdService.deleteTaskCd(taskCdDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

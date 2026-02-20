package kr.or.kids.domain.pp.emp.controller;

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
import kr.or.kids.domain.pp.emp.service.EmpService;
import kr.or.kids.domain.pp.emp.vo.EmpDVO;
import kr.or.kids.domain.pp.emp.vo.EmpPVO;
import kr.or.kids.domain.pp.emp.vo.EmpRVO;

@Tag(name = "EmpController", description = "대국민포털_관리자정보기본 관리")
@RestController
@RequestMapping(value="/api/emp")
public class EmpController
{
    @Autowired
    private EmpService empService;

    @Operation(summary = "대국민포털_관리자정보기본 조회", description = "대국민포털_관리자정보기본 조회한다.")
    @PostMapping(value="/getEmp")
    @ResponseBody
    public ResponseEntity<EmpRVO> getEmp(@RequestBody EmpPVO empPVO)
    {
        EmpRVO emp = empService.getEmp(empPVO);

        return ResponseEntity.ok(emp);
    }

    @Operation(summary = "대국민포털_관리자정보기본 입력", description = "대국민포털_관리자정보기본 입력한다.")
    @PostMapping(value="/insertEmp")
    @ResponseBody
    public Map<String,Object> insertEmp(@RequestBody List<EmpPVO> empList)
    {
        int empListCount = empList.size();

        int insertCnt = 0;
        EmpPVO emp = null;

        for(int i=0;i<empListCount;i++)
        {
            emp = empList.get(i);

            empService.insertEmp(emp);
            insertCnt++;

            emp = null;
        }

//        List<EmpRVO> selectedEmpList = empService.selectEmpList(emp);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("empList", selectedEmpList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_관리자정보기본 수정", description = "대국민포털_관리자정보기본 수정한다.")
    @PostMapping(value="/updateEmp")
    @ResponseBody
    public Map<String,Object> updateEmp(@RequestBody List<EmpPVO> empList)
    {
        int empListCount = empList.size();

        int updateCnt = 0;
        EmpPVO emp = null;

        for(int i=0;i<empListCount;i++)
        {
            emp = empList.get(i);

            empService.updateEmp(emp);
            updateCnt++;

            emp = null;
        }

//        List<EmpRVO> selectedEmpList = empService.selectEmpList(emp);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("empList", selectedEmpList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_관리자정보기본 저장", description = "대국민포털_관리자정보기본 저장한다.")
    @PostMapping(value="/saveEmp")
    @ResponseBody
    public Map<String,Object> saveEmp(@RequestBody List<EmpPVO> empList)
    {
        int empListCount = empList.size();

        int saveCnt = 0;
        EmpPVO emp = null;

        for(int i=0;i<empListCount;i++)
        {
            emp = empList.get(i);

            empService.saveEmp(emp);
            saveCnt++;

            emp = null;
        }

//        List<EmpRVO> selectedEmpList = empService.selectEmpList(emp);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("empList", selectedEmpList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_관리자정보기본 삭제", description = "대국민포털_관리자정보기본 삭제한다.")
    @PostMapping(value="/deleteEmp")
    @ResponseBody
    public Map<String,Object> deleteEmp(@RequestBody EmpDVO empDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = empService.deleteEmp(empDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

package kr.go.kids.domain.opnn.controller;

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
import kr.go.kids.domain.opnn.service.OpnnService;
import kr.go.kids.domain.opnn.vo.OpnnDVO;
import kr.go.kids.domain.opnn.vo.OpnnPVO;
import kr.go.kids.domain.opnn.vo.OpnnRVO;

@Tag(name = "OpnnController", description = "대국민포털_의견제안 관리")
@RestController
@RequestMapping(value="/api/opnn")
public class OpnnController
{
    @Autowired
    private OpnnService opnnService;

    @Operation(summary = "대국민포털_의견제안 조회", description = "대국민포털_의견제안 조회한다.")
    @PostMapping(value="/getOpnn")
    @ResponseBody
    public ResponseEntity<OpnnRVO> getOpnn(@RequestBody OpnnPVO opnnPVO)
    {
        OpnnRVO opnn = opnnService.getOpnn(opnnPVO);

        return ResponseEntity.ok(opnn);
    }

    @Operation(summary = "대국민포털_의견제안 입력", description = "대국민포털_의견제안 입력한다.")
    @PostMapping(value="/insertOpnn")
    @ResponseBody
    public Map<String,Object> insertOpnn(@RequestBody List<OpnnPVO> opnnList)
    {
        int opnnListCount = opnnList.size();

        int insertCnt = 0;
        OpnnPVO opnn = null;

        for(int i=0;i<opnnListCount;i++)
        {
            opnn = opnnList.get(i);

            opnnService.insertOpnn(opnn);
            insertCnt++;

            opnn = null;
        }

//        List<OpnnRVO> selectedOpnnList = opnnService.selectOpnnList(opnn);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("opnnList", selectedOpnnList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_의견제안 수정", description = "대국민포털_의견제안 수정한다.")
    @PostMapping(value="/updateOpnn")
    @ResponseBody
    public Map<String,Object> updateOpnn(@RequestBody List<OpnnPVO> opnnList)
    {
        int opnnListCount = opnnList.size();

        int updateCnt = 0;
        OpnnPVO opnn = null;

        for(int i=0;i<opnnListCount;i++)
        {
            opnn = opnnList.get(i);

            opnnService.updateOpnn(opnn);
            updateCnt++;

            opnn = null;
        }

//        List<OpnnRVO> selectedOpnnList = opnnService.selectOpnnList(opnn);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("opnnList", selectedOpnnList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_의견제안 저장", description = "대국민포털_의견제안 저장한다.")
    @PostMapping(value="/saveOpnn")
    @ResponseBody
    public Map<String,Object> saveOpnn(@RequestBody List<OpnnPVO> opnnList)
    {
        int opnnListCount = opnnList.size();

        int saveCnt = 0;
        OpnnPVO opnn = null;

        for(int i=0;i<opnnListCount;i++)
        {
            opnn = opnnList.get(i);

            opnnService.saveOpnn(opnn);
            saveCnt++;

            opnn = null;
        }

//        List<OpnnRVO> selectedOpnnList = opnnService.selectOpnnList(opnn);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("opnnList", selectedOpnnList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_의견제안 삭제", description = "대국민포털_의견제안 삭제한다.")
    @PostMapping(value="/deleteOpnn")
    @ResponseBody
    public Map<String,Object> deleteOpnn(@RequestBody OpnnDVO opnnDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = opnnService.deleteOpnn(opnnDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

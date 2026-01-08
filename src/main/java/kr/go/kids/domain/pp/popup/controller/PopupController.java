package kr.go.kids.domain.pp.popup.controller;

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
import kr.go.kids.domain.pp.popup.service.PopupService;
import kr.go.kids.domain.pp.popup.vo.PopupDVO;
import kr.go.kids.domain.pp.popup.vo.PopupPVO;
import kr.go.kids.domain.pp.popup.vo.PopupRVO;

@Tag(name = "PopupController", description = "대국민포털_팝업기본 관리")
@RestController
@RequestMapping(value="/api/popup")
public class PopupController
{
    @Autowired
    private PopupService popupService;

    @Operation(summary = "대국민포털_팝업기본 조회", description = "대국민포털_팝업기본 조회한다.")
    @PostMapping(value="/getPopup")
    @ResponseBody
    public ResponseEntity<PopupRVO> getPopup(@RequestBody PopupPVO popupPVO)
    {
        PopupRVO popup = popupService.getPopup(popupPVO);

        return ResponseEntity.ok(popup);
    }

    @Operation(summary = "대국민포털_팝업기본 입력", description = "대국민포털_팝업기본 입력한다.")
    @PostMapping(value="/insertPopup")
    @ResponseBody
    public Map<String,Object> insertPopup(@RequestBody List<PopupPVO> popupList)
    {
        int popupListCount = popupList.size();

        int insertCnt = 0;
        PopupPVO popup = null;

        for(int i=0;i<popupListCount;i++)
        {
            popup = popupList.get(i);

            popupService.insertPopup(popup);
            insertCnt++;

            popup = null;
        }

//        List<PopupRVO> selectedPopupList = popupService.selectPopupList(popup);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("popupList", selectedPopupList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_팝업기본 수정", description = "대국민포털_팝업기본 수정한다.")
    @PostMapping(value="/updatePopup")
    @ResponseBody
    public Map<String,Object> updatePopup(@RequestBody List<PopupPVO> popupList)
    {
        int popupListCount = popupList.size();

        int updateCnt = 0;
        PopupPVO popup = null;

        for(int i=0;i<popupListCount;i++)
        {
            popup = popupList.get(i);

            popupService.updatePopup(popup);
            updateCnt++;

            popup = null;
        }

//        List<PopupRVO> selectedPopupList = popupService.selectPopupList(popup);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("popupList", selectedPopupList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_팝업기본 저장", description = "대국민포털_팝업기본 저장한다.")
    @PostMapping(value="/savePopup")
    @ResponseBody
    public Map<String,Object> savePopup(@RequestBody List<PopupPVO> popupList)
    {
        int popupListCount = popupList.size();

        int saveCnt = 0;
        PopupPVO popup = null;

        for(int i=0;i<popupListCount;i++)
        {
            popup = popupList.get(i);

            popupService.savePopup(popup);
            saveCnt++;

            popup = null;
        }

//        List<PopupRVO> selectedPopupList = popupService.selectPopupList(popup);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("popupList", selectedPopupList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_팝업기본 삭제", description = "대국민포털_팝업기본 삭제한다.")
    @PostMapping(value="/deletePopup")
    @ResponseBody
    public Map<String,Object> deletePopup(@RequestBody PopupDVO popupDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = popupService.deletePopup(popupDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

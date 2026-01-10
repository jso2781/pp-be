package kr.go.kids.domain.word.controller;

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
import kr.go.kids.domain.word.service.WordService;
import kr.go.kids.domain.word.vo.WordDVO;
import kr.go.kids.domain.word.vo.WordPVO;
import kr.go.kids.domain.word.vo.WordRVO;

@Tag(name = "WordController", description = "대국민포털_단어기본 관리")
@RestController
@RequestMapping(value="/api/word")
public class WordController
{
    @Autowired
    private WordService wordService;

    @Operation(summary = "대국민포털_단어기본 조회", description = "대국민포털_단어기본 조회한다.")
    @PostMapping(value="/getWord")
    @ResponseBody
    public ResponseEntity<WordRVO> getWord(@RequestBody WordPVO wordPVO)
    {
        WordRVO word = wordService.getWord(wordPVO);

        return ResponseEntity.ok(word);
    }

    @Operation(summary = "대국민포털_단어기본 입력", description = "대국민포털_단어기본 입력한다.")
    @PostMapping(value="/insertWord")
    @ResponseBody
    public Map<String,Object> insertWord(@RequestBody List<WordPVO> wordList)
    {
        int wordListCount = wordList.size();

        int insertCnt = 0;
        WordPVO word = null;

        for(int i=0;i<wordListCount;i++)
        {
            word = wordList.get(i);

            wordService.insertWord(word);
            insertCnt++;

            word = null;
        }

//        List<WordRVO> selectedWordList = wordService.selectWordList(word);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("insertCnt", insertCnt);
//        resultMap.put("wordList", selectedWordList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_단어기본 수정", description = "대국민포털_단어기본 수정한다.")
    @PostMapping(value="/updateWord")
    @ResponseBody
    public Map<String,Object> updateWord(@RequestBody List<WordPVO> wordList)
    {
        int wordListCount = wordList.size();

        int updateCnt = 0;
        WordPVO word = null;

        for(int i=0;i<wordListCount;i++)
        {
            word = wordList.get(i);

            wordService.updateWord(word);
            updateCnt++;

            word = null;
        }

//        List<WordRVO> selectedWordList = wordService.selectWordList(word);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("updateCnt", updateCnt);
//        resultMap.put("wordList", selectedWordList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_단어기본 저장", description = "대국민포털_단어기본 저장한다.")
    @PostMapping(value="/saveWord")
    @ResponseBody
    public Map<String,Object> saveWord(@RequestBody List<WordPVO> wordList)
    {
        int wordListCount = wordList.size();

        int saveCnt = 0;
        WordPVO word = null;

        for(int i=0;i<wordListCount;i++)
        {
            word = wordList.get(i);

            wordService.saveWord(word);
            saveCnt++;

            word = null;
        }

//        List<WordRVO> selectedWordList = wordService.selectWordList(word);

        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("saveCnt", saveCnt);
//        resultMap.put("wordList", selectedWordList);

        return resultMap;
    }

    @Operation(summary = "대국민포털_단어기본 삭제", description = "대국민포털_단어기본 삭제한다.")
    @PostMapping(value="/deleteWord")
    @ResponseBody
    public Map<String,Object> deleteWord(@RequestBody WordDVO wordDVO)
    {
        Map<String,Object> resultMap = new HashMap<String,Object>();
        int deleteCnt = wordService.deleteWord(wordDVO);

        resultMap.put("deleteCnt", deleteCnt);

        return resultMap;
    }
}

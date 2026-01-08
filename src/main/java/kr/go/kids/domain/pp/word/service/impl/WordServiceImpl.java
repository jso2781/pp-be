package kr.go.kids.domain.pp.word.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.pp.word.mapper.WordMapper;
import kr.go.kids.domain.pp.word.service.WordService;
import kr.go.kids.domain.pp.word.vo.WordDVO;
import kr.go.kids.domain.pp.word.vo.WordPVO;
import kr.go.kids.domain.pp.word.vo.WordRVO;

@Service
public class WordServiceImpl implements WordService
{
    @Autowired
    private WordMapper wordMapper;

    @Override
    public WordRVO getWord(WordPVO wordPVO)
    {
        return wordMapper.getWord(wordPVO);
    }

    @Override
    public int insertWord(WordPVO wordPVO)
    {
        return wordMapper.insertWord(wordPVO);
    }

    @Override
    public int updateWord(WordPVO wordPVO)
    {
        return wordMapper.updateWord(wordPVO);
    }

    @Override
    public int saveWord(WordPVO wordPVO)
    {
        return wordMapper.saveWord(wordPVO);
    }

    @Override
    public int deleteWord(WordDVO wordDVO)
    {
        return wordMapper.deleteWord(wordDVO);
    }
}

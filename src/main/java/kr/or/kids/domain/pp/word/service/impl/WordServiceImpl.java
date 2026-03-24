package kr.or.kids.domain.pp.word.service.impl;

import org.springframework.stereotype.Service;

import kr.or.kids.domain.pp.word.mapper.WordMapper;
import kr.or.kids.domain.pp.word.service.WordService;
import kr.or.kids.domain.pp.word.vo.WordDVO;
import kr.or.kids.domain.pp.word.vo.WordPVO;
import kr.or.kids.domain.pp.word.vo.WordRVO;

import lombok.RequiredArgsConstructor;
@Service
@RequiredArgsConstructor
public class WordServiceImpl implements WordService
{
    private final WordMapper wordMapper;

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

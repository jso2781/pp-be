package kr.or.kids.domain.pp.word.service;

import kr.or.kids.domain.pp.word.vo.WordDVO;
import kr.or.kids.domain.pp.word.vo.WordPVO;
import kr.or.kids.domain.pp.word.vo.WordRVO;

public interface WordService
{
    /**
     * 대국민포털_단어기본 정보 조회 
     *
     * @param wordPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_단어기본 
     */
    public WordRVO getWord(WordPVO wordPVO);

    /**
     * 대국민포털_단어기본 정보 입력 
     *
     * @param wordPVO 입력할 대국민포털_단어기본 정보 
     * @return 입력된 건수 
     */
    public int insertWord(WordPVO wordPVO);

    /**
     * 대국민포털_단어기본 정보 수정 
     *
     * @param wordPVO 수정할 대국민포털_단어기본 정보 
     * @return 수정된 건수 
     */
    public int updateWord(WordPVO wordPVO);

    /**
     * 대국민포털_단어기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param wordPVO 저장할 대국민포털_단어기본 정보 
     * @return 저장된 건수 
     */
    public int saveWord(WordPVO wordPVO);

    /**
     * 대국민포털_단어기본 정보 삭제 
     *
     * @param wordDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteWord(WordDVO wordDVO);
}

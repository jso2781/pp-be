package kr.or.kids.domain.stt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.kids.domain.stt.vo.TrmsSttPVO;
import kr.or.kids.domain.stt.vo.TrmsSttRVO;

@Mapper
public interface TrmsSttMapper
{
    /**
     * 대국민포털 회원가입용 약관법령 목록 조회
     *
     * @return 조회된 회원가입용 약관법령 목록 조회
     */
    public List<TrmsSttRVO> selectTrmsListForSignUp();

    /**
     * 대국민포털_약관법령기본 목록 조회 
     *
     * @param trmsSttPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_약관법령기본 
     */
    public List<TrmsSttRVO> selectTrmsSttList(TrmsSttPVO trmsSttPVO);
    /**
     * 대국민포털_약관법령기본 최신글 단건 조회 
     *
     * @param trmsSttPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_약관법령기본 
     */
    public TrmsSttRVO getTrmsSttLatest(TrmsSttPVO trmsSttPVO);
}

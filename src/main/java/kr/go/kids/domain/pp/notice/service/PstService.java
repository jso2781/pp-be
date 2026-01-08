package kr.go.kids.domain.pp.notice.service;

import java.util.List;

import kr.go.kids.domain.pp.notice.vo.PstPVO;
import kr.go.kids.domain.pp.notice.vo.PstRVO;

public interface PstService
{
    /**
     * 대국민포털_게시물기본 정보 목록 조회 
     *
     * @param pstPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_게시물기본 목록 
     */
    public List<PstRVO> selectPstList(PstPVO pstPVO);	
	
    /**
     * 대국민포털_게시물기본 정보 조회 
     *
     * @param pstPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_게시물기본 
     */
    public PstRVO getPst(PstPVO pstPVO);
}

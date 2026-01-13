package kr.go.kids.domain.pst.service;

import kr.go.kids.domain.pst.vo.PstPVO;
import kr.go.kids.global.system.common.vo.ApiPrnDto;

public interface PstService
{
    /**
     * 대국민포털_게시물기본 정보 목록 조회 
     *
     * @param pstPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_게시물기본 목록 
     */
    public ApiPrnDto selectPstList(PstPVO pstPVO);	
	
    /**
     * 대국민포털_게시물기본 정보 조회 
     *
     * @param pstPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_게시물기본 
     */
    public ApiPrnDto getPst(PstPVO pstPVO);
}

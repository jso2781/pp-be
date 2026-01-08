package kr.go.kids.domain.pp.notice.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.pp.notice.vo.PstPVO;
import kr.go.kids.domain.pp.notice.vo.PstRVO;

@Mapper
public interface PstMapper
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

    /**
     * 대국민포털_게시물기본 조회수 증가
     *
     * @param pstPVO 수정할 대국민포털_게시물기본 정보
     * @return 수정된 건수 
     */
    public int updtInqCnt(PstPVO pstPVO);          
}

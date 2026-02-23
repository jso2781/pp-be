package kr.or.kids.domain.pp.pst.mapper;

import kr.or.kids.domain.pp.atch.vo.AtchRVO;
import kr.or.kids.domain.pp.pst.vo.PstPVO;
import kr.or.kids.domain.pp.pst.vo.PstRVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PstMapper
{
    /**
     * 대국민포털_게시물기본 정보 목록 조회 
     *
     * @param pstPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_게시물기본 목록 
     */
    List<PstRVO> selectPstList(PstPVO pstPVO);
    
    /**
     * 대국민포털_게시물기본 정보 조회 
     *
     * @param pstPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_게시물기본 
     */
    PstRVO getPst(PstPVO pstPVO);

    /**
     * 대국민포털_게시물기본 조회수 증가
     *
     * @param pstPVO 수정할 대국민포털_게시물기본 정보
     * @return 수정된 건수 
     */
    int updtInqCnt(PstPVO pstPVO);

    /**
     * 첨부파일기본 목록 조회
     *
     * @param atchFileGroupId 파일그룹아이디
     * @return 조회된 첨부파일 목록
     */
    List<AtchRVO> getAtchList(String atchFileGroupId);
}

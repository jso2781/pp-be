package kr.or.kids.domain.main.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.kids.domain.main.vo.MainRVO;

@Mapper
public interface MainMapper
{
    /**
     * 대국민포털_메인화면 최근 게시물 목록 조회 (SNS 및 홍보존) 
     *
     * @param taskCd 조회용 업무구분코드 
     * @return 조회된 대국민포털_게시물 
     */
    public List<MainRVO> selectRecent4PstListByTaskCd(String taskCd);
    
    /**
     * 대국민포털_메인화면 최근 게시물 목록 조회 (SNS 통합)
     *
     * @param taskCd 조회용 업무구분코드
     * @return 조회된 대국민포털_게시물 
     */
    public List<MainRVO> selectRecent20PstListByTaskCds(@Param("taskCdList") List<String> taskCdList);    
    
    /**
     * 대국민포털_메인화면 최근 게시물 목록 조회 
     *
     * @param taskCd 조회용 업무구분코드
     * @return 조회된 대국민포털_게시물 
     */
    public List<MainRVO> selectRecent5PstListByTaskCd(String taskCd);
    
    /**
     * 대국민포털_메인화면 팝업 목록 조회
     *
     * @return 팝업 목록 
     */
    public List<MainRVO> selectPopupList();     
}

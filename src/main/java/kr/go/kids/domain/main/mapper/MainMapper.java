package kr.go.kids.domain.main.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.main.vo.MainRVO;

@Mapper
public interface MainMapper
{
    /**
     * 대국민포털_메인화면 최근 게시물 목록 조회 
     *
     * @param taskCd 조회용 업무구분코드 
     * @return 조회된 대국민포털_게시물 
     */
    public List<MainRVO> selectRecent5PstList(String taskCd);
}

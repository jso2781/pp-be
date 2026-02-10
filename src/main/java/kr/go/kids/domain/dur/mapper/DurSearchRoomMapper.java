package kr.go.kids.domain.dur.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.dur.vo.DurSearchRoomRVO;
import kr.go.kids.domain.dur.vo.DurSearchRoomPVO;

@Mapper
public interface DurSearchRoomMapper
{
    /**
     * DUR 정보 검색
     *
     * @param durSnctzMedPVO 조회용 파라메터 정보 
     * @return 조회된 DUR 정보 검색 결과
     */
    public List<DurSearchRoomRVO> selectDurSearchRoomList(DurSearchRoomPVO durSearchRoomPVO);
}

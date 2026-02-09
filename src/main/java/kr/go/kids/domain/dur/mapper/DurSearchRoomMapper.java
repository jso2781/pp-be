package kr.go.kids.domain.dur.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.dur.vo.DurSearchRoomRVO;
import kr.go.kids.domain.dur.vo.DurSearchRoomPVO;

@Mapper
public interface DurSearchRoomMapper
{
    /**
     * 대국민포털_DUR노인주의해열진통소염제기본 정보 조회 
     *
     * @param durSnctzMedPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_DUR노인주의해열진통소염제기본 
     */
    public DurSearchRoomRVO selectDurSearchRoom(DurSearchRoomPVO durSearchRoomPVO);
}

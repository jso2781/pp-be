package kr.go.kids.domain.dur.mapper;

import kr.go.kids.domain.dur.vo.DurMyDrugInfoPVO;
import kr.go.kids.domain.dur.vo.DurSearchRoomRVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DurMyDrugInfoMapper {

    /**
     * 내가 먹는 약의 DUR 정보 다건 조회 (입력 목록 기준 IN 조건)
     */
    List<DurSearchRoomRVO> selectDurMyDrugInfoList(DurMyDrugInfoPVO durMyDrugInfoPVO);
}

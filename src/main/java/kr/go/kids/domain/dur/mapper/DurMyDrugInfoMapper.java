package kr.go.kids.domain.dur.mapper;

import kr.go.kids.domain.dur.vo.DurMyDrugInfoPVO;
import kr.go.kids.domain.dur.vo.DurMyDrugSearchPVO;
import kr.go.kids.domain.dur.vo.DurMyDrugSearchRVO;
import kr.go.kids.domain.dur.vo.DurSearchRoomRVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DurMyDrugInfoMapper {

    /**
     * 내가 먹는 약의 DUR 정보 의약품 검색
     * 검색조건: 제품명(한)
     */
    List<DurMyDrugSearchRVO> selectDurMyDrugSearchItemC1(DurMyDrugSearchPVO durMyDrugSearchPVO);

    /**
     * 내가 먹는 약의 DUR 정보 의약품 검색
     * 검색조건: 성분명(영)
     * 제품명 기준 검색여부 : Y
     */
    List<DurMyDrugSearchRVO> selectDurMyDrugSearchItemC2(DurMyDrugSearchPVO durMyDrugSearchPVO);

    /**
     * 내가 먹는 약의 DUR 정보 의약품 검색
     * 검색조건: 성분명(영)
     * 제품명 기준 검색여부 : N
     */
    List<DurMyDrugSearchRVO> selectDurMyDrugSearchItemC3(DurMyDrugSearchPVO durMyDrugSearchPVO);

    /**
     * 내가 먹는 약의 DUR 정보 다건 조회 (입력 목록 기준 IN 조건)
     */
    List<DurSearchRoomRVO> selectDurMyDrugInfoList(List<DurMyDrugInfoPVO> durMyDrugInfoPVOs);

    /**
     * 내가 먹는 약의 DUR 정보 병용금기 조회 (입력 목록 pair 기준)
     */
    List<DurSearchRoomRVO> selectDurMyDrugInfoConcList(List<DurMyDrugInfoPVO> durMyDrugInfoPVOs);
}

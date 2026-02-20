package kr.go.kids.domain.dur.service;

import kr.go.kids.domain.dur.vo.DurMyDrugInfoPVO;
import kr.go.kids.domain.dur.vo.DurMyDrugSearchPVO;
import kr.go.kids.global.system.common.vo.ApiPrnDto;

import java.util.List;

public interface DurMyDrugInfoService {

    /**
     * 내가 먹는 약의 DUR 정보 의약품 검색
     *
     * @param durMyDrugSearchPVO 조회용 파라메터 정보
     * @return 조회된 의약품 목록
     */
    ApiPrnDto selectDurMyDrugSearchList(DurMyDrugSearchPVO durMyDrugSearchPVO);


    /**
     * DUR 정보 목록조회
     *
     * @param durMyDrugInfoPVO 조회용 파라메터 정보
     * @return 조회된 DUR 정보 검색 결과
     */
    ApiPrnDto selectDurMyDrugInfoList(List<DurMyDrugInfoPVO> durMyDrugInfoPVOs);
}

package kr.go.kids.domain.dur.service;

import kr.go.kids.domain.dur.vo.DurMyDrugInfoPVO;
import kr.go.kids.global.system.common.vo.ApiPrnDto;

public interface DurMyDrugInfoService {
    /**
     * DUR 정보 목록조회
     *
     * @param durSnctzMedPVO 조회용 파라메터 정보 
     * @return 조회된 DUR 정보 검색 결과
     */
    ApiPrnDto selectDurMyDrugInfoList(DurMyDrugInfoPVO durMyDrugInfoPVO);
}

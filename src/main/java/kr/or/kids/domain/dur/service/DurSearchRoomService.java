package kr.or.kids.domain.dur.service;

import java.util.List;

import kr.or.kids.domain.dur.vo.DurEftgrpDetailPVO;
import kr.or.kids.domain.dur.vo.DurEftgrpDetailRVO;
import kr.or.kids.domain.dur.vo.DurPrdctDetailPVO;
import kr.or.kids.domain.dur.vo.DurPrdctDetailRVO;
import kr.or.kids.domain.dur.vo.DurSearchRoomPVO;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

public interface DurSearchRoomService {
    /**
     * DUR 정보 검색
     *
     * @param durSnctzMedPVO 조회용 파라메터 정보 
     * @return 조회된 DUR 정보 검색 결과
     */
    public ApiPrnDto selectDurSearchRoomList(DurSearchRoomPVO durSearchRoomPVO);

    /**
     * DUR 정보 검색
     *
     * @param durSnctzMedPVO 조회용 파라메터 정보 
     * @return 조회된 DUR 정보 검색 결과
     */
    public ApiPrnDto selectEftgrpDetailList(DurEftgrpDetailPVO durEftgrpDetailPVO);

    /**
     * 제품 상세 조회(특정 성분명 기준으로 조회, 팝업용)
     * 
     * @param durPrdctDetailPVO 조회용 파라메터 정보 
     * @return 조회된 제품 상세 결과
     */
    public ApiPrnDto selectPrdctDetailList(DurPrdctDetailPVO durPrdctDetailPVO);
}

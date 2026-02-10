package kr.go.kids.domain.dur.service;

import kr.go.kids.domain.dur.vo.DurSearchRoomPVO;
import kr.go.kids.global.system.common.vo.ApiPrnDto;

public interface DurSearchRoomService {
    /**
     * DUR 정보 검색
     *
     * @param durSnctzMedPVO 조회용 파라메터 정보 
     * @return 조회된 DUR 정보 검색 결과
     */
    public ApiPrnDto selectDurSearchRoomList(DurSearchRoomPVO durSearchRoomPVO);
}

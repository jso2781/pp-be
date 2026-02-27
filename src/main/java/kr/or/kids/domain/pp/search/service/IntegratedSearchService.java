package kr.or.kids.domain.pp.search.service;

import kr.or.kids.domain.pp.search.vo.IntegratedSearchPVO;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

public interface IntegratedSearchService {
    /**
     * 통합검색(키워드 검색)
     *
     * @param paramPVO 조회용 파라메터 정보(searchText)
     * @return 조회된 통합검색 결과(전체, 주요업무, 정보공개, 기관소식, 기관소개 탭별 목록 정보)
     */
    public ApiPrnDto getIntegratedSearchJson(IntegratedSearchPVO paramPVO);
}
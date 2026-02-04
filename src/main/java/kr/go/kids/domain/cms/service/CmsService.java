package kr.go.kids.domain.cms.service;

import kr.go.kids.domain.cms.vo.CmsPVO;
import kr.go.kids.global.system.common.vo.ApiPrnDto;

public interface CmsService
{
    /**
     * 대국민포털_콘탠츠기본 정보 조회
     *
     * @param cmsPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_콘탠츠기본 정보
     */
    public ApiPrnDto getCms(CmsPVO cmsPVO);
}

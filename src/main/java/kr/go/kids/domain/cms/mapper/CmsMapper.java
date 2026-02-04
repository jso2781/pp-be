package kr.go.kids.domain.cms.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.cms.vo.CmsPVO;
import kr.go.kids.domain.cms.vo.CmsRVO;

@Mapper
public interface CmsMapper {

    /**
     * 대국민포털_콘탠츠기본 정보 조회
     * @param cmsPVO
     * @return
     */
    public CmsRVO getCms(CmsPVO cmsPVO); 
}

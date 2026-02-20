package kr.or.kids.domain.dur.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.kids.domain.dur.vo.DurEftgrpDetailPVO;
import kr.or.kids.domain.dur.vo.DurEftgrpDetailRVO;
import kr.or.kids.domain.dur.vo.DurPrdctDetailPVO;
import kr.or.kids.domain.dur.vo.DurPrdctDetailRVO;
import kr.or.kids.domain.dur.vo.DurSearchRoomPVO;
import kr.or.kids.domain.dur.vo.DurSearchRoomRVO;

@Mapper
public interface DurSearchRoomMapper
{
    /**
     * DUR 정보 검색
     *
     * @param durSnctzMedPVO 조회용 파라메터 정보 
     * @return 조회된 DUR 정보 검색 결과
     */
    public List<DurSearchRoomRVO> selectDurSearchRoomList(DurSearchRoomPVO durSearchRoomPVO);

    /**
     * 효능군중복주의 상세 조회(특정 성분의 그룹1 기준으로 조회, 팝업용)
     * 
     * @param durEftgrpDetailPVO 조회용 파라메터 정보 
     * @return 조회된 효능군중복주의 상세 결과
     */
    public List<DurEftgrpDetailRVO> selectEftgrpDetailList(DurEftgrpDetailPVO durEftgrpDetailPVO);

    /**
     * 제품 상세 조회(특정 성분명 기준으로 조회, 팝업용)
     * 
     * @param durPrdctDetailPVO 조회용 파라메터 정보 
     * @return 조회된 제품 상세 결과
     */
    public List<DurPrdctDetailRVO> selectPrdctDetailList(DurPrdctDetailPVO durPrdctDetailPVO);
}

package kr.or.kids.domain.pp.niceid.service;


import kr.or.kids.domain.pp.mbr.vo.MbrInfoPVO;
import kr.or.kids.domain.pp.niceid.vo.NiceidPVO;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

public interface NiceidService {


    /**
     * 대국민포털_회원정보기본 정보 조회
     *
     * @param mbrInfoPVO 조회용 파라메터 정보
     * @return 조회된 대국민포털_회원정보기본
     */
    public ApiPrnDto getTransctionId(NiceidPVO niceidPVO);

}

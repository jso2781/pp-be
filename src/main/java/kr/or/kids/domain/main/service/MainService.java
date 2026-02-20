package kr.or.kids.domain.main.service;

import kr.or.kids.global.system.common.vo.ApiPrnDto;

public interface MainService
{
    /**
     * 대국민포털_메인화면 컨텐츠 조회
     *
     * @return 조회된 대국민포털 메인화면 컨텐츠 
     */
    public ApiPrnDto selectMainContents();	
}

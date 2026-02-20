package kr.or.kids.domain.pp.auth.service;

import kr.or.kids.domain.pp.auth.vo.AuthrtMenuDVO;
import kr.or.kids.domain.pp.auth.vo.AuthrtMenuPVO;
import kr.or.kids.domain.pp.auth.vo.AuthrtMenuRVO;

public interface AuthrtMenuService
{
    /**
     * 대국민포털_권한메뉴기본 정보 조회 
     *
     * @param authrtMenuPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_권한메뉴기본 
     */
    public AuthrtMenuRVO getAuthrtMenu(AuthrtMenuPVO authrtMenuPVO);

    /**
     * 대국민포털_권한메뉴기본 정보 입력 
     *
     * @param authrtMenuPVO 입력할 대국민포털_권한메뉴기본 정보 
     * @return 입력된 건수 
     */
    public int insertAuthrtMenu(AuthrtMenuPVO authrtMenuPVO);

    /**
     * 대국민포털_권한메뉴기본 정보 수정 
     *
     * @param authrtMenuPVO 수정할 대국민포털_권한메뉴기본 정보 
     * @return 수정된 건수 
     */
    public int updateAuthrtMenu(AuthrtMenuPVO authrtMenuPVO);

    /**
     * 대국민포털_권한메뉴기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param authrtMenuPVO 저장할 대국민포털_권한메뉴기본 정보 
     * @return 저장된 건수 
     */
    public int saveAuthrtMenu(AuthrtMenuPVO authrtMenuPVO);

    /**
     * 대국민포털_권한메뉴기본 정보 삭제 
     *
     * @param authrtMenuDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteAuthrtMenu(AuthrtMenuDVO authrtMenuDVO);
}

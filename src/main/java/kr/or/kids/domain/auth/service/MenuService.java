package kr.or.kids.domain.auth.service;

import java.util.List;

import kr.or.kids.domain.auth.vo.MenuDVO;
import kr.or.kids.domain.auth.vo.MenuPVO;
import kr.or.kids.domain.auth.vo.MenuRVO;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

public interface MenuService
{
    /**
     * 대국민포털_메뉴 목록 조회
     *
     * @param menuPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_메뉴기본 
     */
    public ApiPrnDto selectMenuList(MenuPVO menuPVO);

    /**
     * 대국민포털_메뉴 정보 조회 
     *
     * @param menuPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_메뉴기본 
     */
    public MenuRVO getMenu(MenuPVO menuPVO);

    /**
     * 대국민포털_메뉴기본 정보 입력 
     *
     * @param menuPVO 입력할 대국민포털_메뉴기본 정보 
     * @return 입력된 건수 
     */
    public int insertMenu(MenuPVO menuPVO);

    /**
     * 대국민포털_메뉴기본 정보 수정 
     *
     * @param menuPVO 수정할 대국민포털_메뉴기본 정보 
     * @return 수정된 건수 
     */
    public int updateMenu(MenuPVO menuPVO);

    /**
     * 대국민포털_메뉴기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param menuPVO 저장할 대국민포털_메뉴기본 정보 
     * @return 저장된 건수 
     */
    public int saveMenu(MenuPVO menuPVO);

    /**
     * 대국민포털_메뉴기본 정보 삭제 
     *
     * @param menuDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteMenu(MenuDVO menuDVO);
}

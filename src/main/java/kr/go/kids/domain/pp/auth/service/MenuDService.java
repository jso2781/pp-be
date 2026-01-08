package kr.go.kids.domain.pp.auth.service;

import kr.go.kids.domain.pp.auth.vo.MenuDDVO;
import kr.go.kids.domain.pp.auth.vo.MenuDPVO;
import kr.go.kids.domain.pp.auth.vo.MenuDRVO;

public interface MenuDService
{
    /**
     * 대국민포털_메뉴상세 정보 조회 
     *
     * @param menuDPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_메뉴상세 
     */
    public MenuDRVO getMenuD(MenuDPVO menuDPVO);

    /**
     * 대국민포털_메뉴상세 정보 입력 
     *
     * @param menuDPVO 입력할 대국민포털_메뉴상세 정보 
     * @return 입력된 건수 
     */
    public int insertMenuD(MenuDPVO menuDPVO);

    /**
     * 대국민포털_메뉴상세 정보 수정 
     *
     * @param menuDPVO 수정할 대국민포털_메뉴상세 정보 
     * @return 수정된 건수 
     */
    public int updateMenuD(MenuDPVO menuDPVO);

    /**
     * 대국민포털_메뉴상세 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param menuDPVO 저장할 대국민포털_메뉴상세 정보 
     * @return 저장된 건수 
     */
    public int saveMenuD(MenuDPVO menuDPVO);

    /**
     * 대국민포털_메뉴상세 정보 삭제 
     *
     * @param menuDDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteMenuD(MenuDDVO menuDDVO);
}

package kr.go.kids.domain.pp.auth.service;

import kr.go.kids.domain.pp.auth.vo.AuthrtMenuRoleDVO;
import kr.go.kids.domain.pp.auth.vo.AuthrtMenuRolePVO;
import kr.go.kids.domain.pp.auth.vo.AuthrtMenuRoleRVO;

public interface AuthrtMenuRoleService
{
    /**
     * 대국민포털_권한메뉴롤기본 정보 조회 
     *
     * @param authrtMenuRolePVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_권한메뉴롤기본 
     */
    public AuthrtMenuRoleRVO getAuthrtMenuRole(AuthrtMenuRolePVO authrtMenuRolePVO);

    /**
     * 대국민포털_권한메뉴롤기본 정보 입력 
     *
     * @param authrtMenuRolePVO 입력할 대국민포털_권한메뉴롤기본 정보 
     * @return 입력된 건수 
     */
    public int insertAuthrtMenuRole(AuthrtMenuRolePVO authrtMenuRolePVO);

    /**
     * 대국민포털_권한메뉴롤기본 정보 수정 
     *
     * @param authrtMenuRolePVO 수정할 대국민포털_권한메뉴롤기본 정보 
     * @return 수정된 건수 
     */
    public int updateAuthrtMenuRole(AuthrtMenuRolePVO authrtMenuRolePVO);

    /**
     * 대국민포털_권한메뉴롤기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param authrtMenuRolePVO 저장할 대국민포털_권한메뉴롤기본 정보 
     * @return 저장된 건수 
     */
    public int saveAuthrtMenuRole(AuthrtMenuRolePVO authrtMenuRolePVO);

    /**
     * 대국민포털_권한메뉴롤기본 정보 삭제 
     *
     * @param authrtMenuRoleDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteAuthrtMenuRole(AuthrtMenuRoleDVO authrtMenuRoleDVO);
}

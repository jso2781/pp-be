package kr.or.kids.domain.pp.auth.service;

import kr.or.kids.domain.pp.auth.vo.RoleDVO;
import kr.or.kids.domain.pp.auth.vo.RolePVO;
import kr.or.kids.domain.pp.auth.vo.RoleRVO;

public interface RoleService
{
    /**
     * 대국민포털_역할기본 정보 조회 
     *
     * @param rolePVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_역할기본 
     */
    public RoleRVO getRole(RolePVO rolePVO);

    /**
     * 대국민포털_역할기본 정보 입력 
     *
     * @param rolePVO 입력할 대국민포털_역할기본 정보 
     * @return 입력된 건수 
     */
    public int insertRole(RolePVO rolePVO);

    /**
     * 대국민포털_역할기본 정보 수정 
     *
     * @param rolePVO 수정할 대국민포털_역할기본 정보 
     * @return 수정된 건수 
     */
    public int updateRole(RolePVO rolePVO);

    /**
     * 대국민포털_역할기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param rolePVO 저장할 대국민포털_역할기본 정보 
     * @return 저장된 건수 
     */
    public int saveRole(RolePVO rolePVO);

    /**
     * 대국민포털_역할기본 정보 삭제 
     *
     * @param roleDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteRole(RoleDVO roleDVO);
}

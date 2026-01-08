package kr.go.kids.domain.pp.auth.service;

import kr.go.kids.domain.pp.auth.vo.AuthrtChgHstryDVO;
import kr.go.kids.domain.pp.auth.vo.AuthrtChgHstryPVO;
import kr.go.kids.domain.pp.auth.vo.AuthrtChgHstryRVO;

public interface AuthrtChgHstryService
{
    /**
     * 대국민포털_권한변경이력기본 정보 조회 
     *
     * @param authrtChgHstryPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_권한변경이력기본 
     */
    public AuthrtChgHstryRVO getAuthrtChgHstry(AuthrtChgHstryPVO authrtChgHstryPVO);

    /**
     * 대국민포털_권한변경이력기본 정보 입력 
     *
     * @param authrtChgHstryPVO 입력할 대국민포털_권한변경이력기본 정보 
     * @return 입력된 건수 
     */
    public int insertAuthrtChgHstry(AuthrtChgHstryPVO authrtChgHstryPVO);

    /**
     * 대국민포털_권한변경이력기본 정보 수정 
     *
     * @param authrtChgHstryPVO 수정할 대국민포털_권한변경이력기본 정보 
     * @return 수정된 건수 
     */
    public int updateAuthrtChgHstry(AuthrtChgHstryPVO authrtChgHstryPVO);

    /**
     * 대국민포털_권한변경이력기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param authrtChgHstryPVO 저장할 대국민포털_권한변경이력기본 정보 
     * @return 저장된 건수 
     */
    public int saveAuthrtChgHstry(AuthrtChgHstryPVO authrtChgHstryPVO);

    /**
     * 대국민포털_권한변경이력기본 정보 삭제 
     *
     * @param authrtChgHstryDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteAuthrtChgHstry(AuthrtChgHstryDVO authrtChgHstryDVO);
}

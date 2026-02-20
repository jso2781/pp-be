package kr.or.kids.domain.pp.auth.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.or.kids.domain.pp.auth.vo.AuthrtDVO;
import kr.or.kids.domain.pp.auth.vo.AuthrtPVO;
import kr.or.kids.domain.pp.auth.vo.AuthrtRVO;

@Mapper
public interface AuthrtMapper
{
    /**
     * 대국민포털_권한기본 정보 조회 
     *
     * @param authrtPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_권한기본 
     */
    public AuthrtRVO getAuthrt(AuthrtPVO authrtPVO);

    /**
     * 대국민포털_권한기본 정보 입력 
     *
     * @param authrtPVO 입력할 대국민포털_권한기본 정보 
     * @return 입력된 건수 
     */
    public int insertAuthrt(AuthrtPVO authrtPVO);

    /**
     * 대국민포털_권한기본 정보 수정 
     *
     * @param authrtPVO 수정할 대국민포털_권한기본 정보 
     * @return 수정된 건수 
     */
    public int updateAuthrt(AuthrtPVO authrtPVO);

    /**
     * 대국민포털_권한기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param authrtPVO 저장할 대국민포털_권한기본 정보 
     * @return 저장된 건수 
     */
    public int saveAuthrt(AuthrtPVO authrtPVO);

    /**
     * 대국민포털_권한기본 정보 삭제 
     *
     * @param authrtDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteAuthrt(AuthrtDVO authrtDVO);
}

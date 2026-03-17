package kr.or.kids.domain.pp.auth.service;

import java.math.BigInteger;

import kr.or.kids.domain.pp.auth.vo.MbrTokenDVO;
import kr.or.kids.domain.pp.auth.vo.MbrTokenPVO;
import kr.or.kids.domain.pp.auth.vo.MbrTokenRVO;
import kr.or.kids.domain.pp.mbr.vo.MbrInfoRVO;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

public interface AuthService
{
    /**
     * 사용자 로그인
     * @return API 응답 DTO
     */
    public ApiPrnDto  login(MbrTokenPVO loginVO);

    /**
     * 토큰 갱신
     * @return API 응답 DTO
     */
    public ApiPrnDto refresh(BigInteger tokenSn, String updtTokenCn);

    /**
     * 토큰 삭제(로그아웃시)
     */
    public ApiPrnDto logout(MbrTokenDVO mbrTokenDVO, String authorization);

    /**
     * Redis Idle Key 리셋
     * @param authorizationHeader
     * @return
     */
    public ApiPrnDto extend(String authorizationHeader);

    /**
     * 대국민포털_회원_TOKEN 정보 조회 
     *
     * @param mbrTokenPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_회원_TOKEN 
     */
    public MbrTokenRVO getMbrToken(MbrTokenPVO mbrTokenPVO);

    /**
     * 대국민포털_회원_TOKEN 정보 입력 
     *
     * @param mbrTokenPVO 입력할 대국민포털_회원_TOKEN 정보 
     * @return 입력된 건수 
     */
    public int insertMbrToken(MbrTokenPVO mbrTokenPVO);

    /**
     * 대국민포털_회원_TOKEN 정보 수정 
     *
     * @param mbrTokenPVO 수정할 대국민포털_회원_TOKEN 정보 
     * @return 수정된 건수 
     */
    public int updateMbrToken(MbrTokenPVO mbrTokenPVO);

    /**
     * 대국민포털_회원_TOKEN 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param mbrTokenPVO 저장할 대국민포털_회원_TOKEN 정보 
     * @return 저장된 건수 
     */
    public int saveMbrToken(MbrTokenPVO mbrTokenPVO);

    /**
     * 대국민포털_회원_TOKEN 정보 삭제 
     *
     * @param mbrTokenDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteMbrToken(MbrTokenDVO mbrTokenDVO);

    /**
     * Any-ID 모바일 신분증, 간편인증을 통해 로그인을 시도하는 경우,
     * Any-ID로 인증 완료후 전달 받은 CI 정보로부터 사용자 정보가 존재하면, 곧바로 로그인 처리됨.
     * 
     * 여기선, AnyIdAuthController.anyidLogin(/api/pp/auth/anyid/login) 에서
     * CI값으로 MbrInfoRVO userInfo 정보를 가져오고 사용자 정보가 존재하면, 
     * 그 이후 로그인 프로세스는 기존 자체 로그인 방식과 동일하게 처리됨.
     * 
     * @param userInfo
     * @return
     */
    public ApiPrnDto loginFromAnyId(MbrInfoRVO userInfo);
}

package kr.go.kids.domain.auth.service.impl;

import java.math.BigInteger;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import kr.go.kids.domain.auth.mapper.MbrTokenMapper;
import kr.go.kids.domain.auth.service.AuthService;
import kr.go.kids.domain.auth.vo.MbrTokenDVO;
import kr.go.kids.domain.auth.vo.MbrTokenPVO;
import kr.go.kids.domain.auth.vo.MbrTokenRVO;
import kr.go.kids.domain.mbr.mapper.MbrInfoMapper;
import kr.go.kids.domain.mbr.vo.MbrInfoPVO;
import kr.go.kids.domain.mbr.vo.MbrInfoRVO;
import kr.go.kids.global.config.util.MessageContextHolder;
import kr.go.kids.global.exception.ApplicationException;
import kr.go.kids.global.security.JwtTokenProvider;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
import kr.go.kids.global.util.DrugsafeUtil;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AuthServiceImpl implements AuthService
{
    @Value("${jwt.refresh-token-expiration}")
    private long REFRESH_TOKEN_EXPIRE_TIME;

    @Value("${jwt.access-token-expiration}")
    private long ACCESS_TOKEN_EXPIRE_TIME;

    @Value("${jwt.issuer}")
    private String ISSUER;

    @Autowired
    public MbrInfoMapper mbrInfoMapper;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private JwtTokenProvider jwtTokenProvider;

    @Autowired
    private MbrTokenMapper mbrTokenMapper;

    @Override
    public MbrTokenRVO getMbrToken(MbrTokenPVO mbrTokenPVO)
    {
        return mbrTokenMapper.getMbrToken(mbrTokenPVO);
    }

    @Override
    public int insertMbrToken(MbrTokenPVO mbrTokenPVO)
    {
        return mbrTokenMapper.insertMbrToken(mbrTokenPVO);
    }

    @Override
    public int updateMbrToken(MbrTokenPVO mbrTokenPVO)
    {
        return mbrTokenMapper.updateMbrToken(mbrTokenPVO);
    }

    @Override
    public int saveMbrToken(MbrTokenPVO mbrTokenPVO)
    {
        return mbrTokenMapper.saveMbrToken(mbrTokenPVO);
    }

    @Override
    public int deleteMbrToken(MbrTokenDVO mbrTokenDVO)
    {
        return mbrTokenMapper.deleteMbrToken(mbrTokenDVO);
    }

    @Override
    public ApiPrnDto login(MbrTokenPVO loginVO){
        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> bizData = new HashMap<>();

        try{
            if(!StringUtils.hasLength(loginVO.getMbrId())){
                // 회원아이디 필수 파라메터가 누락되었습니다.
                throw new ApplicationException("error.param.required", new String[] {MessageContextHolder.getMessage("label.user.mbrId")});
            }

            if(!StringUtils.hasLength(loginVO.getMbrEnpswd())){
                // 회원암호화비밀번호 필수 파라메터가 누락되었습니다.
                throw new ApplicationException("error.param.required", new String[] {MessageContextHolder.getMessage("label.user.mbrEnpswd")});
            }

            MbrInfoPVO mp = new MbrInfoPVO();
            mp.setMbrId(loginVO.getMbrId());

            // 회원정보기본 테이블에 회원정보가 존재하는 조회
            MbrInfoRVO userInfo = mbrInfoMapper.getMbrInfo(mp);

            if(userInfo == null) {
                // 로그인 정보가 일치하지 않습니다.
                apiPrnDto = DrugsafeUtil.getApiPrnDto("0", MessageContextHolder.getMessage("ui.msg.login.nofound"));

                log.debug("AuthServiceImpl login userInfo == null");
            }
            // 로그인 정보와 일치한 경우
            else{
                String mbrId = userInfo.getMbrId();

//                if(!passwordEncoder.matches(loginVO.getMbrEnpswd(), userInfo.getMbrEnpswd())) {
                if(loginVO.getMbrEnpswd() != null && !loginVO.getMbrEnpswd().equals(userInfo.getMbrEnpswd())){
                    apiPrnDto = DrugsafeUtil.getApiPrnDto("0", MessageContextHolder.getMessage("ui.msg.login.nofound"));

                    int pswdErrNmtm = userInfo.getPswdErrNmtm();
                    pswdErrNmtm = pswdErrNmtm + 1;

                    // 로그인 성공하변 회원정보기본에서 로그인 실패 횟수 + 1 증가
                    mp.setPswdErrNmtm(pswdErrNmtm);
                    mp.setMdfrId(mbrId);
                    mp.setMdfcnPrgrmId("Auth1Service.login");

                    mbrInfoMapper.updateMbrInfo(mp);

                    log.debug("AuthServiceImpl login userInfo != null, password is not same!! userInfo.getPswdErrNmtm()="+userInfo.getPswdErrNmtm());
                    HashMap<String, Object> failMap = new HashMap<String, Object>();

                    // 패스워드 불일치로 로그인 실패 횟수 정보 반환
                    failMap.put("pswdErrNmtm", pswdErrNmtm);

                    apiPrnDto.setData(failMap);
                }else{
                    /**
                     * Login Token 생성(Access Token, Refresh Token)
                     */
                    String refreshToken = jwtTokenProvider.createRefreshToken(ISSUER, mbrId, REFRESH_TOKEN_EXPIRE_TIME);
                    String accessToken  = jwtTokenProvider.createAccessToken(ISSUER, mbrId, ACCESS_TOKEN_EXPIRE_TIME);

                    log.debug("AuthServiceImpl login userInfo != null, accessToken="+accessToken);
                    // 기존 토큰 정보가 존재하면 없데이트, 없으면 토큰 생성후 토큰정보 입력,
                    MbrTokenRVO mtr = mbrTokenMapper.getMbrToken(loginVO);

                    if(mtr == null) {
                        long mbrTokenId = mbrTokenMapper.nextMbrTokenId();

                        MbrTokenPVO tokenInsertVO = new MbrTokenPVO();
                        tokenInsertVO.setTokenId(BigInteger.valueOf(mbrTokenId));
                        tokenInsertVO.setAppId(ISSUER);
                        tokenInsertVO.setMbrId(mbrId);
                        tokenInsertVO.setRefreshToken(refreshToken);
                        tokenInsertVO.setAccessToken(accessToken);
                        tokenInsertVO.setRgtrId(mbrId);
                        tokenInsertVO.setRegPrgrmId("Auth1Service.login");
                        tokenInsertVO.setMdfrId(mbrId);
                        tokenInsertVO.setMdfcnPrgrmId("Auth1Service.login");

                        mbrTokenMapper.insertMbrToken(tokenInsertVO);

                        userInfo.setTokenId(BigInteger.valueOf(mbrTokenId));
                        userInfo.setAccessToken(accessToken);
                        userInfo.setRefreshToken(refreshToken);
                        userInfo.setPswdErrNmtm(0);             // 로그인 성공했으므로 기존 로그인 실패 횟수를 0으로 초기화

                        // UI 에 전달한 사용자 정보(userInfo), 토큰 정보(tokenId, accessToken, refreshToken)
                        bizData.put("tokenId", BigInteger.valueOf(mbrTokenId));
                        bizData.put("accessToken", accessToken);
                        bizData.put("refreshToken", refreshToken);
                        bizData.put("pswdErrNmtm", 0);
                        bizData.put("userInfo", userInfo);
                    }
                    // 기존 토큰 정보가 존재하면, 업데이트
                    else{
                        BigInteger tokenId = mtr.getTokenId();
                        MbrTokenPVO tokenUpdateVO = new MbrTokenPVO();
                        tokenUpdateVO.setTokenId(tokenId);
                        tokenUpdateVO.setAppId(ISSUER);
                        tokenUpdateVO.setMbrId(mbrId);
                        tokenUpdateVO.setRefreshToken(refreshToken);
                        tokenUpdateVO.setAccessToken(accessToken);
                        tokenUpdateVO.setMdfrId(mbrId);
                        tokenUpdateVO.setMdfcnPrgrmId("Auth1Service.login");

                        mbrTokenMapper.updateMbrToken(tokenUpdateVO);

                        userInfo.setTokenId(tokenId);
                        userInfo.setAccessToken(accessToken);
                        userInfo.setRefreshToken(refreshToken);
                        userInfo.setPswdErrNmtm(0);             // 로그인 성공했으므로 기존 로그인 실패 횟수를 0으로 초기화

                        // UI 에 전달한 사용자 정보(userInfo), 토큰 정보(tokenId, accessToken, refreshToken)
                        bizData.put("tokenId", tokenId);
                        bizData.put("accessToken", accessToken);
                        bizData.put("refreshToken", refreshToken);
                        bizData.put("pswdErrNmtm", 0);
                        bizData.put("userInfo", userInfo);
                    }

                    // 로그인 성공하변 회원정보기본에서 인증토큰(accessToken), 로그인 실패 횟수=0 지정
                    mp.setCertToken(accessToken);
                    mp.setPswdErrNmtm(0);
                    mp.setMdfrId(mbrId);
                    mp.setMdfcnPrgrmId("Auth1Service.login");

                    mbrInfoMapper.updateMbrInfo(mp);

                    // 로그인되었습니다.
                    apiPrnDto.setMsg(MessageContextHolder.getMessage("ui.msg.login.success"));

                    apiPrnDto.setData(bizData);

                    return apiPrnDto;
                }
            }
        }catch(Exception e){
            apiPrnDto = DrugsafeUtil.getApiPrnDto("-1", e.toString());
        }

        return apiPrnDto;
    }

    public ApiPrnDto refresh(BigInteger tokenId, String refreshToken) {
        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);

        // JWT 토큰 문자열에서 회원ID(mbrId) 가져옴.
        String mbrId = jwtTokenProvider.getSubject(refreshToken);

        MbrTokenPVO mbrTokenPVO = new MbrTokenPVO();
        mbrTokenPVO.setTokenId(tokenId);

        MbrTokenRVO mbrToken = mbrTokenMapper.getMbrToken(mbrTokenPVO);
        if(mbrToken == null)throw new RuntimeException("TOKEN_NOT_FOUND");
        if(!refreshToken.equals(mbrToken.getRefreshToken()))throw new RuntimeException("TOKEN_MISMATCH");

        String newRefreshToken = jwtTokenProvider.createRefreshToken(ISSUER, mbrId, REFRESH_TOKEN_EXPIRE_TIME);
        String newAccessToken = jwtTokenProvider.createAccessToken(ISSUER, mbrId, ACCESS_TOKEN_EXPIRE_TIME);

        MbrTokenPVO tokenInsertVO = new MbrTokenPVO();
        tokenInsertVO.setTokenId(tokenId);
        tokenInsertVO.setAppId(ISSUER);
        tokenInsertVO.setMbrId(mbrId);
        tokenInsertVO.setRefreshToken(newRefreshToken);
        tokenInsertVO.setAccessToken(newAccessToken);
        tokenInsertVO.setMdfrId(mbrId);
        tokenInsertVO.setMdfcnPrgrmId("Auth1Service.login");

        // 기존 토큰 정보 업데이트
        mbrTokenMapper.updateMbrToken(tokenInsertVO);

        MbrInfoPVO mp = new MbrInfoPVO();
        mp.setMbrId(mbrId);

        // 토큰과 연계된 사용자 정보 조회
        MbrInfoRVO userInfo = mbrInfoMapper.getMbrInfo(mp);

        userInfo.setTokenId(tokenId);

        HashMap<String, Object> bizData = new HashMap<>();
        bizData.put("tokenId", tokenId);
        bizData.put("refreshToken", newRefreshToken);
        bizData.put("accessToken", newAccessToken);
        bizData.put("userInfo", userInfo);

        apiPrnDto.setData(bizData);

        return apiPrnDto;
    }

    public ApiPrnDto logout(MbrTokenDVO mbrTokenDVO) {
        mbrTokenMapper.deleteMbrToken(mbrTokenDVO);

        ApiPrnDto dto = new ApiPrnDto(ApiResultCode.SUCCESS);
        return dto;
    }
}

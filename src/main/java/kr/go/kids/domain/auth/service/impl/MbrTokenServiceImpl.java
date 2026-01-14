package kr.go.kids.domain.auth.service.impl;

import java.math.BigInteger;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import kr.go.kids.domain.auth.mapper.MbrTokenMapper;
import kr.go.kids.domain.auth.service.MbrTokenService;
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

@Service
public class MbrTokenServiceImpl implements MbrTokenService
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

            MbrInfoRVO userInfo = mbrInfoMapper.getMbrInfo(mp);

            if(userInfo == null) {
                // 로그인 정보가 일치하지 않습니다.
                apiPrnDto = DrugsafeUtil.getApiPrnDto("-1", MessageContextHolder.getMessage("ui.msg.login.nofound"));
            }
            // 로그인 정보와 일치한 경우
            else{
                if(!passwordEncoder.matches(loginVO.getMbrEnpswd(), userInfo.getMbrEnpswd())) {
                    apiPrnDto = DrugsafeUtil.getApiPrnDto("-1", MessageContextHolder.getMessage("ui.msg.login.nofound"));
                }else{
                    /**
                     * Login Token 생성
                     */
                    String refreshToken = jwtTokenProvider.createRefreshToken(ISSUER, userInfo.getMbrId(), REFRESH_TOKEN_EXPIRE_TIME);
                    String accessToken  = jwtTokenProvider.createAccessToken(ISSUER, userInfo.getMbrId(), ACCESS_TOKEN_EXPIRE_TIME);

                    String mbrId = userInfo.getMbrId();
                    long mbrTokenId = mbrTokenMapper.nextMbrTokenId();

                    MbrTokenPVO tokenInsertVO = new MbrTokenPVO();
                    tokenInsertVO.setTokenId(BigInteger.valueOf(mbrTokenId));
                    tokenInsertVO.setAppId(ISSUER);
                    tokenInsertVO.setMbrId(mbrId);
                    tokenInsertVO.setRefreshToken(refreshToken);
                    tokenInsertVO.setAccessToken(accessToken);
                    tokenInsertVO.setRgtrId(mbrId);
                    tokenInsertVO.setRegPrgrmId("MbrTokenService.login");
                    tokenInsertVO.setMdfrId(mbrId);
                    tokenInsertVO.setMdfcnPrgrmId("MbrTokenService.login");

                    mbrTokenMapper.insertMbrToken(tokenInsertVO);

                    userInfo.setTokenId(BigInteger.valueOf(mbrTokenId));

                    bizData.put("accessToken", accessToken);
                    bizData.put("refreshToken", refreshToken);
                    bizData.put("userInfo", userInfo);

                    // 로그인되었습니다.
                    apiPrnDto.setMsg(MessageContextHolder.getMessage("ui.msg.login.success"));
                }
            }
            apiPrnDto.setData(bizData);
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
        tokenInsertVO.setMdfcnPrgrmId("MbrTokenService.login");

        // 기존 토큰 정보 업데이트
        mbrTokenMapper.updateMbrToken(tokenInsertVO);

        MbrInfoPVO mp = new MbrInfoPVO();
        mp.setMbrId(mbrId);

        // 토큰과 연계된 사용자 정보 조회
        MbrInfoRVO userInfo = mbrInfoMapper.getMbrInfo(mp);

        userInfo.setTokenId(tokenId);

        HashMap<String, Object> bizData = new HashMap<>();
        bizData.put("refreshToken", newRefreshToken);
        bizData.put("accessToken", newAccessToken);
        bizData.put("userInfo", userInfo);

        apiPrnDto.setData(bizData);

        return apiPrnDto;
    }

    public void logout(MbrTokenDVO mbrTokenDVO) {
        mbrTokenMapper.deleteMbrToken(mbrTokenDVO);
    }
}

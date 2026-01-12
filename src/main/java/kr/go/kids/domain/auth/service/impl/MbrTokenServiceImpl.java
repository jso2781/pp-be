package kr.go.kids.domain.auth.service.impl;

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

    @Value("${jwt.app-id}")
    private String APP_ID;

    @Autowired
    public MbrInfoMapper mbrInfoMapper;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private JwtTokenProvider jwtTokenProvider;

    @Autowired
    private MbrTokenMapper mbrTokenMapper;

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
            }else{
                if(!passwordEncoder.matches(loginVO.getMbrEnpswd(), userInfo.getMbrEnpswd())) {
                    apiPrnDto = DrugsafeUtil.getApiPrnDto("-1", MessageContextHolder.getMessage("ui.msg.login.nofound"));
                }else{
                    /**
                     * Login Token 생성
                     */
                    String refreshToken = jwtTokenProvider.createRefreshToken(REFRESH_TOKEN_EXPIRE_TIME);
                    String accessToken  = jwtTokenProvider.createAccessToken(APP_ID, userInfo.getMbrId(), ACCESS_TOKEN_EXPIRE_TIME);

                    MbrTokenPVO tokenUpdateVO = new MbrTokenPVO();
                    tokenUpdateVO.setAppId(APP_ID);
                    tokenUpdateVO.setMbrId(userInfo.getMbrId());
                    tokenUpdateVO.setRefreshToken(refreshToken);
                    tokenUpdateVO.setAccessToken(accessToken);
                    tokenUpdateVO.setMdfrId(userInfo.getMbrId());
                    tokenUpdateVO.setMdfcnPrgrmId("mbrTokenService.login");

                    mbrTokenMapper.updateMbrToken(tokenUpdateVO);

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
}

package kr.or.kids.domain.ca.auth.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import kr.or.kids.domain.ca.auth.mapper.AuthMapper;
import kr.or.kids.domain.ca.auth.service.Auth1Service;
import kr.or.kids.domain.ca.auth.vo.UserLoginReqVO;
import kr.or.kids.domain.ca.auth.vo.UserLoginResVO;
import kr.or.kids.domain.ca.token.component.JwtToken1Provider;
import kr.or.kids.domain.ca.token.mapper.TokenMapper;
import kr.or.kids.domain.ca.token.vo.TokenUserUpdateReqVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import kr.or.kids.global.util.DrugsafeUtil;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class Auth1ServiceImpl  implements Auth1Service {

    private long REFRESH_TOKEN_EXPIRE_TIME = 365 * 24 * 60 * 60 * 1000; //365일
    private long ACCESS_TOKEN_EXPIRE_TIME  =   7 * 24 * 60 * 60 * 1000; //7일
    private String PRGRM_ID  =   "kids-user";

    @Autowired
    public AuthMapper authMapper;
    @Autowired
    private DrugsafeUtil drugsafeUtil;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private JwtToken1Provider jwtToken1Provider;
    @Autowired
    private TokenMapper tokenMapper;

    /**
     * 사용자 로그인
     * @param loginVO
     * @return
     */
    public ApiPrnDto login(UserLoginReqVO loginVO) {

        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> bizData = new HashMap<>();

        try {
            if(!StringUtils.hasLength(loginVO.getUserLoginId())) {
                throw new RuntimeException("userLoginId 필수파라미터가 누락되었습니다.");
            }

            if(!StringUtils.hasLength(loginVO.getUserPw())) {
                throw new RuntimeException("adminPw 필수파라미터가 누락되었습니다.");
            }

            /**
             * BizProc
             */
            UserLoginResVO userInfo = authMapper.loginData(loginVO);
            
            log.info("=== 로그인 시도 ===");
            log.info("입력 ID: {}", loginVO.getUserLoginId());
            log.info("조회 결과: {}", userInfo);

            if(userInfo == null) {
                log.warn("사용자를 찾을 수 없음: {}", loginVO.getUserLoginId());
                result = drugsafeUtil.getApiPrnDto("-1", "로그인정보가 일치하지 않습니다.");
            } else {
                log.info("사용자 찾음 - ID: {}, LoginId: {}", userInfo.getUserId(), userInfo.getUserLoginId());
                log.info("DB 비밀번호: {}", userInfo.getUserPw());
                log.info("입력 비밀번호: {}", loginVO.getUserPw());
                
                boolean passwordMatch = passwordEncoder.matches(loginVO.getUserPw(), userInfo.getUserPw());
                log.info("비밀번호 일치 여부: {}", passwordMatch);
                
                if(!passwordMatch) {
                    log.warn("비밀번호 불일치");
                    result = drugsafeUtil.getApiPrnDto("-1", "로그인정보가 일치하지 않습니다.");
                } else {
                    /**
                     * Login Token 생성
                     */
                    String updtTokenCn = jwtToken1Provider.createUpdtTokenCn(REFRESH_TOKEN_EXPIRE_TIME);
                    String acsTokenCn  = jwtToken1Provider.createAcsTokenCn(PRGRM_ID, userInfo.getUserId().toString(), ACCESS_TOKEN_EXPIRE_TIME);

                    TokenUserUpdateReqVO tokenUpdateVO = new TokenUserUpdateReqVO();
                    tokenUpdateVO.setUserId(Long.valueOf(userInfo.getUserId()));
                    tokenUpdateVO.setUpdtTokenCn(updtTokenCn);
                    tokenUpdateVO.setAcsTokenCn(acsTokenCn);

                    tokenMapper.userUpdate(tokenUpdateVO);

                    bizData.put("acsTokenCn", acsTokenCn);
                    bizData.put("updtTokenCn", updtTokenCn);
                    bizData.put("userInfo", userInfo);
                    result.setMsg("로그인되었습니다.");
                }
            }
            result.setData(bizData);
        } catch(Exception e) {
            result = drugsafeUtil.getApiPrnDto("-1", e.toString());
        }

        return result;
    }




}

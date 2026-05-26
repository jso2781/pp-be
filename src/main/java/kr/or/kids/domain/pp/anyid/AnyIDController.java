package kr.or.kids.domain.pp.anyid;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.or.kids.domain.pp.anyid.vo.AnyIdInitPVO;
import kr.or.kids.domain.pp.anyid.vo.AnyIdInitRVO;
import kr.or.kids.domain.pp.anyid.vo.AnyIdUserinfoRVO;
import kr.or.kids.domain.pp.anyid.vo.SsoInfoPVO;
import kr.or.kids.domain.pp.anyid.vo.SsoInfoRVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

@RestController
@RequestMapping("/api/pp/auth")
public class AnyIDController {

    /**
     * AnyId 초기화 정보 조회
     * @param AnyIdInitPVO
     * @param request
     * @return SSO 기본 정보
     */
    @PostMapping("/anyid/init")
    @ResponseBody
    public ResponseEntity<ApiPrnDto> init(@RequestBody AnyIdInitPVO param, HttpServletRequest request) throws Exception {
    	HashMap<String, Object> bizData = new HashMap<String, Object>();

        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);

        AnyIdInitRVO resultVo = new AnyIdInitRVO();
        String txId = param.getTx();

        resultVo.setCfg("/".equalsIgnoreCase(request.getContextPath()) ? "" : request.getContextPath() + "/config/config.anyidc.json");
        resultVo.setTxId(txId);
        resultVo.setTag(txId);
        resultVo.setLvl(3);
        resultVo.setBypass(1);
        resultVo.setTheme("4.1.0");
        resultVo.setToggle(false);

        bizData.put("result", resultVo);
        apiPrnDto.setData(bizData);

        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    /**
     * SSO 기존 정보 조회
     * @param SsoInfoPVO
     * @param request
     * @return SSO 기존 정보
     */
    @PostMapping("/anyid/ssoInfo")
    @ResponseBody
    public ResponseEntity<ApiPrnDto> sso(@RequestBody SsoInfoPVO param, HttpServletRequest request) throws Exception {
        HashMap<String, Object> bizData = new HashMap<String, Object>();

        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);

        SsoInfoRVO resultVo = new SsoInfoRVO();
        resultVo.setMt(param.getMt());
        resultVo.setPortalJoinUri(param.getPortalJoinUri());
        resultVo.setSsoByPass(1);
        resultVo.setAgencyContextPath("/".equalsIgnoreCase(request.getContextPath()) ? "" : request.getContextPath());

        bizData.put("result", resultVo);
        apiPrnDto.setData(bizData);

        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    /**
     * SSO 기존 정보 조회
     * @param SsoInfoPVO
     * @param request
     * @return SSO 기존 정보
     */
    @PostMapping("/anyid/userInfo")
    @ResponseBody
    public ResponseEntity<ApiPrnDto> userinfo(HttpServletRequest request) throws Exception {
        Map<String, Object> result = new HashMap<String, Object>();
        HashMap<String, Object> bizData = new HashMap<String, Object>();

        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);

        HttpSession session = request.getSession();

        AnyIdUserinfoRVO resultVo = new AnyIdUserinfoRVO();

        if(null != session){
            Map<String, Object> anyidSession = (Map<String, Object>)session.getAttribute("anyid");
            if(anyidSession != null) {
                resultVo.setAnyid(anyidSession);
                result.putAll(anyidSession);

                Map<String, Object> userInfo = (Map<String, Object>)anyidSession.get("sso");

                if(userInfo != null){
                    resultVo.setSso(userInfo);
                    result.putAll(userInfo);
                }

                resultVo.setAnyIdUserinfo(result);
            }
        }

        bizData.put("result", resultVo);
        apiPrnDto.setData(bizData);

        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }
}

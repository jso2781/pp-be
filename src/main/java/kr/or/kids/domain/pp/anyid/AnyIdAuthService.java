package kr.or.kids.domain.pp.anyid;

import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.anyid.util.AnyidCertRef;
import kr.or.kids.domain.pp.anyid.dto.AnyIdLoginRequest;
import kr.or.kids.domain.pp.anyid.vo.AnyIdLoginResponseRVO;
import kr.or.kids.global.config.OpenApiConfig;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AnyIdAuthService {

    private final OpenApiConfig openApiConfig;

    private final AnyIdResourcePaths resourcePaths;
    private final ObjectMapper objectMapper;

    public AnyIdAuthService(AnyIdResourcePaths resourcePaths, ObjectMapper objectMapper, OpenApiConfig openApiConfig) {
        this.resourcePaths = resourcePaths;
        this.objectMapper = objectMapper;
        this.openApiConfig = openApiConfig;
    }

    /**
     * Any-ID SDK 중계형: 프론트에서 전달된 ssob(인증정보) + tag(tx) 를 복호화/검증하고,
     * 필요한 사용자 정보를 추출합니다.
     */
    public ApiPrnDto verifyAndExtract(AnyIdLoginRequest req) {
        if (req == null || req.ssob() == null || req.ssob().isBlank() || req.tag() == null || req.tag().isBlank()) {
            throw new IllegalArgumentException("ssob and tag are required");
        }

        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> bizData = new HashMap<>();

        // orgLogin.jsp 샘플 로직과 동일한 흐름
        String ssobStr = null;
        AnyidCertRef anyidCertRef = new AnyidCertRef();
        try {

            log.debug("================ AnyIdAuthService anyidCertRef.decryptSsob before ssob="+req.ssob());
            log.debug("================ AnyIdAuthService anyidCertRef.decryptSsob before tag="+req.tag());
            log.debug("================ AnyIdAuthService anyidCertRef.decryptSsob before resourcePaths.kdistApiJsonFilePath()="+resourcePaths.kdistApiJsonFilePath());

            Resource resource = new ClassPathResource("config/kdist/kdist-api.json");
            InputStream inputStream = resource.getInputStream();
            
            Map<String, Object> resultMap = anyidCertRef.decryptSsob(req.ssob(), req.tag(), inputStream);
            ssobStr = (String) resultMap.get("ssobStr");
            if (ssobStr == null || ssobStr.isBlank()) {
                throw new IllegalStateException("decryptSsob did not return ssobStr");
            }

            Map<String, Object> ssob = readJsonMap(ssobStr);

            String ci = asString(ssob.get("ci"));
            String name = asString(ssob.get("name"));
            Integer authLvl = asInt(ssob.get("authLvl"));
            String group = asString(ssob.get("group"));
            String timestamp = asString(ssob.get("timestamp"));
            String clientIp = asString(ssob.get("clientIp"));

            AnyIdLoginResponseRVO resultVo = new AnyIdLoginResponseRVO();
            resultVo.setStatus("success");
            resultVo.setCi(ci);
            resultVo.setName(name);
            resultVo.setAuthLvl(authLvl);
            resultVo.setGroup(group);
            resultVo.setTimestamp(timestamp);
            resultVo.setClientIp(clientIp);
            resultVo.setSso(ssob);

            bizData.put("result", resultVo);

            apiPrnDto.setData(bizData);
        }catch(Exception e){
            e.printStackTrace();

            apiPrnDto = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            apiPrnDto.setMsg(e.getMessage());

            AnyIdLoginResponseRVO resultVo = new AnyIdLoginResponseRVO();
            resultVo.setStatus("fail");
            bizData.put("result", resultVo);

            apiPrnDto.setData(bizData);
        }

        return apiPrnDto;
    }

    private Map<String, Object> readJsonMap(String json) {
        try {
            return objectMapper.readValue(json, new TypeReference<Map<String, Object>>() {});
        } catch (Exception e) {
            throw new IllegalStateException("Failed to parse ssobStr JSON", e);
        }
    }

    private static String asString(Object v) {
        return v == null ? null : String.valueOf(v);
    }

    private static Integer asInt(Object v) {
        if (v == null) return null;
        if (v instanceof Number n) return n.intValue();
        try {
            return Integer.parseInt(String.valueOf(v));
        } catch (Exception e) {
            return null;
        }
    }
}

package kr.or.kids.domain.pp.anyid;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.FileReader;
import java.io.PrintStream;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.anyid.util.AnyidCertRef;
import kr.or.kids.domain.pp.anyid.dto.AnyIdLoginRequest;
import kr.or.kids.domain.pp.anyid.vo.AnyIdLoginResponseRVO;
import kr.or.kids.domain.pp.external.connectionlog.client.ConnectionLogClient;
import kr.or.kids.domain.pp.external.connectionlog.vo.ConnectionLogInsertReqVO;
import kr.or.kids.domain.pp.mbr.mapper.MbrInfoMapper;
import kr.or.kids.domain.pp.mbr.vo.MbrInfoPVO;
import kr.or.kids.domain.pp.mbr.vo.MbrInfoRVO;
import kr.or.kids.global.config.util.MessageContextHolder;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import kr.or.kids.global.util.DrugsafeUtil;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AnyIdAuthService {

    private final AnyIdResourcePaths resourcePaths;
    private final ObjectMapper objectMapper;
    private final ConnectionLogClient connectionLogClient;
    private final MbrInfoMapper mbrInfoMapper;

    public AnyIdAuthService(AnyIdResourcePaths resourcePaths, ObjectMapper objectMapper, ConnectionLogClient connectionLogClient, MbrInfoMapper mbrInfoMapper) {
        this.resourcePaths = resourcePaths;
        this.objectMapper = objectMapper;
        this.connectionLogClient = connectionLogClient;
        this.mbrInfoMapper = mbrInfoMapper;
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
        // String ssobStr = null;
        try {

            log.debug("================ AnyIdAuthService anyidCertRef.decryptSsob before ssob="+req.ssob());
            log.debug("================ AnyIdAuthService anyidCertRef.decryptSsob before tag="+req.tag());
            log.debug("================ AnyIdAuthService anyidCertRef.decryptSsob before resourcePaths.kdistApiJsonFilePath()="+resourcePaths.kdistApiJsonFilePath());

            Resource resource2 = new ClassPathResource("config/kdist/kdist-api.json");

            log.debug("================ AnyIdAuthService anyidCertRef.decryptSsob 232323 before resource.getFilename()="+resource2.getFilename());


            BufferedReader br = new BufferedReader(new FileReader(resourcePaths.kdistApiJsonFilePath()));


            String strLine = null;
            log.debug("================ AnyIdAuthService anyidCertRef.decryptSsob before resource.getFilename()="+resource2.getFilename()+" Content Start =====================================");
            while((strLine = br.readLine()) != null) {
                log.debug(strLine);
            }
            log.debug("================ AnyIdAuthService anyidCertRef.decryptSsob before resource.getFilename()="+resource2.getFilename()+" Content End =====================================");
            br.close();

            String ssobStr = customDecryptSsob(req.ssob(), req.tag());
            Map<String, Object> ssob = readJsonMap(ssobStr);

            log.debug("================ AnyIdAuthService anyidCertRef.decryptSsob after readJsonMap ssob Map=", ssob);

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

    public String customDecryptSsob(String ssob, String tag) {
        AnyidCertRef anyidCertRef = new AnyidCertRef();

        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        PrintStream capture = new PrintStream(baos, true, StandardCharsets.UTF_8);
        PrintStream originalOut = System.out;
        PrintStream originalErr = System.err;
        System.setOut(capture);
        System.setErr(capture);

        String kdistApiJsonFilePath = resourcePaths.kdistApiJsonFilePath();

        log.debug("AnyIdAuthService customDecryptSsob anyidCertRef.decryptSsob before kdistApiJsonFilePath = {}", kdistApiJsonFilePath);
        try{
            anyidCertRef.decryptSsob(ssob, tag, kdistApiJsonFilePath);
        }
        catch(Exception e){
            log.debug("AnyIdAuthService customDecryptSsob anyidCertRef.decryptSsob after exception : \n{}", e.getMessage());
            e.printStackTrace();
        }

        System.setOut(originalOut);
        System.setOut(originalErr);
        String consoleOutput = baos.toString(StandardCharsets.UTF_8);

        log.debug("캡처된 출력:\n{}", consoleOutput);

        // ssobStr 파싱
        String ssobStr = Arrays.stream(consoleOutput.split("\n"))
                .filter(line -> line.startsWith("ssobStr : "))
                .map(line -> line.substring("ssobStr : ".length()).trim())
                .findFirst()
                .orElse(null);

        log.debug("AnyIdAuthService customDecryptSsob anyidCertRef.decryptSsob after ssobStr = {}", ssobStr);

        return ssobStr;
    }

    public String getCiFromSsob(String ssob, String tag) {
        AnyidCertRef anyidCertRef = new AnyidCertRef();

        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        PrintStream capture = new PrintStream(baos, true, StandardCharsets.UTF_8);
        PrintStream originalOut = System.out;
        PrintStream originalErr = System.err;
        System.setOut(capture);
        System.setErr(capture);

        String kdistApiJsonFilePath = resourcePaths.kdistApiJsonFilePath();

        log.debug("AnyIdAuthService getCiFromSsob anyidCertRef.decryptSsob before kdistApiJsonFilePath = {}", kdistApiJsonFilePath);
        try{
            anyidCertRef.decryptSsob(ssob, tag, kdistApiJsonFilePath);
        }
        catch(Exception e){
            log.debug("AnyIdAuthService getCiFromSsob anyidCertRef.decryptSsob after exception : \n{}", e.getMessage());
            e.printStackTrace();
        }

        System.setOut(originalOut);
        System.setOut(originalErr);
        String consoleOutput = baos.toString(StandardCharsets.UTF_8);

        log.debug("캡처된 출력:\n{}", consoleOutput);

        // ssobStr 파싱
        String ssobStr = Arrays.stream(consoleOutput.split("\n"))
                .filter(line -> line.startsWith("ssobStr : "))
                .map(line -> line.substring("ssobStr : ".length()).trim())
                .findFirst()
                .orElse(null);

        log.debug("AnyIdAuthService getCiFromSsob anyidCertRef.decryptSsob after ssobStr = {}", ssobStr);

        Map<String, Object> ssobMap = readJsonMap(ssobStr);
        String ci = asString(ssobMap.get("ci"));

        return ci;
    }

    public Map<String, Object> getUserInfoFromSsob(String ssob, String tag) {
        AnyidCertRef anyidCertRef = new AnyidCertRef();

        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        PrintStream capture = new PrintStream(baos, true, StandardCharsets.UTF_8);
        PrintStream originalOut = System.out;
        PrintStream originalErr = System.err;
        System.setOut(capture);
        System.setErr(capture);

        String kdistApiJsonFilePath = resourcePaths.kdistApiJsonFilePath();

        log.debug("AnyIdAuthService getUserInfoFromSsob anyidCertRef.decryptSsob before kdistApiJsonFilePath = {}", kdistApiJsonFilePath);
        try{
            anyidCertRef.decryptSsob(ssob, tag, kdistApiJsonFilePath);
        }
        catch(Exception e){
            log.debug("AnyIdAuthService getUserInfoFromSsob anyidCertRef.decryptSsob after exception : \n{}", e.getMessage());
            e.printStackTrace();
        }

        System.setOut(originalOut);
        System.setOut(originalErr);
        String consoleOutput = baos.toString(StandardCharsets.UTF_8);

        log.debug("캡처된 출력:\n{}", consoleOutput);

        // ssobStr 파싱
        String ssobStr = Arrays.stream(consoleOutput.split("\n"))
                .filter(line -> line.startsWith("ssobStr : "))
                .map(line -> line.substring("ssobStr : ".length()).trim())
                .findFirst()
                .orElse(null);

        log.debug("AnyIdAuthService getUserInfoFromSsob anyidCertRef.decryptSsob after ssobStr = {}", ssobStr);

        /* ssobMap = 
         * {
         *     "userSeCd": "01",
         *     "phone": "01037898540",
         *     "ci": "BSE8/HaCwUt6jOXI5sicOQf4QF5a5eOxZKyOZVhHoNa603/laU7SLBkK8OnDmBLEE1Cb6cT2myEL5S4zC4oLow==",
         *     "vendor": "esign",
         *     "clientIp": "172.16.10.95",
         *     "name": "박성주",
         *     "authLvl": 2,
         *     "brdt": "19770728",
         *     "group": "03",
         *     "timestamp": "2026-03-25 06:31:04:0351"
         * }
         */
        Map<String, Object> ssobMap = readJsonMap(ssobStr);

        return ssobMap;
    }

    public ApiPrnDto processAnyIdLogout(HttpServletRequest request) {        
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);

        log.debug("AnyIdAuthService processAnyIdLogout principal="+authentication.getPrincipal());

        /**************************************** 공통_세션정보시스템로그 Rest API 호출(tb_ca_l_sesn_log_info_mng 로그아웃 기록) 시작 ************************************************/
        if(
            authentication != null && authentication.isAuthenticated() &&
            !"anonymousUser".equals(authentication.getPrincipal()) &&
            !(authentication instanceof org.springframework.security.authentication.AnonymousAuthenticationToken)
        ){
            Object principal = authentication.getPrincipal();
            String mbrId = (principal instanceof String) ? (String) principal : null;

            log.debug("AnyIdAuthService processAnyIdLogout mbrId="+mbrId);

            MbrInfoPVO mbrInfoPVO = new MbrInfoPVO();
            mbrInfoPVO.setMbrId(mbrId);

            MbrInfoRVO resultVo = mbrInfoMapper.getMbrInfo(mbrInfoPVO);

            String mbrNo = null;

            if(resultVo != null){
                mbrNo = resultVo.getMbrNo();
            }

            DrugsafeUtil util = new DrugsafeUtil();
            String clientIp = util.getClientIp(request);

            ConnectionLogInsertReqVO req = new ConnectionLogInsertReqVO();

            // 로그인구분코드(1 : ID 로그인 , 2 : 애니아이디 로그인)
            req.setLgnSeCd("2");

            // 네트워크 구분코드(1 : 내부망, 2 : 외부망)
            req.setNetSeCd(clientIp != null && clientIp.indexOf("192.168") > -1 ? "1" : "2");

            // 서비스사용자 아이디
            req.setSrvcUserId(mbrId);

            // 요청자IP주소
            req.setRqstrIpAddr(clientIp);

            // 접속구분번호(1 : 로그인, 2:로그아웃) 
            req.setCntnSeNo("2");

            // 접속 상세 설명
            req.setCntnDtlExpln("LogOut");

            // 인증토큰값(CI 값을 넣을지 확정 안됨.)
            req.setCertTokenVl("");

            // 서비스명
            req.setSrvcNm("kids_pp");

            // 업무구분코드
            req.setTaskSeCd("PP");

            // 등록자 아이디
            req.setRgtrId(mbrNo);

            // 수정자 아이디
            req.setMdfrId(mbrNo);

            log.debug("AnyIdAuthService processAnyIdLogout ConnectionLogClient.insert ConnectionLogInsertReqVO="+req.toString());
            connectionLogClient.insert(req);
        }
        /**************************************** 공통_세션정보시스템로그 Rest API 호출(tb_ca_l_sesn_log_info_mng 로그아웃 기록) 끝 ************************************************/

        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
        SecurityContextHolder.clearContext();

        log.debug("AnyIdAuthService processAnyIdLogout SecurityContextHolder.clearContext();!!");

        // 로그아웃되었습니다.
        apiPrnDto.setMsg(MessageContextHolder.getMessage("ui.msg.logout.success"));

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

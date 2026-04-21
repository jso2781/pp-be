package kr.or.kids.domain.pp.niceid.controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.or.kids.domain.pp.niceid.service.NiceidService;
import kr.or.kids.domain.pp.niceid.vo.NiceidPVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import nice.intc.common.util.IntcCodeUtil;
import nice.intc.module.IntcClient;
import nice.intc.module.model.FillInData;
import nice.intc.module.model.IntcResultReqInfo;
import nice.intc.module.model.IntcResultResInfo;
import nice.intc.module.model.IntcUrlReqInfo;
import nice.intc.module.model.IntcUrlResInfo;

@Slf4j
@Tag(name = "NiceIdController", description = "대국민포털_회원정보기본 관리")
@RestController
@RequestMapping(value="/api/pp/niceid")
@RequiredArgsConstructor
public class NiceidController {

    private final NiceidService niceidService;
    private final StringRedisTemplate redisTemplate;

    @Operation(summary = "대국민포털_나이스실명 조회", description = "대국민포털_나이스실명기본 조회한다.")
    @PostMapping(value="/getTransctionId")
    @ResponseBody
    public ResponseEntity<ApiPrnDto> getTransctionId(@RequestBody NiceidPVO niceidPVO,HttpServletRequest request)
    {
        ApiPrnDto apiPrnDtoTmp = niceidService.getTransctionId(niceidPVO);
        Map<String, Object> map = apiPrnDtoTmp.getData();

        String clientId = (String)map.get("clientId");
        String clientSecret = (String)map.get("clientSecret");
        String returnUrl = (String)map.get("returnUrl");

        log.debug("/api/pp/niceid/getTransctionId clientId="+clientId+", clientSecret="+clientSecret+", returnUrl="+returnUrl);

        // 인증 URL 요청 데이터 생성
        IntcUrlReqInfo intcUrlReqInfo = new IntcUrlReqInfo();
        intcUrlReqInfo.setApiDomain("https://auth.niceid.co.kr");
        intcUrlReqInfo.setClientId(clientId);         //("{NICE로부터 받은 CLIENT_ID}");
        intcUrlReqInfo.setClientSecret(clientSecret); //("{NICE로부터 받은 CLIENT_SRCERT}");
        intcUrlReqInfo.setResultUrl(returnUrl);       // 인증 완료 응답 URL
        intcUrlReqInfo.setCloseUrl("");               //  표준창 내 닫기 시 이동할 URL, 입력값이 없는 경우 창 닫기
        intcUrlReqInfo.setRequestNo("");               // 빈값 입력 시 랜덤값으로 생성됨
        intcUrlReqInfo.setSvcTypes(Arrays.asList("M")); // 인증 수단 요청 M:휴대폰인증, F:금용인증서, U:공동인증서, I:아이핀

        intcUrlReqInfo.setExpMods(Collections.singletonList("mobbileCloseUiOn"));
        intcUrlReqInfo.setConnectTimeout(3000);
        intcUrlReqInfo.setReadTimeout(3000);

        intcUrlReqInfo.setMethodType(IntcCodeUtil.METHOD_TYPE.GET); // 회원사 인증 완료 URL을 요청할때 http method type, 디폴트 GET

        // fill 데이터 - 필요한 회원사만 별도 제공
        FillInData fillInData = new FillInData();
        fillInData.setBirthdate("");
        fillInData.setGender("");
        fillInData.setMobileNo("");
        fillInData.setName("");
        fillInData.setNationalInfo("");
        intcUrlReqInfo.setFillInData(fillInData);

        IntcUrlResInfo intcUrlResInfo = null;
        try {
            // 인증 URL 요청
            IntcClient intcClient = new IntcClient();
            intcUrlResInfo = intcClient.getAuthUrl(intcUrlReqInfo);
        }catch(Exception e) {
            e.printStackTrace();
        }


        log.debug("/api/pp/niceid/getTransctionId 111 intcUrlResInfo="+intcUrlResInfo);

        if (intcUrlResInfo != null) {
            if ("0000".equals(intcUrlResInfo.getReturnCode())) {
                System.out.println("응답코드:" + intcUrlResInfo.getReturnCode());
                System.out.println("응답메세지:" + intcUrlResInfo.getResultMessage());
                System.out.println("요청고유번호:" + intcUrlResInfo.getRequestNo());
                System.out.println("트랜잭션아이디:" + intcUrlResInfo.getTransactionId());
                System.out.println("인증요청 URL:" + intcUrlResInfo.getAuthUrl());

                String key = "NICE-ID"; //  + intcUrlResInfo.getTransactionId();
                redisTemplate.opsForHash().put(key, "requestNo", intcUrlResInfo.getRequestNo());
                redisTemplate.opsForHash().put(key, "transactionId", intcUrlResInfo.getTransactionId());
                redisTemplate.expire(key, 5, TimeUnit.MINUTES);
            }
        }

        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<String, Object>();

        data.put("requestNo", intcUrlResInfo.getRequestNo());
        data.put("transctionId", intcUrlResInfo.getTransactionId());
        data.put("returnCode", intcUrlResInfo.getReturnCode());
        data.put("uthUrl", intcUrlResInfo.getAuthUrl());
        apiPrnDto.setData(data);

        if("0".equals(apiPrnDto.getCode())) {
            return ResponseEntity.ok(apiPrnDto);
        }else {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(apiPrnDto);
        }
    }


    @Operation(summary = "대국민포털_나이스실명응답", description = "대국민포털_나이스실명기본 응답한다.")
    @GetMapping(value="/return")
    public void authResult(NiceidPVO niceidPVO, HttpServletRequest request, HttpServletResponse response) throws IOException {

        ApiPrnDto apiPrnDtoTmp = niceidService.getTransctionId(niceidPVO);
        Map<String, Object> map = apiPrnDtoTmp.getData();

        System.out.println("request:::::" + request);

        String clientId = (String) map.get("clientId");
        String clientSecret = (String) map.get("clientSecret");

        String webTransactionId = request.getParameter("web_transaction_id");

        // Redis 키를 transactionId 기반으로 변경 (동시 사용자 구분)
       // String transactionId = request.getParameter("transaction_id");
        //String key = "NICE:" + transactionId;
        String key = "NICE-ID";
        String requestNo = (String) redisTemplate.opsForHash().get(key, "requestNo");
        String savedTransactionId = (String) redisTemplate.opsForHash().get(key, "transactionId");

        IntcResultReqInfo intcResultReqInfo = new IntcResultReqInfo();
        intcResultReqInfo.setApiDomain("https://auth.niceid.co.kr");
        intcResultReqInfo.setClientId(clientId);
        intcResultReqInfo.setClientSecret(clientSecret);
        intcResultReqInfo.setRequestNo(requestNo);
        intcResultReqInfo.setTransactionId(savedTransactionId);
        intcResultReqInfo.setWebTransactionId(webTransactionId);
        intcResultReqInfo.setConnectTimeout(3000);
        intcResultReqInfo.setReadTimeout(3000);

        IntcClient intcClient = new IntcClient();
        IntcResultResInfo intcResultResInfo = intcClient.getAuthResult(intcResultReqInfo);

        // Redis 삭제
        redisTemplate.delete(key);

        response.setContentType("text/html;charset=UTF-8");

        // 인증 실패 또는 null 처리
        if (intcResultResInfo == null || !"0000".equals(intcResultResInfo.getReturnCode())) {
            String errorMsg = intcResultResInfo != null ? intcResultResInfo.getResultMessage() : "인증 결과 없음";
            response.getWriter().write(
                    "<html><body><script>" +
                            "var data = { type: 'NICE_AUTH_RESULT', code: 'FAIL', msg: '" + errorMsg.replace("'", "\\'") + "' };" +
                            "if (window.opener) { window.opener.postMessage(data, window.location.origin); }" +
                            " else { localStorage.setItem('NICE_AUTH_RESULT', JSON.stringify(data)); localStorage.removeItem('NICE_AUTH_RESULT'); }" +
                            "window.close();" +
                            "</script></body></html>"
            );
            return;
        }

        // 인증 성공 - XSS 방지를 위해 작은따옴표 이스케이프
        /*
        String name = intcResultResInfo.getAuthResultData().getName().replace("'", "\\'");
        String birthdate = intcResultResInfo.getAuthResultData().getBirthdate().replace("'", "\\'");
        String gender = intcResultResInfo.getAuthResultData().getGender().replace("'", "\\'");
        String ci = intcResultResInfo.getAuthResultData().getCi().replace("'", "\\'");
        String di = intcResultResInfo.getAuthResultData().getDi().replace("'", "\\'");
        String mobileNo = intcResultResInfo.getAuthResultData().getMobileNo().replace("'", "\\'");
         */
        String name = safeExtract(intcResultResInfo.getAuthResultData().getName());
        String birthdate =  safeExtract(intcResultResInfo.getAuthResultData().getBirthdate());
        String gender =  safeExtract(intcResultResInfo.getAuthResultData().getGender());
        String ci =  safeExtract(intcResultResInfo.getAuthResultData().getCi());
        String di =  safeExtract(intcResultResInfo.getAuthResultData().getDi());
        String mobileNo =  safeExtract(intcResultResInfo.getAuthResultData().getMobileNo());

        response.getWriter().write(
                "<html><body><script>" +
                        "var data = {" +
                        "  type: 'NICE_AUTH_RESULT'," +
                        "  code: '0000'," +
                        "  name: '" + name + "'," +
                        "  birthdate: '" + birthdate + "'," +
                        "  gender: '" + gender + "'," +
                        "  ci: '" + ci + "'," +
                        "  di: '" + di + "'," +
                        "  mobileNo: '" + mobileNo + "'" +
                        "};" +
                        "if (window.opener) {" +
                        "  window.opener.postMessage(data, window.location.origin);" +
                        "} else {" +
                        "  localStorage.setItem('NICE_AUTH_RESULT', JSON.stringify(data));" +
                        "  localStorage.removeItem('NICE_AUTH_RESULT');" +
                        "}" +
                        "window.close();" +
                        "</script></body></html>"
        );
    }

    private String safeExtract(String value){
        return value !=null ? value.replace("'", "\\'") : "";
    }

  /*
    @Operation(summary = "대국민포털_나이스실명응답", description = "대국민포털_나이스실명기본 응답한다.")
    @GetMapping(value="/return")
    public void authResult(NiceidPVO niceidPVO, HttpServletRequest request, HttpServletResponse response) throws IOException {

        ApiPrnDto apiPrnDtoTmp = niceidService.getTransctionId(niceidPVO);
        Map<String, Object> map = apiPrnDtoTmp.getData();

        String clientId = (String)map.get("clientId");
        String clientSecret = (String)map.get("clientSecret");

        // 인증완료 웹 트랜잭션 아이디
        String webTransactionId = request.getParameter("web_transaction_id");

        String key = "NICE-ID";
        String requestNo  = (String) redisTemplate.opsForHash().get(key,"requestNo");
        String transactionId  = (String) redisTemplate.opsForHash().get(key,"transactionId");

        System.out.println("webTransactionId:::::"+ webTransactionId);
        System.out.println("requestNo:::::"+ requestNo);
        System.out.println("transactionId:::::"+ transactionId);

        // 인증 결과 요청 데이터 생성
        IntcResultReqInfo intcResultReqInfo = new IntcResultReqInfo();
        intcResultReqInfo.setApiDomain("https://auth.niceid.co.kr");
        intcResultReqInfo.setClientId(clientId);
        intcResultReqInfo.setClientSecret(clientSecret);
        intcResultReqInfo.setRequestNo(requestNo);
        intcResultReqInfo.setTransactionId(transactionId);
        intcResultReqInfo.setWebTransactionId(webTransactionId);
        intcResultReqInfo.setConnectTimeout(3000);
        intcResultReqInfo.setReadTimeout(3000);

        // 인증 결과 요청
        IntcClient intcClient = new IntcClient();
        IntcResultResInfo intcResultResInfo = intcClient.getAuthResult(intcResultReqInfo);

        // 인증 결과 응답
        if (intcResultResInfo != null) {
            if ("0000".equals(intcResultResInfo.getReturnCode())) {
                System.out.println("응답코드:"+intcResultResInfo.getReturnCode());
                System.out.println("응답메세지:"+intcResultResInfo.getResultMessage());
                System.out.println("인증결과-이름:"+intcResultResInfo.getAuthResultData().getName());
                System.out.println("인증결과-생년월일:"+intcResultResInfo.getAuthResultData().getBirthdate());
                System.out.println("인증결과-성별:"+intcResultResInfo.getAuthResultData().getGender());
                System.out.println("인증결과-내외국인:"+intcResultResInfo.getAuthResultData().getNationalInfo());
                System.out.println("인증결과-:"+intcResultResInfo.getAuthResultData().getCi());
                System.out.println("인증결과-CI2:"+intcResultResInfo.getAuthResultData().getCi2());
                System.out.println("인증결과-CI업데이트버전:"+intcResultResInfo.getAuthResultData().getCiUpdate());
                System.out.println("인증결과-DI:"+intcResultResInfo.getAuthResultData().getDi());
                System.out.println("인증결과-통신사:"+intcResultResInfo.getAuthResultData().getMobileCo());
                System.out.println("인증결과-휴대폰번호:"+intcResultResInfo.getAuthResultData().getMobileNo());
                System.out.println("인증결과-아이핀가상번호:"+intcResultResInfo.getAuthResultData().getVnumber());
                System.out.println("인증결과-연령코드:"+intcResultResInfo.getAuthResultData().getAgeCode());
                System.out.println("인증결과-아이핀 가입 인증수단:"+intcResultResInfo.getAuthResultData().getAuthMethod());
            } else {
                System.out.println("응답코드:"+intcResultResInfo.getReturnCode());
                System.out.println("응답메세지:"+intcResultResInfo.getResultMessage());
            }

            // 사용 후 삭제
            redisTemplate.delete(key);
        }

        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().write(
                "<html><body><script>" +
                        "var data = {" +
                        "  type: 'NICE_AUTH_RESULT'," +
                        "  code: '0000'," +
                        "  name: '" + intcResultResInfo.getAuthResultData().getName() + "'," +
                        "  birthdate: '" + intcResultResInfo.getAuthResultData().getBirthdate() + "'," +
                        "  gender: '" + intcResultResInfo.getAuthResultData().getGender() + "'," +
                        "  ci: '" + intcResultResInfo.getAuthResultData().getCi() + "'," +
                        "  di: '" + intcResultResInfo.getAuthResultData().getDi() + "'," +
                        "  mobileNo: '" + intcResultResInfo.getAuthResultData().getMobileNo() + "'" +
                        "};" +
                        "if (window.opener) {" +
                        "  window.opener.postMessage(data, window.location.origin);" +
                        "  window.close();" +
                        "} else {" +
                        "  // opener가 없으면 localStorage 이벤트로 전달" +
                        "  localStorage.setItem('NICE_AUTH_RESULT', JSON.stringify(data));" +
                        "  localStorage.removeItem('NICE_AUTH_RESULT');" +
                        "  window.close();" +
                        "}" +
                        "</script></body></html>"
        );

    }
   */

}

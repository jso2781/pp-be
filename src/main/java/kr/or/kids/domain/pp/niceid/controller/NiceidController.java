package kr.or.kids.domain.pp.niceid.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.or.kids.domain.pp.mbr.service.MbrInfoService;
import kr.or.kids.domain.pp.mbr.vo.MbrInfoPVO;
import kr.or.kids.domain.pp.niceid.service.NiceidService;
import kr.or.kids.domain.pp.niceid.vo.NiceidPVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import kr.or.kids.domain.pp.mbr.service.MbrInfoService;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;
import nice.intc.common.util.IntcCodeUtil;
import nice.intc.module.IntcClient;
import nice.intc.module.model.*;

import lombok.RequiredArgsConstructor;

import java.util.Arrays;

@Tag(name = "MbrInfoController", description = "대국민포털_회원정보기본 관리")
@RestController
@RequestMapping(value="/api/pp/niceid")
@RequiredArgsConstructor
public class NiceidController {

    private final NiceidService niceidService;

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

        // 인증 URL 요청
        IntcClient intcClient = new IntcClient();
        IntcUrlResInfo intcUrlResInfo = intcClient.getAuthUrl(intcUrlReqInfo);

        if (intcUrlResInfo != null) {
            if ("0000".equals(intcUrlResInfo.getReturnCode())) {
                System.out.println("응답코드:" + intcUrlResInfo.getReturnCode());
                System.out.println("응답메세지:" + intcUrlResInfo.getResultMessage());
                System.out.println("요청고유번호:" + intcUrlResInfo.getRequestNo());
                System.out.println("트랜잭션아이디:" + intcUrlResInfo.getTransactionId());
                System.out.println("인증요청 URL:" + intcUrlResInfo.getAuthUrl());

                HttpSession session = request.getSession();
                session.setAttribute("REQUEST_NO", intcUrlResInfo.getRequestNo());
                session.setAttribute("TRANSACTION_ID", intcUrlResInfo.getTransactionId());
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
    @ResponseBody
    public ResponseEntity<ApiPrnDto> authResult(NiceidPVO niceidPVO,HttpServletRequest request){

        ApiPrnDto apiPrnDtoTmp = niceidService.getTransctionId(niceidPVO);
        Map<String, Object> map = apiPrnDtoTmp.getData();

        String clientId = (String)map.get("clientId");
        String clientSecret = (String)map.get("clientSecret");

        // 인증완료 웹 트랜잭션 아이디
        String webTransactionId = request.getParameter("web_transaction_id");

        // 인증 요청으로 받은 요청번호와 트랜잭션아이디 값
        // SAMPLE CODE는 세션으로 유지

        HttpSession session = request.getSession();
        String requestNo  = (String) session.getAttribute("REQUEST_NO");
        String transactionId  = (String) session.getAttribute("TRANSACTION_ID");

        System.out.println("webTransactionId:::::"+ webTransactionId);
        System.out.println("requestNo:::::"+ requestNo);
        System.out.println("transactionId:::::"+ transactionId);

        // 인증 결과 요청 데이터 생성
        IntcResultReqInfo intcResultReqInfo = new IntcResultReqInfo();
        intcResultReqInfo.setApiDomain("https://auth.niceid.co.kr");
        intcResultReqInfo.setClientId(clientId);
        intcResultReqInfo.setClientSecret(clientSecret);
        intcResultReqInfo.setRequestNo(requestNo); // getAuthUrl 요청시 설정한 RequestNo, 만일 미설정한 경우 응답으로 받은 RequestNo
        intcResultReqInfo.setTransactionId(transactionId); // getAuthUrl 응답으로 받은 TransactionId
        intcResultReqInfo.setWebTransactionId(webTransactionId); // 회원사 ResultUrl로 받은 WebTransactionId
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
        }


        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);
        if("0".equals(apiPrnDto.getCode())) {
            return ResponseEntity.ok(apiPrnDto);
        }else {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(apiPrnDto);
        }

    }




}

package kr.or.kids.domain.pp.niceid.service.impl;


import java.util.HashMap;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.pp.niceid.service.NiceidService;
import kr.or.kids.domain.pp.niceid.vo.NiceidPVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import kr.or.kids.global.util.DrugsafeUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
@RequiredArgsConstructor
public class NiceidServiceImpl implements NiceidService {

    @Value("${niceid.client-id}")
    private String clientId;

    @Value("${niceid.clientid-secret}")
    private String clientSecret;

    @Value("${niceid.return-url}")
    private String returnUrl;

    @Override
    public ApiPrnDto getTransctionId(NiceidPVO niceidPVO)
    {
        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);

        try {
            HashMap<String, Object> data = new HashMap<String, Object>();

            data.put("clientId", clientId);
            data.put("clientSecret", clientSecret);
            data.put("returnUrl", returnUrl);

            apiPrnDto.setData(data);
        }catch(Exception e){
            apiPrnDto = DrugsafeUtil.getApiPrnDto("-1", e.toString());
        }

        return apiPrnDto;
    }

}

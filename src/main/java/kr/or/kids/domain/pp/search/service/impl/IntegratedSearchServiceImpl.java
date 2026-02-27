package kr.or.kids.domain.pp.search.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.pp.search.mapper.IntegratedSearchMapper;
import kr.or.kids.domain.pp.search.service.IntegratedSearchService;
import kr.or.kids.domain.pp.search.vo.IntegratedSearchPVO;
import kr.or.kids.domain.pp.search.vo.IntegratedSearchRVO;
import kr.or.kids.global.config.util.MessageContextHolder;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class IntegratedSearchServiceImpl implements IntegratedSearchService{

	@Autowired
	private IntegratedSearchMapper integratedSearchMapper;

	@Override
	public ApiPrnDto getIntegratedSearchJson(IntegratedSearchPVO paramPVO){
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);

        HashMap<String, Object> data = new HashMap<String, Object>();

        try{
            IntegratedSearchRVO resultObj = integratedSearchMapper.getIntegratedSearchJson(paramPVO);
            data.put("result", resultObj);
        }catch(Exception e){
            log.error("IntegratedSearchService getIntegratedSearchJson 조회 실패", e);
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg(MessageContextHolder.getMessage("api.error.500"));
        }

        result.setData(data);
        return result;
	}
}

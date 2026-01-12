package kr.go.kids.domain.stt.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.stt.mapper.TrmsSttMapper;
import kr.go.kids.domain.stt.service.TrmsSttService;
import kr.go.kids.domain.stt.vo.TrmsSttPVO;
import kr.go.kids.domain.stt.vo.TrmsSttRVO;
import kr.go.kids.global.config.util.MessageContextHolder;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class TrmsSttServiceImpl implements TrmsSttService
{
    @Autowired
    private TrmsSttMapper trmsSttMapper;

    @Override
    public ApiPrnDto getTrmsStt(TrmsSttPVO trmsSttPVO) {
    	ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
    	HashMap<String, Object> data = new HashMap<String, Object>();
    	try {
    		TrmsSttRVO trmsSttRVO = trmsSttMapper.getTrmsStt(trmsSttPVO);
    		data.put("trmsSttCn", trmsSttRVO.getTrmsSttCn());
    		
    	} catch (Exception e) {
            log.error("약관법령 단건 조회 실패", e);
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg(MessageContextHolder.getMessage("api.error.500"));
    	}
    	
    	result.setData(data);
        return result;
    }
}

package kr.go.kids.domain.opnn.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.opnn.mapper.OpnnMapper;
import kr.go.kids.domain.opnn.service.OpnnService;
import kr.go.kids.domain.opnn.vo.OpnnPVO;
import kr.go.kids.global.config.util.MessageContextHolder;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class OpnnServiceImpl implements OpnnService
{
    @Autowired
    private OpnnMapper opnnMapper;

    @Override
    public ApiPrnDto insertOpnn(OpnnPVO opnnPVO) {

    	ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
    	
    	try {
    		opnnMapper.insertOpnn(opnnPVO);
    	} catch (Exception e) {
    		log.error("의견제안 등록 실패", e);
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg(MessageContextHolder.getMessage("api.error.500"));
    	}
        
        return result;
    }    
}

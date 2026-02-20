package kr.or.kids.domain.stt.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.stt.mapper.TrmsSttMapper;
import kr.or.kids.domain.stt.service.TrmsSttService;
import kr.or.kids.domain.stt.vo.TrmsSttPVO;
import kr.or.kids.domain.stt.vo.TrmsSttRVO;
import kr.or.kids.global.config.util.MessageContextHolder;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class TrmsSttServiceImpl implements TrmsSttService
{
    @Autowired
    private TrmsSttMapper trmsSttMapper;

    @Override
    public ApiPrnDto selectTrmsListForSignUp() {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<String, Object>();

        try{
            List<TrmsSttRVO> trmsSttList = trmsSttMapper.selectTrmsListForSignUp();
            
            data.put("list", trmsSttList);
            
        }catch(Exception e){
            log.error("대국민포털 회원가입용 약관법령 목록 조회 실패", e);
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg(MessageContextHolder.getMessage("api.error.500"));
        }

        result.setData(data);
        return result;
    }

    @Override
    public ApiPrnDto selectTrmsSttList(TrmsSttPVO trmsSttPVO) {
    	
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<String, Object>();
        try {
        		List<TrmsSttRVO> trmsSttList = trmsSttMapper.selectTrmsSttList(trmsSttPVO);
        		data.put("list", trmsSttList);
        	
        } catch (Exception e) {
            log.error("약관법령 목록 조회 실패", e);
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg(MessageContextHolder.getMessage("api.error.500"));
        }
        
        result.setData(data);
        return result;
    }

    @Override
    public ApiPrnDto getTrmsSttLatest(TrmsSttPVO trmsSttPVO) {
    	ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
    	HashMap<String, Object> data = new HashMap<String, Object>();
    	try {
    		TrmsSttRVO trmsSttRVO = trmsSttMapper.getTrmsSttLatest(trmsSttPVO);
			data.put("trmsSttRVO", trmsSttRVO);
    		
    	} catch (Exception e) {
            log.error("약관법령 최신글 단건 조회 실패", e);
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg(MessageContextHolder.getMessage("api.error.500"));
    	}
    	
    	result.setData(data);
        return result;
    }
}

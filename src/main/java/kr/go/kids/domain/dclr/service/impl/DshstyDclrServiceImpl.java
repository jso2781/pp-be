package kr.go.kids.domain.dclr.service.impl;

import java.math.BigInteger;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.dclr.mapper.DshstyDclrMapper;
import kr.go.kids.domain.dclr.service.DshstyDclrService;
import kr.go.kids.domain.dclr.vo.DshstyDclrPVO;
import kr.go.kids.domain.dclr.vo.DshstyDclrRVO;
import kr.go.kids.global.config.util.MessageContextHolder;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class DshstyDclrServiceImpl implements DshstyDclrService
{
    @Autowired
    private DshstyDclrMapper dshstyDclrMapper;

    @Override
    public ApiPrnDto selectDshstyDclrList(DshstyDclrPVO dshstyDclrPVO) {

        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<String, Object>();
        try {
        	List<DshstyDclrRVO> dshstyDclrList = dshstyDclrMapper.selectDshstyDclrList(dshstyDclrPVO);

        	data.put("list", dshstyDclrList);

        } catch (Exception e) {
            log.error("부정신고 목록 조회 실패", e);
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg(MessageContextHolder.getMessage("api.error.500"));
        }
        
        result.setData(data);
        return result;
    }

    @Override
    public ApiPrnDto insertDshstyDclr(DshstyDclrPVO dshstyDclrPVO) {
    	
    	ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        
        try{

            HashMap<String, Object> params = new HashMap<String, Object>();
            
            long nextDclrSn = dshstyDclrMapper.nextDclrSn();

            dshstyDclrPVO.setDclrSn(BigInteger.valueOf(nextDclrSn));
            
            dshstyDclrMapper.insertDshstyDclr(dshstyDclrPVO);
            
        }catch(Exception e){
            log.debug("부정신고 등록 실패", e);
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg(MessageContextHolder.getMessage("api.error.500"));
        }
    	return result;
    }
}
 
package kr.or.kids.domain.faq.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.faq.mapper.FaqMapper;
import kr.or.kids.domain.faq.service.FaqService;
import kr.or.kids.domain.faq.vo.FaqPVO;
import kr.or.kids.domain.faq.vo.FaqRVO;
import kr.or.kids.global.config.util.MessageContextHolder;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class FaqServiceImpl implements FaqService
{
    @Autowired
    private FaqMapper faqMapper;

    @Override
    public ApiPrnDto selectFaqList(FaqPVO faqPVO) {
    	
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<String, Object>();
        try {
        	List<FaqRVO> faqList = faqMapper.selectFaqList(faqPVO);
        	
        	data.put("list", faqList);
        	
        } catch (Exception e) {
            log.error("FAQ 목록 조회 실패", e);
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg(MessageContextHolder.getMessage("api.error.500"));
        }
        
        result.setData(data);
        return result;
    }
}
 
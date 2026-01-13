package kr.go.kids.domain.opnn.service.impl;

import java.math.BigInteger;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.atch.service.AtchService;
import kr.go.kids.domain.file.service.FileService;
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

    @Autowired
    private AtchService atchService;
    
    @Override
    public ApiPrnDto insertOpnn(OpnnPVO opnnPVO) {

        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        
        try{
            // 대국민포털_의견제안 입력항목 등록
            opnnMapper.insertOpnn(opnnPVO);

            HashMap<String, Object> params = new HashMap<String, Object>();
            params.put("menuSn", opnnPVO.getMenuSn());
            params.put("menuType", opnnPVO.getMenuType());

            // 대국민포털_의견제안 첨부파일 저장
            atchService.uploadFile(params, opnnPVO.getAttachFiles());
        }catch(Exception e){
            log.debug("의견제안 등록 실패", e);
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg(MessageContextHolder.getMessage("api.error.500"));
        }
        
        return result;
    }    
}

package kr.go.kids.domain.opnn.service.impl;

import java.math.BigInteger;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.atch.service.AtchService;
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
            

            HashMap<String, Object> params = new HashMap<String, Object>();
            params.put("menuSn", opnnPVO.getMenuSn());
            params.put("menuType", opnnPVO.getMenuType());
            
            String atchFileSnStr = "";
            
            if(opnnPVO.getAttachFiles() != null) {
                // 대국민포털_의견제안 첨부파일 저장
                ApiPrnDto fileResult = atchService.uploadFile(params, opnnPVO.getAttachFiles());
                
                HashMap<String, Object> fileMap = fileResult.getData();
                List<HashMap<String, Object>> fileList = (List<HashMap<String, Object>>) fileMap.get("uploadList");
                for(HashMap<String, Object> fileInfo : fileList) {
                    atchFileSnStr += fileInfo.get("fileId") + ",";
                }
                if (atchFileSnStr.endsWith(",")) {
                    atchFileSnStr = atchFileSnStr.substring(0, atchFileSnStr.length() - 1);
                }
            }
            
            long nextOpnnSn = opnnMapper.nextOpnnSn();

            opnnPVO.setOpnnSn(BigInteger.valueOf(nextOpnnSn));
            opnnPVO.setAtchFileSn(atchFileSnStr);
            
            opnnMapper.insertOpnn(opnnPVO);
            
        }catch(Exception e){
            log.debug("의견제안 등록 실패", e);
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg(MessageContextHolder.getMessage("api.error.500"));
        }
        
        return result;
    }    
}

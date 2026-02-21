package kr.or.kids.domain.pp.opnn.service.impl;

import java.math.BigInteger;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.or.kids.domain.ca.common.file.service.FileService;
import kr.or.kids.domain.ca.common.file.vo.FileGroupInsertReq;
import kr.or.kids.domain.pp.opnn.mapper.OpnnMapper;
import kr.or.kids.domain.pp.opnn.service.OpnnService;
import kr.or.kids.domain.pp.opnn.vo.OpnnPVO;
import kr.or.kids.global.config.util.MessageContextHolder;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class OpnnServiceImpl implements OpnnService
{
    @Autowired
    private OpnnMapper opnnMapper;

    @Autowired
    private FileService fileService;

    @Override
    public ApiPrnDto insertOpnn(OpnnPVO opnnPVO) {

        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);

        /*
         * 1.fileService.groupInsert에서 kids_own.tb_ca_e_file_group_trsm 입력될 때, rgtr_id, mdfr_id 칼럼의 not null 오류 방지
         * 2.opnnMapper.insertOpnn에서 kids_own.TB_PP_M_OPNN 입력될 때, rgtr_id, mdfr_id 칼럼의 not null 오류 방지
         */
        if(opnnPVO.getRgtrId() == null){
            opnnPVO.setRgtrId("admin");
        }

        if(opnnPVO.getMdfrId() == null){
            opnnPVO.setMdfrId("admin");
        }

        try {
            MultipartFile[] attachFileArr = opnnPVO.getAttachFiles();

            if(attachFileArr != null && attachFileArr.length > 0){

                FileGroupInsertReq fgir = new FileGroupInsertReq();
                fgir.setTaskSeCd("pp");
                fgir.setTaskSeTrgtId("2");
                fgir.setRgtrId(opnnPVO.getRgtrId());
                fgir.setMdfrId(opnnPVO.getMdfrId());

                log.info("ApiPrnDto loaded from: {}", ApiPrnDto.class.getProtectionDomain().getCodeSource().getLocation());

                log.info("FileService loaded from: {}", FileService.class.getProtectionDomain().getCodeSource().getLocation());
                      
                // 신규 파일그룹 일련번호 구하기
                ApiPrnDto groupInsertResult = fileService.groupInsert(fgir);

                Object atchFileGroupIdObj = groupInsertResult.getData().get("atchFileGroupId");
                String atchFileGroupId = String.valueOf(atchFileGroupIdObj);

                HashMap<String, Object> params = new HashMap<>();
                params.put("savePath", "pp");                       // 파일경로 정보
                params.put("atchFileGroupId", atchFileGroupId);     // 첨부파일그룹아이디
                params.put("prvcInclYn", "0");                      // 개인정보 여부
                params.put("isExcel", "0");                         // 엑셀파일 여부

                // 대국민포털_의견제안 첨부파일 저장
                ApiPrnDto fileResult = fileService.uploadFiles(params, attachFileArr);

                if("0".equals(fileResult.getCode())){
                    opnnPVO.setAtchFileGroupId(atchFileGroupId);
                }
            }

            long nextOpnnSn = opnnMapper.nextOpnnSn();

            opnnPVO.setOpnnSn(BigInteger.valueOf(nextOpnnSn));

            opnnMapper.insertOpnn(opnnPVO);
        }catch(Exception e){
            log.debug("OpnnServiceImpl insertOpnn fail!! ", e);
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg(MessageContextHolder.getMessage("api.error.500"));
        }
        
        return result;
    }    
}

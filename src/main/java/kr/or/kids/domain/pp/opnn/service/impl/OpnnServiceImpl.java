package kr.or.kids.domain.pp.opnn.service.impl;

import java.math.BigInteger;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.thymeleaf.context.Context;
import org.thymeleaf.spring5.SpringTemplateEngine;

import kr.or.kids.domain.ca.common.file.service.FileService;
import kr.or.kids.domain.ca.common.file.vo.FileGroupInsertReq;
import kr.or.kids.domain.pp.atch.mapper.AtchMapper;
import kr.or.kids.domain.pp.atch.vo.AtchPVO;
import kr.or.kids.domain.pp.opnn.mapper.OpnnMapper;
import kr.or.kids.domain.pp.opnn.service.OpnnService;
import kr.or.kids.domain.pp.opnn.vo.OpnnPVO;
import kr.or.kids.global.config.util.MessageContextHolder;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import kr.or.kids.domain.pp.external.email.client.EmailClient;
import kr.or.kids.domain.pp.external.email.vo.EmailPVO;
import kr.or.kids.domain.pp.external.email.vo.EmailRVO;
import kr.or.kids.domain.pp.form.service.FormService;
import kr.or.kids.domain.pp.form.vo.FormPVO;
import kr.or.kids.domain.pp.form.vo.FormRVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class OpnnServiceImpl implements OpnnService
{
    @Autowired
    private OpnnMapper opnnMapper;

    @Autowired
    private FileService fileService;
    
    @Autowired
    private AtchMapper atchMapper;    
    
    private final FormService formService;
    
    private final EmailClient emailClient;

    private final SpringTemplateEngine emailTemplateEngine;
    

    @Override
    @Transactional
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
            
            // 첨부파일그룹 데이터 후처리
            if (StringUtils.isNotBlank(opnnPVO.getAtchFileGroupId())) {
            	AtchPVO atchPVO = new AtchPVO();
            	atchPVO.setAtchFileGroupId(opnnPVO.getAtchFileGroupId());
            	atchPVO.setMenuSn(opnnPVO.getMenuSn());
            	atchPVO.setTaskSeTrgtId(String.valueOf(nextOpnnSn));
            	
            	atchMapper.updateAtchGroup(atchPVO);
            }
            
            // 이메일 발송부분

            FormPVO formPVO = new FormPVO();
            formPVO.setFormSn(BigInteger.valueOf(3));//3번 의견제안   
            FormRVO formRVO = formService.getForm(formPVO);

            // 변수 바인딩 후 처리
            Context ctx = new Context();
            String regDt = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));  
            ctx.setVariable("regDt", regDt);
            ctx.setVariable("pbptCn", opnnPVO.getPbptCn());
            
            String emlTtl = "DUR 정보 의견 제안 등록 안내문";  // 제목
            String emlCn = emailTemplateEngine.process(formRVO.getFormCn(), ctx); // HTML 본문
            String sndptyFlnm = "mail.drugsafe.or.kr"; // 메일 발송 계정
            String sndptyEmlAddr = "kids@drugsafe.or.kr"; // 발신자 메일주소
            String rcvrFlnm = "한국의약품안전관리원"; // 수신자 명
//            String rcvrEmlAddr = "kids_dur@drugsafe.kr"; // 수신자 메일주소
            String rcvrEmlAddr = "songjiwoong1020@gmail.com"; // 수신자 메일주소

            log.debug("emlTtl >>>>> " + emlTtl);
            log.debug("emlCn >>>>> " + emlCn);
            log.debug("sndptyFlnm >>>>> " + sndptyFlnm);
            log.debug("sndptyEmlAddr >>>>> " + sndptyEmlAddr);
            log.debug("rcvrFlnm >>>>> " + rcvrFlnm);
            log.debug("rcvrEmlAddr >>>>> " + rcvrEmlAddr);

            EmailPVO ep = new EmailPVO();
            
            ep.setSndptyFlnm(sndptyFlnm);
            ep.setSndptyEmlAddr(sndptyEmlAddr);
            ep.setRcvrFlnm(rcvrFlnm);
            ep.setRcvrEmlAddr(rcvrEmlAddr);
            ep.setEmlTtl(emlTtl);
            ep.setEmlCn(emlCn);
            
            EmailRVO er = emailClient.send(ep);

            log.debug("==================== OpnnServiceImpl insertOpnn er.getResultCode()=" + er.getResultCode());
            log.debug("==================== OpnnServiceImpl insertOpnn er.getMessageId()=" + er.getMessageId());
            log.debug("==================== OpnnServiceImpl insertOpnn er.getErrorMessage()=" + er.getErrorMessage());
            
        }catch(Exception e){
            log.debug("OpnnServiceImpl insertOpnn fail!! ", e);
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg(MessageContextHolder.getMessage("api.error.500"));
        }
        
        return result;
    }    
}

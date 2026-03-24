package kr.or.kids.domain.pp.dclr.service.impl;

import java.math.BigInteger;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;
import org.thymeleaf.context.Context;
import org.thymeleaf.spring5.SpringTemplateEngine;

import kr.or.kids.domain.pp.dclr.mapper.DshstyDclrMapper;
import kr.or.kids.domain.pp.dclr.service.DshstyDclrService;
import kr.or.kids.domain.pp.dclr.vo.DshstyDclrPVO;
import kr.or.kids.domain.pp.dclr.vo.DshstyDclrRVO;
import kr.or.kids.domain.pp.external.email.client.EmailClient;
import kr.or.kids.domain.pp.external.email.vo.EmailPVO;
import kr.or.kids.domain.pp.external.email.vo.EmailRVO;
import kr.or.kids.domain.pp.form.service.FormService;
import kr.or.kids.domain.pp.form.vo.FormPVO;
import kr.or.kids.domain.pp.form.vo.FormRVO;
import kr.or.kids.domain.pp.task.service.TaskCdService;
import kr.or.kids.domain.pp.task.vo.TaskCdPVO;
import kr.or.kids.domain.pp.task.vo.TaskCdRVO;
import kr.or.kids.global.config.util.MessageContextHolder;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class DshstyDclrServiceImpl implements DshstyDclrService
{
    private final DshstyDclrMapper dshstyDclrMapper;
    
    private final FormService formService;
    
    private final TaskCdService taskCdService;
    
    private final EmailClient emailClient;
    
    private final SpringTemplateEngine emailTemplateEngine;

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
            
            // 이메일 발송부분
            
            FormPVO formPVO = new FormPVO();
            formPVO.setFormSn(BigInteger.valueOf(4));//4번 클린신고서   
            FormRVO formRVO = formService.getForm(formPVO);
            
            TaskCdPVO taskCdPVO = new TaskCdPVO();
            taskCdPVO.setTaskCd("EML_PP_DSHSTY_DCLR");//업무코드로 이메일 관리중.
            TaskCdRVO taskCdRVO = taskCdService.getTaskCd(taskCdPVO);
            
            
            // 변수 바인딩 후 처리
            Context ctx = new Context();
            String regDt = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd hh시 mm분"));  
            ctx.setVariable("regDt", regDt);
            ctx.setVariable("encptMbrFlnm", 	   dshstyDclrPVO.getEncptMbrFlnm());
            ctx.setVariable("encptMbrTelno", 	   dshstyDclrPVO.getEncptMbrTelno());
            ctx.setVariable("encptMbrEmlNm", 	   dshstyDclrPVO.getEncptMbrEmlNm());
            ctx.setVariable("dshstyActrFlnm",	   dshstyDclrPVO.getDshstyActrFlnm());
            ctx.setVariable("dclrTtlNm",           dshstyDclrPVO.getDclrTtlNm());
            ctx.setVariable("dshstyActPipCn",      dshstyDclrPVO.getDshstyActPipCn());
            ctx.setVariable("dshstyActPlcCn",      dshstyDclrPVO.getDshstyActPlcCn());
            ctx.setVariable("dshstyActCn",         dshstyDclrPVO.getDshstyActCn());
            ctx.setVariable("addIdntfIdfrNm",      dshstyDclrPVO.getAddIdntfIdfrNm());
            ctx.setVariable("dclrCnIdntyMthdCn",   dshstyDclrPVO.getDclrCnIdntyMthdCn());
            ctx.setVariable("dshstyActIdntfRsnCn", dshstyDclrPVO.getDshstyActIdntfRsnCn());
            ctx.setVariable("dshstyActPrdCn",      dshstyDclrPVO.getDshstyActPrdCn());
            
            String emlTtl = "클린신고 접수";  // 제목
            String emlCn = emailTemplateEngine.process(formRVO.getFormCn(), ctx); // HTML 본문
            String sndptyFlnm = "mail.drugsafe.or.kr"; // 메일 발송 계정
            String sndptyEmlAddr = "kids@drugsafe.or.kr"; // 발신자 메일주소
            String rcvrFlnm = "한국의약품안전관리원"; // 수신자 명
            String rcvrEmlAddr = taskCdRVO.getTaskCdVl();// 수신자 메일주소

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
            log.debug("부정신고 등록 실패", e);
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg(MessageContextHolder.getMessage("api.error.500"));
        }
    	return result;
    }
}
 
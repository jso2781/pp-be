package kr.or.kids.domain.pp.exprt.service.impl;

import java.math.BigInteger;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import kr.or.kids.domain.pp.mbr.mapper.MbrInfoMapper;
import kr.or.kids.domain.pp.mbr.vo.MbrInfoPVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.core.env.Environment;
import org.springframework.core.env.Profiles;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.ObjectUtils;
import org.thymeleaf.context.Context;
import org.thymeleaf.spring5.SpringTemplateEngine;

import com.github.pagehelper.PageHelper;

import kr.or.kids.domain.ca.common.file.service.FileService;
import kr.or.kids.domain.ca.common.file.vo.FileDeleteReqVO;
import kr.or.kids.domain.pp.exprt.mapper.ExprtApprovalMapper;
import kr.or.kids.domain.pp.exprt.mapper.ExprtTaskMapper;
import kr.or.kids.domain.pp.exprt.service.ExprtApprovalService;
import kr.or.kids.domain.pp.exprt.vo.ExprtApprovalAuthRVO;
import kr.or.kids.domain.pp.exprt.vo.ExprtApprovalPVO;
import kr.or.kids.domain.pp.exprt.vo.ExprtApprovalRVO;
import kr.or.kids.domain.pp.exprt.vo.ExprtApprovalUVO;
import kr.or.kids.domain.pp.exprt.vo.ExprtTaskPVO;
import kr.or.kids.domain.pp.external.crypto.client.CryptoClient;
import kr.or.kids.domain.pp.external.crypto.vo.CryptoEncryptoPVO;
import kr.or.kids.domain.pp.external.email.client.EmailClient;
import kr.or.kids.domain.pp.external.email.vo.EmailPVO;
import kr.or.kids.domain.pp.external.email.vo.EmailRVO;
import kr.or.kids.domain.pp.form.service.FormService;
import kr.or.kids.domain.pp.form.vo.FormPVO;
import kr.or.kids.domain.pp.form.vo.FormRVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import kr.or.kids.global.util.MaskingUtil;
import kr.or.kids.global.util.PagingUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
@RequiredArgsConstructor
public class ExprtApprovalServiceImpl implements ExprtApprovalService {

    private final ExprtApprovalMapper exprtApprovalMapper;
    private final ExprtTaskMapper exprtTaskMapper;

    private final EmailClient emailClient;
    private final SpringTemplateEngine emailTemplateEngine;
    private final FileService fileService;
    private final FormService formService;
    private final Environment environment;
    private final MbrInfoMapper mbrInfoMapper;
    private final CryptoClient cryptoClient;

    @Override
    public ApiPrnDto selectExprtApprovalList(ExprtApprovalPVO exprtApprovalPVO) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data;

        PageHelper.startPage(exprtApprovalPVO.getPageNum(), exprtApprovalPVO.getPageSize());
        List<ExprtApprovalRVO> list = exprtApprovalMapper.selectExprtApprovalList(exprtApprovalPVO);

        // masking
        list.forEach(l -> {
            l.setEncptExprtFlnm(MaskingUtil.maskName(l.getEncptExprtFlnm().trim()));
            l.setEncptExprtInstEmlNm(MaskingUtil.maskEmail(l.getEncptExprtInstEmlNm().trim()));
        });

        data = PagingUtil.getPagingInfo(list);

        result.setData(data);
        return result;
    }

    @Override
    public ApiPrnDto selectExprtApproval(ExprtApprovalPVO exprtApprovalPVO) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<>();

        if (StringUtils.isNotBlank(exprtApprovalPVO.getMbrNo())) {
            List<String> bzmnTaskMngNos = exprtApprovalMapper.selectBzmnTaskMngNo(exprtApprovalPVO.getMbrNo());

            if (!ObjectUtils.isEmpty(bzmnTaskMngNos)) {

                ExprtApprovalRVO detail = exprtApprovalMapper.selectExprtApproval(exprtApprovalPVO);

                if (detail != null && bzmnTaskMngNos.contains(detail.getBzmnTaskMngNo())){

                    // masking
                    detail.setMbrId(MaskingUtil.maskId(detail.getMbrId().trim()));
                    detail.setEncptExprtFlnm(MaskingUtil.maskName(detail.getEncptExprtFlnm().trim()));
                    detail.setEncptExprtInstEmlNm(MaskingUtil.maskEmail(detail.getEncptExprtInstEmlNm().trim()));                    
                    
                    // 휴대전화번호는 복호화 후 마스킹
                    CryptoEncryptoPVO req = new CryptoEncryptoPVO();
                    req.setEncptMbrTelno(detail.getEncptMbrTelno());
                    ApiPrnDto crypto = cryptoClient.decrypto(req);
                    String decrypted = (String) crypto.getData().get("decptMbrTelno");                    
                    detail.setEncptMbrTelno(MaskingUtil.maskPhone(decrypted.trim()));                    
                    
                    data.put("detail", detail);

                    List<ExprtApprovalAuthRVO> list = exprtApprovalMapper.selectExprtTaskAuthList(exprtApprovalPVO.getExprtTaskSn());
                    data.put("authList", list);

                    result.setData(data);
                    return result;
                }
            }
        }

        data.put("defenseYn", true);
        result.setData(data);
        return result;
    }

    @Override
    public ApiPrnDto selectTaskAuthList(ExprtApprovalPVO exprtApprovalPVO) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<>();

        List<ExprtApprovalAuthRVO> list = exprtApprovalMapper.selectTaskAuthList(exprtApprovalPVO.getTaskSeCd());
        data.put("authListAll", list);

        result.setData(data);
        return result;
    }

    @Override
    @Transactional
    public ApiPrnDto updateExprtApproval(ExprtApprovalUVO exprtApprovalUVO) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<>();

        // 승인 상태 업데이트
        ExprtApprovalPVO beforePVO = new ExprtApprovalPVO();
        beforePVO.setExprtTaskSn(exprtApprovalUVO.getExprtTaskSn());
        ExprtApprovalRVO beforeRVO = exprtApprovalMapper.selectExprtApproval(beforePVO);
        if (beforeRVO != null) {
            String beforeExprtAprvSttsCode = beforeRVO.getExprtAprvSttsCode();
            String beforeTaskAprvSttsCode = beforeRVO.getTaskAprvSttsCode();

            if (StringUtils.isNotBlank(beforeExprtAprvSttsCode) && !beforeExprtAprvSttsCode.equals(exprtApprovalUVO.getExprtAprvSttsCode())) {
                // 전문가정보 업데이트
                exprtApprovalMapper.updateExprtApproval(exprtApprovalUVO);

                // 첨부파일 제거
                if (StringUtils.isNotBlank(beforeRVO.getAtchFileGroupId())) {
                    FileDeleteReqVO fileDeleteReqVO = new FileDeleteReqVO();
                    fileDeleteReqVO.setAtchFileGroupId(beforeRVO.getAtchFileGroupId());
                    fileService.deleteGroupFiles(fileDeleteReqVO);
                }

                // 전문가 회원 전환 신청 반려 시 로직 수행 (업무시스템 삭제, 이메일 발송)
                if ("R".equals(exprtApprovalUVO.getExprtAprvSttsCode())) {
                    // 개인정보 삭제 및 반려
                    exprtApprovalUVO.setExprtAprvSttsCode("R");
                    exprtApprovalUVO.setExprtHdofYn("Y");
                    exprtApprovalUVO.setEncptExprtFlnm("********");
                    exprtApprovalUVO.setEncptExprtInstEmlNm("********");
                    exprtApprovalMapper.collectExprtApproval(exprtApprovalUVO);

                    exprtReject(exprtApprovalUVO, beforeRVO);

                    data.put("result", "SUCCESS");

                    result.setData(data);
                    return result;
                } else if ("A".equals(exprtApprovalUVO.getExprtAprvSttsCode())) {
                    // 승인 메일 발송
                    sendEmail(beforeRVO, 1);

                    // 회원유형 전문가 유형으로 변경
                    MbrInfoPVO mbrInfoPVO = new MbrInfoPVO();
                    mbrInfoPVO.setMbrNo(beforeRVO.getMbrNo());
                    mbrInfoPVO.setMbrTypeCd("E");
                    mbrInfoMapper.updateMbrInfo(mbrInfoPVO);
                }
            }
            if (StringUtils.isNotBlank(beforeTaskAprvSttsCode) && !beforeTaskAprvSttsCode.equals(exprtApprovalUVO.getTaskAprvSttsCode())) {
                // 전문가업무 업데이트
                exprtApprovalMapper.updateExprtTaskApproval(exprtApprovalUVO);

                // 업무시스템 승인상태 회수 변경 시 권한 제거
                if ("C".equals(exprtApprovalUVO.getTaskAprvSttsCode())) {
                    ExprtTaskPVO exprtTaskPVO = new ExprtTaskPVO();
                    exprtTaskPVO.setExprtTaskSn(exprtApprovalUVO.getExprtTaskSn());
                    exprtTaskMapper.deleteExprtAuth(exprtTaskPVO);
                }
            }
        }

        // 회수 프로세스가 아닐경우 전문가 권한 업데이트
        if (!"C".equals(exprtApprovalUVO.getTaskAprvSttsCode())) {
            updateExprtAuth(exprtApprovalUVO);
        }

        data.put("result", "SUCCESS");

        result.setData(data);
        return result;
    }

    @Override
    @Transactional
    public ApiPrnDto withdrawExprtApproval(ExprtApprovalUVO exprtApprovalUVO) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<>();

        // 권한 삭제
        ExprtTaskPVO exprtTaskPVO = new ExprtTaskPVO();
        exprtTaskPVO.setExprtNo(exprtApprovalUVO.getExprtNo());
        exprtTaskMapper.deleteAllExprtAuth(exprtTaskPVO);

        // 업무 시스템 회수처리
        exprtApprovalMapper.collectExprtTaskApproval(exprtApprovalUVO);

        // 전문가 정보 개인정보 삭제 및 회수처리
        exprtApprovalUVO.setExprtAprvSttsCode("C");
        exprtApprovalUVO.setExprtHdofYn("N");
        exprtApprovalUVO.setEncptExprtFlnm("********");
        exprtApprovalUVO.setEncptExprtInstEmlNm("********");
        exprtApprovalMapper.collectExprtApproval(exprtApprovalUVO);

        // 회원유형 일반 유형으로 변경
        MbrInfoPVO mbrInfoPVO = new MbrInfoPVO();
        mbrInfoPVO.setMbrNo(exprtApprovalUVO.getMbrNo());
        mbrInfoPVO.setMbrTypeCd("G");
        mbrInfoMapper.updateMbrInfo(mbrInfoPVO);

        data.put("result", "SUCCESS");

        result.setData(data);
        return result;
    }

    /**
     * 전문가 회원 전환 신청 반려
     */
    private void exprtReject(ExprtApprovalUVO exprtApprovalUVO, ExprtApprovalRVO detail) {
        // 신청한 업무시스템 전체 삭제
        ExprtTaskPVO exprtTaskPVO = new ExprtTaskPVO();
        exprtTaskPVO.setExprtNo(exprtApprovalUVO.getExprtNo());
        exprtTaskMapper.deleteAllExprtTask(exprtTaskPVO);

        // 전문가 권한 전부 삭제
        exprtTaskMapper.deleteAllExprtAuth(exprtTaskPVO);

        // 반려 메일 발송
        detail.setExprtRjctRsn(exprtApprovalUVO.getExprtRjctRsn());
        sendEmail(detail, 2);
    }

    /**
     * 전문가 회원 전환 승인(1) / 반려(2) 메일발송
     */
    private void sendEmail(ExprtApprovalRVO detail, int aprvDivision) {
        // localout 프로파일에서는 메일 발송 생략.
        if (environment.acceptsProfiles(Profiles.of("localout"))) {
            log.info("Skip reject email on profile local-out. exprtNo={}", detail.getExprtNo());
            return;
        }

        FormPVO formPVO = new FormPVO();
        formPVO.setFormSn(BigInteger.valueOf(aprvDivision)); // 1,2번 전문가회원전환 신청 승인/반려
        FormRVO formRVO = formService.getForm(formPVO);

        // 변수 바인딩 후 처리
        Context ctx = new Context();
        String regDt = detail.getExprtInfoRegDt().length() >= 10 ? detail.getExprtInfoRegDt().substring(0, 10) : detail.getExprtInfoRegDt();
        String aprvDt = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        ctx.setVariable("regDate", regDt);
        ctx.setVariable("aprvDate", aprvDt);
        ctx.setVariable("rjctRsn", detail.getExprtRjctRsn());
        ctx.setVariable("taskNm", detail.getLabel());

        String emlTtl = "전문가회원 신청 결과 안내문";  // 제목
        String emlCn = emailTemplateEngine.process(formRVO.getFormCn(), ctx); // HTML 본문
        String sndptyFlnm = "mail.drugsafe.or.kr"; // 메일 발송 계정
        String sndptyEmlAddr = "kids@drugsafe.or.kr"; // 발신자 메일주소
        String rcvrFlnm = detail.getEncptExprtFlnm(); // 수신자 명
        String rcvrEmlAddr = detail.getEncptExprtInstEmlNm(); // 수신자 메일주소

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

        // 메일발송은 ca-be 백앤드 Rest API를 호출해서 메일전송 처리함.
        EmailRVO er = emailClient.send(ep);

        log.debug("==================== ExprtApprovalServiceImpl exprtReject er.getResultCode()=" + er.getResultCode());
        log.debug("==================== ExprtApprovalServiceImpl exprtReject er.getMessageId()=" + er.getMessageId());
        log.debug("==================== ExprtApprovalServiceImpl exprtReject er.getErrorMessage()=" + er.getErrorMessage());
    }

    /**
     * 전문가 권한 업데이트
     */
    private void updateExprtAuth(ExprtApprovalUVO exprtApprovalUVO) {
        List<ExprtApprovalAuthRVO> beforeAuthList = exprtApprovalMapper.selectExprtTaskAuthList(exprtApprovalUVO.getExprtTaskSn());
        List<ExprtApprovalAuthRVO> afterAuthList = exprtApprovalUVO.getTaskAuthList();

        if (beforeAuthList == null) {
            beforeAuthList = new ArrayList<>();
        }

        // before에만 있는 권한 (삭제 대상)
        for (ExprtApprovalAuthRVO beforeAuth : beforeAuthList) {
            if (beforeAuth.getAuthrtCd() == null) continue;

            boolean existsInAfter = afterAuthList.stream()
                    .anyMatch(afterAuth -> afterAuth.getAuthrtCd() != null
                            && afterAuth.getAuthrtCd().equals(beforeAuth.getAuthrtCd()));

            if (!existsInAfter) {
                ExprtApprovalUVO deleteVO = new ExprtApprovalUVO();
                deleteVO.setExprtTaskSn(exprtApprovalUVO.getExprtTaskSn());
                deleteVO.setAuthrtCd(beforeAuth.getAuthrtCd());
                exprtApprovalMapper.deleteExprtTaskAuth(deleteVO);
            }
        }

        // after에만 있는 권한 (추가 대상)
        for (ExprtApprovalAuthRVO afterAuth : afterAuthList) {
            if (afterAuth.getAuthrtCd() == null) continue;

            boolean existsInBefore = beforeAuthList.stream()
                    .anyMatch(beforeAuth -> beforeAuth.getAuthrtCd() != null
                            && beforeAuth.getAuthrtCd().equals(afterAuth.getAuthrtCd()));

            if (!existsInBefore) {
                ExprtApprovalUVO insertVO = new ExprtApprovalUVO();
                insertVO.setExprtTaskSn(exprtApprovalUVO.getExprtTaskSn());
                insertVO.setAuthrtCd(afterAuth.getAuthrtCd());
                insertVO.setMbrId(exprtApprovalUVO.getMbrId());
                insertVO.setMbrNo(exprtApprovalUVO.getMbrNo());
                exprtApprovalMapper.insertExprtTaskAuth(insertVO);
            }
        }
    }
}

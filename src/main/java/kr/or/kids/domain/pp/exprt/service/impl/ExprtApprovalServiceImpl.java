package kr.or.kids.domain.pp.exprt.service.impl;

import com.github.pagehelper.PageHelper;

import kr.or.kids.domain.ca.common.file.service.FileService;
import kr.or.kids.domain.ca.common.file.vo.FileDeleteReqVO;
import kr.or.kids.domain.pp.exprt.mapper.ExprtApprovalMapper;
import kr.or.kids.domain.pp.exprt.mapper.ExprtTaskMapper;
import kr.or.kids.domain.pp.exprt.service.ExprtApprovalService;
import kr.or.kids.domain.pp.exprt.vo.*;
import kr.or.kids.domain.pp.external.email.client.EmailClient;
import kr.or.kids.domain.pp.external.email.vo.EmailPVO;
import kr.or.kids.domain.pp.external.email.vo.EmailRVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import kr.or.kids.global.util.MaskingUtil;
import kr.or.kids.global.util.PagingUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.core.env.Environment;
import org.springframework.core.env.Profiles;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.ObjectUtils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class ExprtApprovalServiceImpl implements ExprtApprovalService {

    private final ExprtApprovalMapper exprtApprovalMapper;
    private final ExprtTaskMapper exprtTaskMapper;

    private final EmailClient emailClient;
    private final FileService fileService;
    private final Environment environment;

    @Override
    public ApiPrnDto selectExprtApprovalList(ExprtApprovalPVO exprtApprovalPVO) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data;

        PageHelper.startPage(exprtApprovalPVO.getPageNum(), exprtApprovalPVO.getPageSize());
        List<ExprtApprovalRVO> list = exprtApprovalMapper.selectExprtApprovalList(exprtApprovalPVO);

        // masking
        list.forEach(l -> {
            l.setName(MaskingUtil.maskName(l.getName().trim()));
            l.setInstEmlNm(MaskingUtil.maskEmail(l.getInstEmlNm().trim()));
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
                    detail.setName(MaskingUtil.maskName(detail.getName().trim()));
                    detail.setTelNo(MaskingUtil.maskPhone(detail.getTelNo().trim()));
                    detail.setInstEmlNm(MaskingUtil.maskEmail(detail.getInstEmlNm().trim()));
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
                    // 개인정보 삭제 전 메일 발송을 위한 원본데이터(성명, 메일주소) 조회
                    ExprtApprovalPVO exprtApprovalPVO = new ExprtApprovalPVO();
                    exprtApprovalPVO.setExprtTaskSn(exprtApprovalUVO.getExprtTaskSn());
                    ExprtApprovalRVO detail = exprtApprovalMapper.selectExprtApproval(exprtApprovalPVO);

                    // 개인정보 삭제 및 반려
                    exprtApprovalUVO.setExprtAprvSttsCode("R");
                    exprtApprovalUVO.setExprtHdofYn("Y");
                    exprtApprovalMapper.collectExprtApproval(exprtApprovalUVO);

                    exprtReject(exprtApprovalUVO, detail);

                    data.put("result", "SUCCESS");

                    result.setData(data);
                    return result;
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
        exprtApprovalMapper.collectExprtApproval(exprtApprovalUVO);

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

        // localout 프로파일에서는 메일 발송 생략.
        if (environment.acceptsProfiles(Profiles.of("localout"))) {
            log.info("Skip reject email on profile local-out. exprtNo={}", exprtApprovalUVO.getExprtNo());
            return;
        }

        // 반려안내 이메일 발송
        String emlTtl = "전문가 전환 신청 결과 안내";  // 제목
        String emlCn = "신청하신 전문가 전환 신청 건이 최종 반려되었습니다.\n내 업무 페이지에서 반려사유 확인 후 재신청 바랍니다."; // 본문
        String sndptyFlnm = "mail.drugsafe.or.kr"; // 메일 발송 계정
        String sndptyEmlAddr = "kids@drugsafe.or.kr"; // 발신자 메일주소
        String rcvrFlnm = detail.getName(); // 수신자 명
        String rcvrEmlAddr = detail.getInstEmlNm(); // 수신자 메일주소

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

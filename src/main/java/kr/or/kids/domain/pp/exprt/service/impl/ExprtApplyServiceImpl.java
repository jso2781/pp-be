package kr.or.kids.domain.pp.exprt.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.ObjectUtils;
import org.springframework.web.multipart.MultipartFile;

import kr.or.kids.domain.pp.exprt.mapper.ExprtApplyMapper;
import kr.or.kids.domain.pp.exprt.mapper.ExprtTaskMapper;
import kr.or.kids.domain.pp.exprt.service.ExprtApplyService;
import kr.or.kids.domain.pp.exprt.vo.ExprtApplyIVO;
import kr.or.kids.domain.pp.exprt.vo.ExprtApplyRVO;
import kr.or.kids.domain.pp.exprt.vo.ExprtTaskPVO;
import kr.or.kids.domain.pp.exprt.vo.ExprtTaskRVO;
import kr.or.kids.global.config.util.MessageContextHolder;
import kr.or.kids.global.exception.ApplicationException;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ExprtApplyServiceImpl implements ExprtApplyService {
    private final ExprtApplyMapper exprtApplyMapper;
    private final ExprtTaskMapper exprtTaskMapper;

    @Override
    public ApiPrnDto existsInstByBrno(ExprtApplyIVO exprtApplyIVO) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<>();

        String brno = exprtApplyIVO.getBrno();
        if (StringUtils.isBlank(brno)) {
            // 사업자등록번호 필수 파라메터가 누락되었습니다.
            throw new ApplicationException("error.param.required",
                    new String[] { MessageContextHolder.getMessage("label.inst.brno") });
        }

        String instNm = exprtApplyMapper.existsInstByBrno(brno);
        data.put("instNm", instNm);

        if (StringUtils.isNotBlank(instNm)) {
            List<ExprtApplyRVO> taskSystemList = exprtApplyMapper.selectInstTaskSystemByBrno(brno);
            data.put("taskSystemList", taskSystemList);

            // 중복신청 방지, 재신청 프로세스 허용
            ExprtTaskPVO exprtTaskPVO = new ExprtTaskPVO();
            exprtTaskPVO.setMbrNo(exprtApplyIVO.getMbrNo());
            ExprtTaskRVO info = exprtTaskMapper.selectExprtInfo(exprtTaskPVO);

            data.put("nextStepYn", true);
            if (info != null && Arrays.asList("W", "A").contains(info.getExprtAprvSttsCode())) {
                data.put("nextStepYn", false);
            }
        } else {
            data.put("taskSystemList", new ArrayList<ExprtApplyRVO>());
        }

        result.setData(data);
        return result;
    }

    @Override
    public ApiPrnDto existbyEmail(ExprtApplyIVO exprtApplyIVO) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<>();

        String email = exprtApplyIVO.getEmail();
        if (StringUtils.isBlank(email)) {
            // 이메일 필수 파라메터가 누락되었습니다.
            throw new ApplicationException("error.param.required",
                    new String[] { MessageContextHolder.getMessage("label.user.email") });
        }

        boolean isExists = exprtApplyMapper.existsByEmail(email);
        data.put("isExists", isExists);
        
        result.setData(data);
        return result;
    }
        
    @Override
    @Transactional
    public ApiPrnDto expertApply(ExprtApplyIVO exprtApplyIVO, MultipartFile file) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<>();

        if (StringUtils.isBlank(exprtApplyIVO.getBrno())) {
            // 사업자등록번호 필수 파라메터가 누락되었습니다.
            throw new ApplicationException("error.param.required",
                    new String[] { MessageContextHolder.getMessage("label.inst.brno") });
        } else if (StringUtils.isBlank(exprtApplyIVO.getEmail())) {
            // 이메일 필수 파라메터가 누락되었습니다.
            throw new ApplicationException("error.param.required",
                    new String[] { MessageContextHolder.getMessage("label.user.email") });
        } else if (ObjectUtils.isEmpty(exprtApplyIVO.getTaskSystemCodes())) {
            // 업무시스템 필수 파라메터가 누락되었습니다.
            throw new ApplicationException("error.param.required",
                    new String[] { MessageContextHolder.getMessage("label.inst.system") });            
        } else if (ObjectUtils.isEmpty(file)) {
            // File 파라메터가 누락되었습니다.
            throw new ApplicationException("error.param.required", new String[] {"File"});
        }

        // 첨부파일 등록
        // FIXME 첨부파일 관련 공통 라이브러리 확정 시 수정 필요
        exprtApplyIVO.setAtchFileGroupId("999");
        
        // 전문가정보기본 등록
        int step2Result = exprtApplyMapper.insertExprtInfo(exprtApplyIVO);
        if (step2Result != 1) {
            throw new ApplicationException("api.error.default");
        }
                
        // 전문가업무기본 등록
        int step3Result = exprtApplyMapper.insertExprtTask(exprtApplyIVO);        
        if (step3Result == 0) {
            throw new ApplicationException("api.error.default");
        }
        
        data.put("result", "SUCCESS");
        
        result.setData(data);
        return result;
    }
}

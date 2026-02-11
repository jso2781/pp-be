package kr.go.kids.domain.exprt.service.impl;

import com.github.pagehelper.PageHelper;
import kr.go.kids.domain.exprt.mapper.ExprtApprovalMapper;
import kr.go.kids.domain.exprt.mapper.ExprtTaskMapper;
import kr.go.kids.domain.exprt.service.ExprtApprovalService;
import kr.go.kids.domain.exprt.vo.*;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
import kr.go.kids.global.util.MaskingUtil;
import kr.go.kids.global.util.PagingUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class ExprtApprovalServiceImpl implements ExprtApprovalService {

    private final ExprtApprovalMapper exprtApprovalMapper;
    private final ExprtTaskMapper exprtTaskMapper;

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

        ExprtApprovalRVO detail = exprtApprovalMapper.selectExprtApproval(exprtApprovalPVO);

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
                removeAttachFile(exprtApprovalUVO);

                // 전문가 회원 전환 신청 반려 시 로직 수행 (업무시스템 삭제, 이메일 발송)
                if ("R".equals(exprtApprovalUVO.getExprtAprvSttsCode())) {
                    exprtReject(exprtApprovalUVO);

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
        exprtTaskPVO.setMbrNo(exprtApprovalUVO.getMbrNo());
        exprtTaskMapper.deleteAllExprtAuth(exprtTaskPVO);

        // 업무 시스템 회수처리
        exprtApprovalMapper.collectExprtTaskApproval(exprtApprovalUVO);

        // 전문가 정보 개인정보 삭제 및 회수처리
        exprtApprovalMapper.collectExprtApproval(exprtApprovalUVO);

        data.put("result", "SUCCESS");

        result.setData(data);
        return result;
    }

    /**
     * 전문가 회원 전환 신청 반려
     */
    private void exprtReject(ExprtApprovalUVO exprtApprovalUVO) {
        // 신청한 업무시스템 전체 삭제
        ExprtTaskPVO exprtTaskPVO = new ExprtTaskPVO();
        exprtTaskPVO.setExprtNo(exprtApprovalUVO.getExprtNo());
        exprtTaskMapper.deleteAllExprtTask(exprtTaskPVO);

        // 전문가 권한 전부 삭제
        exprtTaskPVO.setMbrNo(exprtApprovalUVO.getMbrNo());
        exprtTaskMapper.deleteAllExprtAuth(exprtTaskPVO);

        // TODO 공통 확인 후 이메일 발송 로직 추가 예정 (비동기)
        log.debug("send reject email");
    }

    /**
     * 첨부파일 제거
     */
    private void removeAttachFile(ExprtApprovalUVO exprtApprovalUVO) {
        // TODO 첨부파일 공통 확인 후 수정 예정
        log.debug("remove attach file");
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

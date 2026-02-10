package kr.go.kids.domain.exprt.service.impl;

import com.github.pagehelper.PageHelper;
import kr.go.kids.domain.exprt.mapper.ExprtApprovalMapper;
import kr.go.kids.domain.exprt.service.ExprtApprovalService;
import kr.go.kids.domain.exprt.vo.ExprtApprovalPVO;
import kr.go.kids.domain.exprt.vo.ExprtApprovalRVO;
import kr.go.kids.domain.exprt.vo.ExprtApprovalUVO;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
import kr.go.kids.global.util.PagingUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ExprtApprovalServiceImpl implements ExprtApprovalService {

    private final ExprtApprovalMapper exprtApprovalMapper;

    @Override
    public ApiPrnDto selectExprtApprovalList(ExprtApprovalPVO exprtApprovalPVO) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data;

        PageHelper.startPage(exprtApprovalPVO.getPageNum(), exprtApprovalPVO.getPageSize());
        List<ExprtApprovalRVO> list = exprtApprovalMapper.selectExprtApprovalList(exprtApprovalPVO);

        data = PagingUtil.getPagingInfo(list);

        result.setData(data);
        return result;
    }

    @Override
    public ApiPrnDto selectExprtApproval(ExprtApprovalPVO exprtApprovalPVO) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<>();

        ExprtApprovalRVO detail = exprtApprovalMapper.selectExprtApproval(exprtApprovalPVO);
        data.put("detail", detail);

        result.setData(data);
        return result;
    }

    @Override
    @Transactional
    public ApiPrnDto updateExprtApproval(ExprtApprovalUVO exprtApprovalUVO) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<>();

        // ExprtApprovalRVO before = exprtApprovalMapper.selectExprtApproval(exprtApprovalUVO);
        // FIXME 반려 <=> 승인 처리 가능한지 확인 후 수정 필요

        exprtApprovalMapper.updateExprtApproval(exprtApprovalUVO);
        exprtApprovalMapper.updateExprtTaskApproval(exprtApprovalUVO);

        // TODO 반려 시 이메일 발송 로직 추가 예정

        // ==================================

        data.put("result", "SUCCESS");

        result.setData(data);
        return result;
    }
}

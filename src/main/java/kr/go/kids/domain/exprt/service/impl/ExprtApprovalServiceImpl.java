package kr.go.kids.domain.exprt.service.impl;

import com.github.pagehelper.PageHelper;
import kr.go.kids.domain.exprt.mapper.ExprtApprovalMapper;
import kr.go.kids.domain.exprt.service.ExprtApprovalService;
import kr.go.kids.domain.exprt.vo.ExprtApprovalPVO;
import kr.go.kids.domain.exprt.vo.ExprtApprovalRVO;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
import kr.go.kids.global.util.PagingUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

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
}

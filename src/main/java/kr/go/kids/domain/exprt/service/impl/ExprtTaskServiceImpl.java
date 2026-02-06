package kr.go.kids.domain.exprt.service.impl;

import kr.go.kids.domain.exprt.mapper.ExprtTaskMapper;
import kr.go.kids.domain.exprt.service.ExprtTaskService;
import kr.go.kids.domain.exprt.vo.ExprtTaskPVO;
import kr.go.kids.domain.exprt.vo.ExprtTaskRVO;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ExprtTaskServiceImpl implements ExprtTaskService {
    private final ExprtTaskMapper exprtTaskMapper;

    @Override
    public ApiPrnDto selectExprtInfo(ExprtTaskPVO exprtTaskPVO) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<>();

        ExprtTaskRVO info = exprtTaskMapper.selectExprtInfo(exprtTaskPVO);
        data.put("info", info);

        if (info != null) {
            exprtTaskPVO.setBrno(info.getBrno());
            exprtTaskPVO.setExprtNo(info.getExprtNo());
        }

        List<ExprtTaskRVO> tasks = exprtTaskMapper.selectExprtTasks(exprtTaskPVO);
        data.put("task", tasks);

        result.setData(data);
        return result;
    }

    @Override
    @Transactional
    public ApiPrnDto withdrawExprt(ExprtTaskPVO exprtTaskPVO) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<>();

        exprtTaskMapper.deleteAllExprtTask(exprtTaskPVO);
        exprtTaskMapper.deleteExprtInfo(exprtTaskPVO);

        data.put("result", "SUCCESS");

        result.setData(data);
        return result;
    }

    @Override
    @Transactional
    public ApiPrnDto withdrawExprtTask(ExprtTaskPVO exprtTaskPVO) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<>();

        exprtTaskMapper.deleteExprtTask(exprtTaskPVO);

        data.put("result", "SUCCESS");

        result.setData(data);
        return result;
    }

    @Override
    @Transactional
    public ApiPrnDto applyExprtTask(ExprtTaskPVO exprtTaskPVO) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<>();

        if (exprtTaskPVO.getExprtTaskSn() != null && exprtTaskPVO.getExprtTaskSn() > 0) {
            exprtTaskMapper.deleteExprtTask(exprtTaskPVO);
        }
        exprtTaskMapper.insertExprtTask(exprtTaskPVO);

        data.put("result", "SUCCESS");

        result.setData(data);
        return result;
    }
}

package kr.or.kids.domain.exprt.service.impl;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.kids.domain.auth.vo.MenuRVO;
import kr.or.kids.domain.exprt.mapper.ExprtTaskMapper;
import kr.or.kids.domain.exprt.service.ExprtTaskService;
import kr.or.kids.domain.exprt.vo.ExprtTaskPVO;
import kr.or.kids.domain.exprt.vo.ExprtTaskRVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

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

        exprtTaskMapper.deleteAllExprtAuth(exprtTaskPVO);
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
        exprtTaskMapper.deleteExprtAuth(exprtTaskPVO);

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

    @Override
    public ApiPrnDto selectExprtMenus(ExprtTaskPVO exprtTaskPVO) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<>();

        List<MenuRVO> exprtMenus = exprtTaskMapper.selectExprtMenus(exprtTaskPVO.getMbrNo());
        data.put("exprtMenus", exprtMenus);

        result.setData(data);
        return result;
    }
}
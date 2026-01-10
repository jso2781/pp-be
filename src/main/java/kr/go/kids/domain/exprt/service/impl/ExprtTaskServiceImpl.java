package kr.go.kids.domain.exprt.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.exprt.mapper.ExprtTaskMapper;
import kr.go.kids.domain.exprt.service.ExprtTaskService;
import kr.go.kids.domain.exprt.vo.ExprtTaskDVO;
import kr.go.kids.domain.exprt.vo.ExprtTaskPVO;
import kr.go.kids.domain.exprt.vo.ExprtTaskRVO;

@Service
public class ExprtTaskServiceImpl implements ExprtTaskService
{
    @Autowired
    private ExprtTaskMapper exprtTaskMapper;

    @Override
    public ExprtTaskRVO getExprtTask(ExprtTaskPVO exprtTaskPVO)
    {
        return exprtTaskMapper.getExprtTask(exprtTaskPVO);
    }

    @Override
    public int insertExprtTask(ExprtTaskPVO exprtTaskPVO)
    {
        return exprtTaskMapper.insertExprtTask(exprtTaskPVO);
    }

    @Override
    public int updateExprtTask(ExprtTaskPVO exprtTaskPVO)
    {
        return exprtTaskMapper.updateExprtTask(exprtTaskPVO);
    }

    @Override
    public int saveExprtTask(ExprtTaskPVO exprtTaskPVO)
    {
        return exprtTaskMapper.saveExprtTask(exprtTaskPVO);
    }

    @Override
    public int deleteExprtTask(ExprtTaskDVO exprtTaskDVO)
    {
        return exprtTaskMapper.deleteExprtTask(exprtTaskDVO);
    }
}

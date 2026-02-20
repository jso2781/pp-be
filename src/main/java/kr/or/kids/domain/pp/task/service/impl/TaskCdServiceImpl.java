package kr.or.kids.domain.pp.task.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.pp.task.mapper.TaskCdMapper;
import kr.or.kids.domain.pp.task.service.TaskCdService;
import kr.or.kids.domain.pp.task.vo.TaskCdDVO;
import kr.or.kids.domain.pp.task.vo.TaskCdPVO;
import kr.or.kids.domain.pp.task.vo.TaskCdRVO;

@Service
public class TaskCdServiceImpl implements TaskCdService
{
    @Autowired
    private TaskCdMapper taskCdMapper;

    @Override
    public TaskCdRVO getTaskCd(TaskCdPVO taskCdPVO)
    {
        return taskCdMapper.getTaskCd(taskCdPVO);
    }

    @Override
    public int insertTaskCd(TaskCdPVO taskCdPVO)
    {
        return taskCdMapper.insertTaskCd(taskCdPVO);
    }

    @Override
    public int updateTaskCd(TaskCdPVO taskCdPVO)
    {
        return taskCdMapper.updateTaskCd(taskCdPVO);
    }

    @Override
    public int saveTaskCd(TaskCdPVO taskCdPVO)
    {
        return taskCdMapper.saveTaskCd(taskCdPVO);
    }

    @Override
    public int deleteTaskCd(TaskCdDVO taskCdDVO)
    {
        return taskCdMapper.deleteTaskCd(taskCdDVO);
    }
}

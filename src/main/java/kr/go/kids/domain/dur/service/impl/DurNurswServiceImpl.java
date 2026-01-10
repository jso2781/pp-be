package kr.go.kids.domain.dur.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.dur.mapper.DurNurswMapper;
import kr.go.kids.domain.dur.service.DurNurswService;
import kr.go.kids.domain.dur.vo.DurNurswDVO;
import kr.go.kids.domain.dur.vo.DurNurswPVO;
import kr.go.kids.domain.dur.vo.DurNurswRVO;

@Service
public class DurNurswServiceImpl implements DurNurswService
{
    @Autowired
    private DurNurswMapper durNurswMapper;

    @Override
    public DurNurswRVO getDurNursw(DurNurswPVO durNurswPVO)
    {
        return durNurswMapper.getDurNursw(durNurswPVO);
    }

    @Override
    public int insertDurNursw(DurNurswPVO durNurswPVO)
    {
        return durNurswMapper.insertDurNursw(durNurswPVO);
    }

    @Override
    public int updateDurNursw(DurNurswPVO durNurswPVO)
    {
        return durNurswMapper.updateDurNursw(durNurswPVO);
    }

    @Override
    public int saveDurNursw(DurNurswPVO durNurswPVO)
    {
        return durNurswMapper.saveDurNursw(durNurswPVO);
    }

    @Override
    public int deleteDurNursw(DurNurswDVO durNurswDVO)
    {
        return durNurswMapper.deleteDurNursw(durNurswDVO);
    }
}

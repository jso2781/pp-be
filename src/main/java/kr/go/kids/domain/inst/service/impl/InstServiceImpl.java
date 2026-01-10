package kr.go.kids.domain.inst.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.inst.mapper.InstMapper;
import kr.go.kids.domain.inst.service.InstService;
import kr.go.kids.domain.inst.vo.InstDVO;
import kr.go.kids.domain.inst.vo.InstPVO;
import kr.go.kids.domain.inst.vo.InstRVO;

@Service
public class InstServiceImpl implements InstService
{
    @Autowired
    private InstMapper instMapper;

    @Override
    public InstRVO getInst(InstPVO instPVO)
    {
        return instMapper.getInst(instPVO);
    }

    @Override
    public int insertInst(InstPVO instPVO)
    {
        return instMapper.insertInst(instPVO);
    }

    @Override
    public int updateInst(InstPVO instPVO)
    {
        return instMapper.updateInst(instPVO);
    }

    @Override
    public int saveInst(InstPVO instPVO)
    {
        return instMapper.saveInst(instPVO);
    }

    @Override
    public int deleteInst(InstDVO instDVO)
    {
        return instMapper.deleteInst(instDVO);
    }
}

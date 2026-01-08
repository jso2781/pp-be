package kr.go.kids.domain.pp.opnn.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.pp.opnn.mapper.OpnnMapper;
import kr.go.kids.domain.pp.opnn.service.OpnnService;
import kr.go.kids.domain.pp.opnn.vo.OpnnDVO;
import kr.go.kids.domain.pp.opnn.vo.OpnnPVO;
import kr.go.kids.domain.pp.opnn.vo.OpnnRVO;

@Service
public class OpnnServiceImpl implements OpnnService
{
    @Autowired
    private OpnnMapper opnnMapper;

    @Override
    public OpnnRVO getOpnn(OpnnPVO opnnPVO)
    {
        return opnnMapper.getOpnn(opnnPVO);
    }

    @Override
    public int insertOpnn(OpnnPVO opnnPVO)
    {
        return opnnMapper.insertOpnn(opnnPVO);
    }

    @Override
    public int updateOpnn(OpnnPVO opnnPVO)
    {
        return opnnMapper.updateOpnn(opnnPVO);
    }

    @Override
    public int saveOpnn(OpnnPVO opnnPVO)
    {
        return opnnMapper.saveOpnn(opnnPVO);
    }

    @Override
    public int deleteOpnn(OpnnDVO opnnDVO)
    {
        return opnnMapper.deleteOpnn(opnnDVO);
    }
}

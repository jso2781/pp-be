package kr.go.kids.domain.opnn.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.opnn.mapper.OpnnMapper;
import kr.go.kids.domain.opnn.service.OpnnService;
import kr.go.kids.domain.opnn.vo.OpnnDVO;
import kr.go.kids.domain.opnn.vo.OpnnPVO;
import kr.go.kids.domain.opnn.vo.OpnnRVO;

@Service
public class OpnnServiceImpl implements OpnnService
{
    @Autowired
    private OpnnMapper opnnMapper;

    @Override
    public int insertOpnn(OpnnPVO opnnPVO)
    {
        return opnnMapper.insertOpnn(opnnPVO);
    }

}

package kr.go.kids.domain.stt.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.stt.mapper.TrmsSttMapper;
import kr.go.kids.domain.stt.service.TrmsSttService;
import kr.go.kids.domain.stt.vo.TrmsSttPVO;
import kr.go.kids.domain.stt.vo.TrmsSttRVO;

@Service
public class TrmsSttServiceImpl implements TrmsSttService
{
    @Autowired
    private TrmsSttMapper trmsSttMapper;

    @Override
    public TrmsSttRVO getTrmsStt(TrmsSttPVO trmsSttPVO)
    {
        return trmsSttMapper.getTrmsStt(trmsSttPVO);
    }
}

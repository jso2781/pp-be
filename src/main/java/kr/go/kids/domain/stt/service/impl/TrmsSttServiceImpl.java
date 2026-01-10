package kr.go.kids.domain.stt.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.stt.mapper.TrmsSttMapper;
import kr.go.kids.domain.stt.service.TrmsSttService;
import kr.go.kids.domain.stt.vo.TrmsSttDVO;
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

    @Override
    public int insertTrmsStt(TrmsSttPVO trmsSttPVO)
    {
        return trmsSttMapper.insertTrmsStt(trmsSttPVO);
    }

    @Override
    public int updateTrmsStt(TrmsSttPVO trmsSttPVO)
    {
        return trmsSttMapper.updateTrmsStt(trmsSttPVO);
    }

    @Override
    public int saveTrmsStt(TrmsSttPVO trmsSttPVO)
    {
        return trmsSttMapper.saveTrmsStt(trmsSttPVO);
    }

    @Override
    public int deleteTrmsStt(TrmsSttDVO trmsSttDVO)
    {
        return trmsSttMapper.deleteTrmsStt(trmsSttDVO);
    }
}

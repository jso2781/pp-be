package kr.or.kids.domain.dur.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.dur.mapper.DurPrgntItemMapper;
import kr.or.kids.domain.dur.service.DurPrgntItemService;
import kr.or.kids.domain.dur.vo.DurPrgntItemDVO;
import kr.or.kids.domain.dur.vo.DurPrgntItemPVO;
import kr.or.kids.domain.dur.vo.DurPrgntItemRVO;

@Service
public class DurPrgntItemServiceImpl implements DurPrgntItemService
{
    @Autowired
    private DurPrgntItemMapper durPrgntItemMapper;

    @Override
    public DurPrgntItemRVO getDurPrgntItem(DurPrgntItemPVO durPrgntItemPVO)
    {
        return durPrgntItemMapper.getDurPrgntItem(durPrgntItemPVO);
    }

    @Override
    public int insertDurPrgntItem(DurPrgntItemPVO durPrgntItemPVO)
    {
        return durPrgntItemMapper.insertDurPrgntItem(durPrgntItemPVO);
    }

    @Override
    public int updateDurPrgntItem(DurPrgntItemPVO durPrgntItemPVO)
    {
        return durPrgntItemMapper.updateDurPrgntItem(durPrgntItemPVO);
    }

    @Override
    public int saveDurPrgntItem(DurPrgntItemPVO durPrgntItemPVO)
    {
        return durPrgntItemMapper.saveDurPrgntItem(durPrgntItemPVO);
    }

    @Override
    public int deleteDurPrgntItem(DurPrgntItemDVO durPrgntItemDVO)
    {
        return durPrgntItemMapper.deleteDurPrgntItem(durPrgntItemDVO);
    }
}

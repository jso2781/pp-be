package kr.or.kids.domain.dur.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.dur.mapper.DurEftgrpItemMapper;
import kr.or.kids.domain.dur.service.DurEftgrpItemService;
import kr.or.kids.domain.dur.vo.DurEftgrpItemDVO;
import kr.or.kids.domain.dur.vo.DurEftgrpItemPVO;
import kr.or.kids.domain.dur.vo.DurEftgrpItemRVO;

@Service
public class DurEftgrpItemServiceImpl implements DurEftgrpItemService
{
    @Autowired
    private DurEftgrpItemMapper durEftgrpItemMapper;

    @Override
    public DurEftgrpItemRVO getDurEftgrpItem(DurEftgrpItemPVO durEftgrpItemPVO)
    {
        return durEftgrpItemMapper.getDurEftgrpItem(durEftgrpItemPVO);
    }

    @Override
    public int insertDurEftgrpItem(DurEftgrpItemPVO durEftgrpItemPVO)
    {
        return durEftgrpItemMapper.insertDurEftgrpItem(durEftgrpItemPVO);
    }

    @Override
    public int updateDurEftgrpItem(DurEftgrpItemPVO durEftgrpItemPVO)
    {
        return durEftgrpItemMapper.updateDurEftgrpItem(durEftgrpItemPVO);
    }

    @Override
    public int saveDurEftgrpItem(DurEftgrpItemPVO durEftgrpItemPVO)
    {
        return durEftgrpItemMapper.saveDurEftgrpItem(durEftgrpItemPVO);
    }

    @Override
    public int deleteDurEftgrpItem(DurEftgrpItemDVO durEftgrpItemDVO)
    {
        return durEftgrpItemMapper.deleteDurEftgrpItem(durEftgrpItemDVO);
    }
}

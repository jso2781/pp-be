package kr.go.kids.domain.popup.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.popup.mapper.PopupMapper;
import kr.go.kids.domain.popup.service.PopupService;
import kr.go.kids.domain.popup.vo.PopupDVO;
import kr.go.kids.domain.popup.vo.PopupPVO;
import kr.go.kids.domain.popup.vo.PopupRVO;

@Service
public class PopupServiceImpl implements PopupService
{
    @Autowired
    private PopupMapper popupMapper;

    @Override
    public PopupRVO getPopup(PopupPVO popupPVO)
    {
        return popupMapper.getPopup(popupPVO);
    }

    @Override
    public int insertPopup(PopupPVO popupPVO)
    {
        return popupMapper.insertPopup(popupPVO);
    }

    @Override
    public int updatePopup(PopupPVO popupPVO)
    {
        return popupMapper.updatePopup(popupPVO);
    }

    @Override
    public int savePopup(PopupPVO popupPVO)
    {
        return popupMapper.savePopup(popupPVO);
    }

    @Override
    public int deletePopup(PopupDVO popupDVO)
    {
        return popupMapper.deletePopup(popupDVO);
    }
}

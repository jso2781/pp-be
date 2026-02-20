package kr.or.kids.domain.pp.auth.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.pp.auth.mapper.PicAuthrtMapper;
import kr.or.kids.domain.pp.auth.service.PicAuthrtService;
import kr.or.kids.domain.pp.auth.vo.PicAuthrtDVO;
import kr.or.kids.domain.pp.auth.vo.PicAuthrtPVO;
import kr.or.kids.domain.pp.auth.vo.PicAuthrtRVO;

@Service
public class PicAuthrtServiceImpl implements PicAuthrtService
{
    @Autowired
    private PicAuthrtMapper picAuthrtMapper;

    @Override
    public PicAuthrtRVO getPicAuthrt(PicAuthrtPVO picAuthrtPVO)
    {
        return picAuthrtMapper.getPicAuthrt(picAuthrtPVO);
    }

    @Override
    public int insertPicAuthrt(PicAuthrtPVO picAuthrtPVO)
    {
        return picAuthrtMapper.insertPicAuthrt(picAuthrtPVO);
    }

    @Override
    public int updatePicAuthrt(PicAuthrtPVO picAuthrtPVO)
    {
        return picAuthrtMapper.updatePicAuthrt(picAuthrtPVO);
    }

    @Override
    public int savePicAuthrt(PicAuthrtPVO picAuthrtPVO)
    {
        return picAuthrtMapper.savePicAuthrt(picAuthrtPVO);
    }

    @Override
    public int deletePicAuthrt(PicAuthrtDVO picAuthrtDVO)
    {
        return picAuthrtMapper.deletePicAuthrt(picAuthrtDVO);
    }
}

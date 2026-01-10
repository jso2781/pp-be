package kr.go.kids.domain.auth.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.auth.mapper.PicAuthrtMapper;
import kr.go.kids.domain.auth.service.PicAuthrtService;
import kr.go.kids.domain.auth.vo.PicAuthrtDVO;
import kr.go.kids.domain.auth.vo.PicAuthrtPVO;
import kr.go.kids.domain.auth.vo.PicAuthrtRVO;

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

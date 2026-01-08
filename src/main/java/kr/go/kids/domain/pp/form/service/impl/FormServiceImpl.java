package kr.go.kids.domain.pp.form.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.pp.form.mapper.FormMapper;
import kr.go.kids.domain.pp.form.service.FormService;
import kr.go.kids.domain.pp.form.vo.FormDVO;
import kr.go.kids.domain.pp.form.vo.FormPVO;
import kr.go.kids.domain.pp.form.vo.FormRVO;

@Service
public class FormServiceImpl implements FormService
{
    @Autowired
    private FormMapper formMapper;

    @Override
    public FormRVO getForm(FormPVO formPVO)
    {
        return formMapper.getForm(formPVO);
    }

    @Override
    public int insertForm(FormPVO formPVO)
    {
        return formMapper.insertForm(formPVO);
    }

    @Override
    public int updateForm(FormPVO formPVO)
    {
        return formMapper.updateForm(formPVO);
    }

    @Override
    public int saveForm(FormPVO formPVO)
    {
        return formMapper.saveForm(formPVO);
    }

    @Override
    public int deleteForm(FormDVO formDVO)
    {
        return formMapper.deleteForm(formDVO);
    }
}

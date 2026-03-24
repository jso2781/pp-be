package kr.or.kids.domain.pp.form.service.impl;

import org.springframework.stereotype.Service;

import kr.or.kids.domain.pp.form.mapper.FormMapper;
import kr.or.kids.domain.pp.form.service.FormService;
import kr.or.kids.domain.pp.form.vo.FormDVO;
import kr.or.kids.domain.pp.form.vo.FormPVO;
import kr.or.kids.domain.pp.form.vo.FormRVO;

import lombok.RequiredArgsConstructor;
@Service
@RequiredArgsConstructor
public class FormServiceImpl implements FormService
{
    private final FormMapper formMapper;

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

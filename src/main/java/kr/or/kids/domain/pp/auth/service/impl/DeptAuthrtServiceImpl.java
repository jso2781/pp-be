package kr.or.kids.domain.pp.auth.service.impl;

import org.springframework.stereotype.Service;

import kr.or.kids.domain.pp.auth.mapper.DeptAuthrtMapper;
import kr.or.kids.domain.pp.auth.service.DeptAuthrtService;
import kr.or.kids.domain.pp.auth.vo.DeptAuthrtDVO;
import kr.or.kids.domain.pp.auth.vo.DeptAuthrtPVO;
import kr.or.kids.domain.pp.auth.vo.DeptAuthrtRVO;

import lombok.RequiredArgsConstructor;
@Service
@RequiredArgsConstructor
public class DeptAuthrtServiceImpl implements DeptAuthrtService
{
    private final DeptAuthrtMapper deptAuthrtMapper;

    @Override
    public DeptAuthrtRVO getDeptAuthrt(DeptAuthrtPVO deptAuthrtPVO)
    {
        return deptAuthrtMapper.getDeptAuthrt(deptAuthrtPVO);
    }

    @Override
    public int insertDeptAuthrt(DeptAuthrtPVO deptAuthrtPVO)
    {
        return deptAuthrtMapper.insertDeptAuthrt(deptAuthrtPVO);
    }

    @Override
    public int updateDeptAuthrt(DeptAuthrtPVO deptAuthrtPVO)
    {
        return deptAuthrtMapper.updateDeptAuthrt(deptAuthrtPVO);
    }

    @Override
    public int saveDeptAuthrt(DeptAuthrtPVO deptAuthrtPVO)
    {
        return deptAuthrtMapper.saveDeptAuthrt(deptAuthrtPVO);
    }

    @Override
    public int deleteDeptAuthrt(DeptAuthrtDVO deptAuthrtDVO)
    {
        return deptAuthrtMapper.deleteDeptAuthrt(deptAuthrtDVO);
    }
}

package kr.go.kids.domain.auth.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.auth.mapper.DeptAuthrtMapper;
import kr.go.kids.domain.auth.service.DeptAuthrtService;
import kr.go.kids.domain.auth.vo.DeptAuthrtDVO;
import kr.go.kids.domain.auth.vo.DeptAuthrtPVO;
import kr.go.kids.domain.auth.vo.DeptAuthrtRVO;

@Service
public class DeptAuthrtServiceImpl implements DeptAuthrtService
{
    @Autowired
    private DeptAuthrtMapper deptAuthrtMapper;

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

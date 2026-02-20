package kr.or.kids.domain.emp.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.emp.mapper.EmpMapper;
import kr.or.kids.domain.emp.service.EmpService;
import kr.or.kids.domain.emp.vo.EmpDVO;
import kr.or.kids.domain.emp.vo.EmpPVO;
import kr.or.kids.domain.emp.vo.EmpRVO;

@Service
public class EmpServiceImpl implements EmpService
{
    @Autowired
    private EmpMapper empMapper;

    @Override
    public EmpRVO getEmp(EmpPVO empPVO)
    {
        return empMapper.getEmp(empPVO);
    }

    @Override
    public int insertEmp(EmpPVO empPVO)
    {
        return empMapper.insertEmp(empPVO);
    }

    @Override
    public int updateEmp(EmpPVO empPVO)
    {
        return empMapper.updateEmp(empPVO);
    }

    @Override
    public int saveEmp(EmpPVO empPVO)
    {
        return empMapper.saveEmp(empPVO);
    }

    @Override
    public int deleteEmp(EmpDVO empDVO)
    {
        return empMapper.deleteEmp(empDVO);
    }
}

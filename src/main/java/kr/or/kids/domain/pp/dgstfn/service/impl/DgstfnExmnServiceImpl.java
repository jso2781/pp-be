package kr.or.kids.domain.pp.dgstfn.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.pp.dgstfn.mapper.DgstfnExmnMapper;
import kr.or.kids.domain.pp.dgstfn.service.DgstfnExmnService;
import kr.or.kids.domain.pp.dgstfn.vo.DgstfnExmnDVO;
import kr.or.kids.domain.pp.dgstfn.vo.DgstfnExmnPVO;
import kr.or.kids.domain.pp.dgstfn.vo.DgstfnExmnRVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

@Service
public class DgstfnExmnServiceImpl implements DgstfnExmnService
{
    @Autowired
    private DgstfnExmnMapper dgstfnExmnMapper;

    @Override
    public DgstfnExmnRVO getDgstfnExmn(DgstfnExmnPVO dgstfnExmnPVO)
    {
        return dgstfnExmnMapper.getDgstfnExmn(dgstfnExmnPVO);
    }

    @Override
    public ApiPrnDto insertDgstfnExmn(DgstfnExmnPVO dgstfnExmnPVO)
    {
        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);
        int insertCnt = dgstfnExmnMapper.insertDgstfnExmn(dgstfnExmnPVO);

        if(0 < insertCnt){
            HashMap<String, Object> dataMap = new HashMap<String, Object>();
            dataMap.put("insertCnt", 1);
            apiPrnDto.setData(dataMap);

            return apiPrnDto;
        }

        return ApiPrnDto.fail(ApiResultCode.SYSTEM_ERROR);
    }

    @Override
    public int updateDgstfnExmn(DgstfnExmnPVO dgstfnExmnPVO)
    {
        return dgstfnExmnMapper.updateDgstfnExmn(dgstfnExmnPVO);
    }

    @Override
    public int saveDgstfnExmn(DgstfnExmnPVO dgstfnExmnPVO)
    {
        return dgstfnExmnMapper.saveDgstfnExmn(dgstfnExmnPVO);
    }

    @Override
    public int deleteDgstfnExmn(DgstfnExmnDVO dgstfnExmnDVO)
    {
        return dgstfnExmnMapper.deleteDgstfnExmn(dgstfnExmnDVO);
    }
}

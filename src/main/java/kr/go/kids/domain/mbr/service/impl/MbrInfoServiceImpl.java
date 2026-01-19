package kr.go.kids.domain.mbr.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.mbr.mapper.MbrInfoMapper;
import kr.go.kids.domain.mbr.service.MbrInfoService;
import kr.go.kids.domain.mbr.vo.MbrInfoDVO;
import kr.go.kids.domain.mbr.vo.MbrInfoPVO;
import kr.go.kids.domain.mbr.vo.MbrInfoRVO;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;

@Service
public class MbrInfoServiceImpl implements MbrInfoService
{
    @Autowired
    private MbrInfoMapper mbrInfoMapper;

    public ApiPrnDto existMbrInfo(MbrInfoPVO mbrInfoPVO)
    {
        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);

        int checkCnt = mbrInfoMapper.checkMbrInfo(mbrInfoPVO);

        HashMap<String, Object> bizData = new HashMap<>();

        if(0 < checkCnt) {
            bizData.put("existYn", "Y");
        }else{
            bizData.put("existYn", "N");
        }

        apiPrnDto.setData(bizData);

        return apiPrnDto;
    }

    @Override
    public MbrInfoRVO getMbrInfo(MbrInfoPVO mbrInfoPVO)
    {
        return mbrInfoMapper.getMbrInfo(mbrInfoPVO);
    }

    @Override
    public ApiPrnDto insertMbrInfo(MbrInfoPVO mbrInfoPVO)
    {
        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);
        int insertCnt = mbrInfoMapper.insertMbrInfo(mbrInfoPVO);

        if(0 < insertCnt) {
            HashMap<String, Object> dataMap = new HashMap<String, Object>();
            dataMap.put("insertCnt", insertCnt);
            apiPrnDto.setData(dataMap);

            return apiPrnDto;
        }

        return ApiPrnDto.fail(ApiResultCode.SYSTEM_ERROR);
    }

    @Override
    public int updateMbrInfo(MbrInfoPVO mbrInfoPVO)
    {
        return mbrInfoMapper.updateMbrInfo(mbrInfoPVO);
    }

    @Override
    public int saveMbrInfo(MbrInfoPVO mbrInfoPVO)
    {
        return mbrInfoMapper.saveMbrInfo(mbrInfoPVO);
    }

    @Override
    public int deleteMbrInfo(MbrInfoDVO mbrInfoDVO)
    {
        return mbrInfoMapper.deleteMbrInfo(mbrInfoDVO);
    }
}

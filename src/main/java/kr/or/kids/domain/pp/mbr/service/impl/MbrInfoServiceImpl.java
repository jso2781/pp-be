package kr.or.kids.domain.pp.mbr.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.pp.faq.vo.FaqRVO;
import kr.or.kids.domain.pp.mbr.mapper.MbrInfoMapper;
import kr.or.kids.domain.pp.mbr.service.MbrInfoService;
import kr.or.kids.domain.pp.mbr.vo.MbrInfoDVO;
import kr.or.kids.domain.pp.mbr.vo.MbrInfoPVO;
import kr.or.kids.domain.pp.mbr.vo.MbrInfoRVO;
import kr.or.kids.domain.pp.mbr.vo.VerifyPasswordPVO;
import kr.or.kids.global.config.util.MessageContextHolder;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MbrInfoServiceImpl implements MbrInfoService
{
    @Autowired
    private MbrInfoMapper mbrInfoMapper;

    public ApiPrnDto verifyPassword(VerifyPasswordPVO yerifyPasswordPVO) {
        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);

        int checkCnt = mbrInfoMapper.verifyPassword(yerifyPasswordPVO);

        HashMap<String, Object> bizData = new HashMap<>();

        if(0 < checkCnt) {
            bizData.put("existYn", "Y");
        }else{
            bizData.put("existYn", "N");
        }

        apiPrnDto.setData(bizData);

        return apiPrnDto;
    }

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
            dataMap.put("insertCnt", 1);
            apiPrnDto.setData(dataMap);

            return apiPrnDto;
        }

        return ApiPrnDto.fail(ApiResultCode.SYSTEM_ERROR);
    }

    @Override
    public ApiPrnDto updateMbrInfo(MbrInfoPVO mbrInfoPVO)
    {
        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);
        int updateCnt = mbrInfoMapper.updateMbrInfo(mbrInfoPVO);

        if(0 < updateCnt) {
            // 수정된 회원 정보를 다시 조회해서 UI에 반환한다.
            MbrInfoRVO userInfo = mbrInfoMapper.getMbrInfo(mbrInfoPVO);

            HashMap<String, Object> dataMap = new HashMap<String, Object>();
            dataMap.put("updateCnt", 1);
            dataMap.put("userInfo", userInfo);
            apiPrnDto.setData(dataMap);

            return apiPrnDto;
        }

        return ApiPrnDto.fail(ApiResultCode.SYSTEM_ERROR); 
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
    
    @Override
    public ApiPrnDto findMbrInfoId(MbrInfoPVO mbrInfoPVO)
    {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        try {
	        	MbrInfoRVO mbrInfoRVO = mbrInfoMapper.findMbrInfoId(mbrInfoPVO);
	        	HashMap<String, Object> map = new HashMap<>();
	        	map.put("mbrInfoRVO", mbrInfoRVO);
	        	result.setData(map);
        } catch (Exception e) {
            log.error("회원정보기본 ID 존재 여부 조회 실패", e);
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg(MessageContextHolder.getMessage("api.error.500"));
        }
        return result;
    }
    
    @Override
    public ApiPrnDto updateMbrInfoPw(MbrInfoPVO mbrInfoPVO)
    {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        try {
	        	mbrInfoMapper.updateMbrInfoPw(mbrInfoPVO);
        } catch (Exception e) {
            log.error("회원정보기본 PW 정보 수정 실패", e);
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg(MessageContextHolder.getMessage("api.error.500"));
        }
        return result;
    }
}

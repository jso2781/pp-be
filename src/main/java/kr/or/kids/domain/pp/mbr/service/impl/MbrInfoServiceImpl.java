package kr.or.kids.domain.pp.mbr.service.impl;

import kr.or.kids.domain.pp.exprt.mapper.ExprtApprovalMapper;
import kr.or.kids.domain.pp.exprt.mapper.ExprtTaskMapper;
import kr.or.kids.domain.pp.exprt.vo.ExprtApprovalUVO;
import kr.or.kids.domain.pp.exprt.vo.ExprtTaskPVO;
import kr.or.kids.domain.pp.exprt.vo.ExprtTaskRVO;
import kr.or.kids.domain.pp.mbr.mapper.MbrInfoMapper;
import kr.or.kids.domain.pp.mbr.mapper.SttyAgtInfoMapper;
import kr.or.kids.domain.pp.mbr.service.MbrInfoService;
import kr.or.kids.domain.pp.mbr.vo.MbrInfoDVO;
import kr.or.kids.domain.pp.mbr.vo.MbrInfoPVO;
import kr.or.kids.domain.pp.mbr.vo.MbrInfoRVO;
import kr.or.kids.domain.pp.mbr.vo.MbrInfoWithSttyAgtInfoPVO;
import kr.or.kids.domain.pp.mbr.vo.SttyAgtInfoPVO;
import kr.or.kids.domain.pp.mbr.vo.VerifyPasswordPVO;
import kr.or.kids.global.config.util.MessageContextHolder;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import kr.or.kids.global.util.DrugsafeUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.HashMap;

@Service
@Slf4j
@RequiredArgsConstructor
public class MbrInfoServiceImpl implements MbrInfoService
{
    private final MbrInfoMapper mbrInfoMapper;
    private final SttyAgtInfoMapper sttyAgtInfoMapper;
    private final ExprtApprovalMapper exprtApprovalMapper;
    private final ExprtTaskMapper exprtTaskMapper;

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
    public ApiPrnDto getMbrInfo(MbrInfoPVO mbrInfoPVO)
    {
        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);

        try {
            HashMap<String, Object> data = new HashMap<String, Object>();
            MbrInfoRVO resultObj = mbrInfoMapper.getMbrInfo(mbrInfoPVO);
            data.put("result", resultObj);

            apiPrnDto.setData(data);
        }catch(Exception e){
            apiPrnDto = DrugsafeUtil.getApiPrnDto("-1", e.toString());
        }

        return apiPrnDto;
    }

    @Override
    public ApiPrnDto insertMbrInfo(MbrInfoPVO mbrInfoPVO)
    {
        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);

        String mbrNo = mbrInfoMapper.nextMbrNo();
        mbrInfoPVO.setMbrNo(mbrNo);

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
    public ApiPrnDto insertMbrInfoWithSttyAgtInfo(MbrInfoWithSttyAgtInfoPVO param)
    {
        MbrInfoPVO mbrInfo = param.getMbrInfo();
        if (mbrInfo != null && (mbrInfo.getLinkInfoIdntfId() == null || mbrInfo.getLinkInfoIdntfId().isBlank())){
            ApiPrnDto err = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            err.setMsg("ci is required");
            return err;
        }

        String ci = mbrInfo.getLinkInfoIdntfId();

        MbrInfoPVO mbrInfoPVO = new MbrInfoPVO();
        mbrInfoPVO.setLinkInfoIdntfId(ci);

        MbrInfoRVO resultVo = mbrInfoMapper.getMbrInfo(mbrInfoPVO);

        if(resultVo != null){
            ApiPrnDto err = new ApiPrnDto(ApiResultCode.DUPLICATE_ERROR);
            err.setMsg("ci is duplicate");
            return err;
        }

        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);

        String mbrNo = mbrInfoMapper.nextMbrNo();
        param.getMbrInfo().setMbrNo(mbrNo);

        int insertCnt = mbrInfoMapper.insertMbrInfo(param.getMbrInfo());

        if(0 < insertCnt) {
            HashMap<String, Object> dataMap = new HashMap<String, Object>();
            dataMap.put("insertCnt", 1);

            SttyAgtInfoPVO saip = param.getSttyAgtInfo();

            if(saip != null && saip.getEncptSttyAgtTelno() != null){
                saip.setMbrNo(mbrNo);
                sttyAgtInfoMapper.insertSttyAgtInfo(saip);
            }

            apiPrnDto.setData(dataMap);

            return apiPrnDto;
        }

        return ApiPrnDto.fail(ApiResultCode.SYSTEM_ERROR);
    }

    @Override
    @Transactional
    public ApiPrnDto updateMbrInfo(MbrInfoPVO mbrInfoPVO)
    {
        ApiPrnDto apiPrnDto = new ApiPrnDto(ApiResultCode.SUCCESS);

        int updateCnt = mbrInfoMapper.updateMbrInfo(mbrInfoPVO);

        if(0 < updateCnt) {

            // 탈퇴시
            if ("W".equals(mbrInfoPVO.getMbrJoinSttsCd())) {
                // 개인정보비식별화
                mbrInfoPVO.setEncptMbrFlnm("********");
                mbrInfoPVO.setEncptMbrTelno("********");
                mbrInfoPVO.setEncptMbrEmlNm("********");
                mbrInfoMapper.updateMbrPersonalInfo(mbrInfoPVO);

                // 전문가 회원일 경우 전문가 개인정보 삭제 및 업무시스템 회수
                ExprtTaskPVO exprtTaskPVO = new ExprtTaskPVO();
                exprtTaskPVO.setMbrNo(mbrInfoPVO.getMbrNo());
                ExprtTaskRVO exprtTaskRVO = exprtTaskMapper.selectExprtInfo(exprtTaskPVO);

                if (exprtTaskRVO != null && StringUtils.isNotBlank(exprtTaskRVO.getExprtNo()) && Arrays.asList("W", "A").contains(exprtTaskRVO.getExprtAprvSttsCode())) {
                    // 전문가 권한 삭제
                    exprtTaskPVO.setExprtNo(exprtTaskRVO.getExprtNo());
                    exprtTaskMapper.deleteAllExprtAuth(exprtTaskPVO);

                    // 업무 시스템 회수처리
                    ExprtApprovalUVO exprtApprovalUVO = new ExprtApprovalUVO();
                    exprtApprovalUVO.setExprtNo(exprtTaskRVO.getExprtNo());
                    exprtApprovalUVO.setMbrId(mbrInfoPVO.getMbrId());
                    exprtApprovalMapper.collectExprtTaskApproval(exprtApprovalUVO);

                    // 전문가 정보 개인정보 삭제 및 회수처리
                    exprtApprovalUVO.setExprtAprvSttsCode("C");
                    exprtApprovalUVO.setExprtHdofYn("N");
                    exprtApprovalUVO.setEncptExprtFlnm("********");
                    exprtApprovalUVO.setEncptExprtInstEmlNm("********");
                    exprtApprovalMapper.collectExprtApproval(exprtApprovalUVO);
                }

                mbrInfoPVO.setMbrId(null);
            }

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

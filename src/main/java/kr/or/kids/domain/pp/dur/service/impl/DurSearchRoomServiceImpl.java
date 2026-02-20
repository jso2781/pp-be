package kr.or.kids.domain.pp.dur.service.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.commons.lang3.ObjectUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;

import kr.or.kids.domain.pp.dur.mapper.DurSearchRoomMapper;
import kr.or.kids.domain.pp.dur.service.DurSearchRoomService;
import kr.or.kids.domain.pp.dur.vo.DurEftgrpDetailPVO;
import kr.or.kids.domain.pp.dur.vo.DurEftgrpDetailRVO;
import kr.or.kids.domain.pp.dur.vo.DurPrdctDetailPVO;
import kr.or.kids.domain.pp.dur.vo.DurPrdctDetailRVO;
import kr.or.kids.domain.pp.dur.vo.DurSearchRoomPVO;
import kr.or.kids.domain.pp.dur.vo.DurSearchRoomRVO;
import kr.or.kids.global.config.util.MessageContextHolder;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import kr.or.kids.global.util.PagingUtil;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class DurSearchRoomServiceImpl implements DurSearchRoomService{

    @Autowired
    private DurSearchRoomMapper durSearchRoomMapper;

    @Override
    public ApiPrnDto selectDurSearchRoomList(DurSearchRoomPVO durSearchRoomPVO) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);

        HashMap<String, Object> data = new HashMap<String, Object>();
        try{
            PageHelper.startPage(durSearchRoomPVO.getPageNum(), durSearchRoomPVO.getPageSize());
            List<DurSearchRoomRVO> resultList = durSearchRoomMapper.selectDurSearchRoomList(durSearchRoomPVO);

            data = PagingUtil.getPagingInfo(resultList);

            if(ObjectUtils.isEmpty(resultList)){
                // 데이터가 존재하지 않습니다.
                result.setMsg(MessageContextHolder.getMessage("U0003"));
            }
        }catch(Exception e){
            log.error("DurSearchRoom 조회 실패", e);
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg(MessageContextHolder.getMessage("api.error.500"));
        }

        result.setData(data);
        return result;
    }

    @Override
    public ApiPrnDto selectEftgrpDetailList(DurEftgrpDetailPVO durEftgrpDetailPVO) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);

        HashMap<String, Object> data = new HashMap<String, Object>();
        try{
            PageHelper.startPage(durEftgrpDetailPVO.getPageNum(), durEftgrpDetailPVO.getPageSize());
            List<DurEftgrpDetailRVO> resultList = durSearchRoomMapper.selectEftgrpDetailList(durEftgrpDetailPVO);

            data = PagingUtil.getPagingInfo(resultList);

            if(ObjectUtils.isEmpty(resultList)){
                // 데이터가 존재하지 않습니다.
                result.setMsg(MessageContextHolder.getMessage("U0003"));
            }
        }catch(Exception e){
            log.error("selectEftgrpDetailList 조회 실패", e);
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg(MessageContextHolder.getMessage("api.error.500"));
        }

        result.setData(data);
        return result;
    }

    @Override
    public ApiPrnDto selectPrdctDetailList(DurPrdctDetailPVO durPrdctDetailPVO) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);

        HashMap<String, Object> data = new HashMap<String, Object>();
        try{
            PageHelper.startPage(durPrdctDetailPVO.getPageNum(), durPrdctDetailPVO.getPageSize());
            List<DurPrdctDetailRVO> resultList = durSearchRoomMapper.selectPrdctDetailList(durPrdctDetailPVO);

            data = PagingUtil.getPagingInfo(resultList);

            if(ObjectUtils.isEmpty(resultList)){
                // 데이터가 존재하지 않습니다.
                result.setMsg(MessageContextHolder.getMessage("U0003"));
            }
        }catch(Exception e){
            log.error("selectPrdctDetailList 조회 실패", e);
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg(MessageContextHolder.getMessage("api.error.500"));
        }

        result.setData(data);
        return result;
    }
}

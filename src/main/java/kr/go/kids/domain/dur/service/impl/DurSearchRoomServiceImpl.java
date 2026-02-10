package kr.go.kids.domain.dur.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.kids.domain.dur.mapper.DurSearchRoomMapper;
import kr.go.kids.domain.dur.service.DurSearchRoomService;
import kr.go.kids.domain.dur.vo.DurSearchRoomPVO;
import kr.go.kids.domain.dur.vo.DurSearchRoomRVO;
import kr.go.kids.global.config.util.MessageContextHolder;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
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
            List<DurSearchRoomRVO> resultList = durSearchRoomMapper.selectDurSearchRoomList(durSearchRoomPVO);
            data.put("list", resultList);
        }catch(Exception e){
            log.error("DurSearchRoom 조회 실패", e);
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg(MessageContextHolder.getMessage("api.error.500"));
        }

        result.setData(data);
        return result;
    }
}

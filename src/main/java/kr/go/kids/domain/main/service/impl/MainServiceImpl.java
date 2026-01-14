package kr.go.kids.domain.main.service.impl;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import kr.go.kids.domain.atch.mapper.AtchMapper;
import kr.go.kids.domain.main.service.MainService;
import kr.go.kids.domain.pst.mapper.PstMapper;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MainServiceImpl implements MainService {

    private final PstMapper pstMapper;
    private final AtchMapper atchMapper;

    @Override
    public ApiPrnDto selectMainContents() {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<>();

        
        // TODO 게시판 유형별 메인화면 컨텐츠목 조회
//        PstRVO pstRVO = pstMapper.getPst(pstPVO);                      
//        data.put("detailData", pstRVO);
        

        result.setData(data);
        return result;
    }
}

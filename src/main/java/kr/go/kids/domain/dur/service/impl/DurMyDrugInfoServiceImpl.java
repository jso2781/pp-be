package kr.go.kids.domain.dur.service.impl;

import com.github.pagehelper.PageHelper;
import kr.go.kids.domain.dur.mapper.DurMyDrugInfoMapper;
import kr.go.kids.domain.dur.service.DurMyDrugInfoService;
import kr.go.kids.domain.dur.vo.DurMyDrugInfoPVO;
import kr.go.kids.domain.dur.vo.DurSearchRoomPVO;
import kr.go.kids.domain.dur.vo.DurSearchRoomRVO;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
import kr.go.kids.global.util.PagingUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class DurMyDrugInfoServiceImpl implements DurMyDrugInfoService {

    private final DurMyDrugInfoMapper durMyDrugInfoMapper;

    @Override
    public ApiPrnDto selectDurMyDrugInfoList(DurMyDrugInfoPVO durMyDrugInfoPVO) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<>();

        List<DurSearchRoomPVO> inputList = durMyDrugInfoPVO.getDurMyDrugInfoPVOs();
        List<DurSearchRoomPVO> validList = new ArrayList<>();
        if (inputList != null) {
            for (DurSearchRoomPVO item : inputList) {
                if (item == null) continue;
                if (StringUtils.isBlank(item.getIgrdNm()) && StringUtils.isBlank(item.getPrdctNm())) continue;
                validList.add(item);
            }
        }

        if (validList.isEmpty()) {
            data.put("pageNum", durMyDrugInfoPVO.getPageNum());
            data.put("pageSize", durMyDrugInfoPVO.getPageSize());
            data.put("totalPages", 0);
            data.put("totalCount", 0);
            data.put("list", new ArrayList<>());
            data.put("isFirstPage", true);
            data.put("isLastPage", true);
            data.put("hasPreviousPage", false);
            data.put("hasNextPage", false);
        } else {
            durMyDrugInfoPVO.setDurMyDrugInfoPVOs(validList);
            PageHelper.startPage(durMyDrugInfoPVO.getPageNum(), durMyDrugInfoPVO.getPageSize());
            List<DurSearchRoomRVO> resultList = durMyDrugInfoMapper.selectDurMyDrugInfoList(durMyDrugInfoPVO);
            data = PagingUtil.getPagingInfo(resultList);
        }

        result.setData(data);
        return result;
    }

}

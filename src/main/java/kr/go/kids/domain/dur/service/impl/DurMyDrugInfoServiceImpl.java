package kr.go.kids.domain.dur.service.impl;

import kr.go.kids.domain.dur.mapper.DurMyDrugInfoMapper;
import kr.go.kids.domain.dur.service.DurMyDrugInfoService;
import kr.go.kids.domain.dur.vo.*;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Service
@RequiredArgsConstructor
public class DurMyDrugInfoServiceImpl implements DurMyDrugInfoService {

    private final DurMyDrugInfoMapper durMyDrugInfoMapper;

    @Override
    public ApiPrnDto selectDurMyDrugSearchList(DurMyDrugSearchPVO durMyDrugSearchPVO) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<>();
        List<DurMyDrugSearchRVO> durMyDrugSearchRVOs = new ArrayList<>();

        if (StringUtils.isNotBlank(durMyDrugSearchPVO.getSearchValue())) {
            if ("item".equals(durMyDrugSearchPVO.getSearchType())) {
                // CASE 1 : 검색조건 제품명(한) 으로 조회 -> 제품명, 제약회사, 제품코드
                durMyDrugSearchRVOs = durMyDrugInfoMapper.selectDurMyDrugSearchItemC1(durMyDrugSearchPVO);
            } else {
                if ("Y".equals(durMyDrugSearchPVO.getItemYn())) {
                    // CASE 2 : 검색조건 성분명(영), 바구니 담기 토글 제품명검색으로 조회 -> 성분명, 제품명, 제약회사, 제품코드
                    durMyDrugSearchRVOs = durMyDrugInfoMapper.selectDurMyDrugSearchItemC2(durMyDrugSearchPVO);
                } else {
                    // CASE 3 : 검색조건 성분명(영), 바구니 담기 토글 성분명검색으로 조회 -> 성분명, 성분코드
                    durMyDrugSearchRVOs = durMyDrugInfoMapper.selectDurMyDrugSearchItemC3(durMyDrugSearchPVO);
                }
            }
        }

        data.put("list", durMyDrugSearchRVOs);

        result.setData(data);
        return result;
    }

    @Override
    public ApiPrnDto selectDurMyDrugInfoList(List<DurMyDrugInfoPVO> durMyDrugInfoPVOs) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<>();

        List<DurMyDrugInfoPVO> validList = new ArrayList<>();
        if (durMyDrugInfoPVOs != null) {
            for (DurMyDrugInfoPVO item : durMyDrugInfoPVOs) {
                if (item == null) continue;
                if (StringUtils.isBlank(item.getIgrdCd()) && StringUtils.isBlank(item.getPrdctCd())) continue;
                validList.add(item);
            }
        }

        List<DurSearchRoomRVO> resultList = durMyDrugInfoMapper.selectDurMyDrugInfoList(validList);
        List<DurSearchRoomRVO> concList = durMyDrugInfoMapper.selectDurMyDrugInfoConcList(validList);

        data.put("list", mergeConcResults(resultList, concList));

        result.setData(data);
        return result;
    }

    private List<DurSearchRoomRVO> mergeConcResults(List<DurSearchRoomRVO> baseList, List<DurSearchRoomRVO> concList) {
        Map<String, DurSearchRoomRVO> mergedMap = new LinkedHashMap<>();

        if (baseList != null) {
            for (DurSearchRoomRVO row : baseList) {
                if (row == null) continue;
                ensureListDefaults(row);
                mergedMap.put(buildKey(row), row);
            }
        }

        if (concList != null) {
            for (DurSearchRoomRVO concRow : concList) {
                if (concRow == null) continue;
                ensureListDefaults(concRow);

                String key = buildKey(concRow);
                DurSearchRoomRVO target = mergedMap.get(key);
                if (target == null) {
                    mergedMap.put(key, concRow);
                    continue;
                }

                target.getConcList().addAll(concRow.getConcList());
            }
        }

        return new ArrayList<>(mergedMap.values());
    }

    private String buildKey(DurSearchRoomRVO row) {
        return StringUtils.defaultString(row.getPrdctNm()) + "||" + StringUtils.defaultString(row.getIgrdNm());
    }

    private void ensureListDefaults(DurSearchRoomRVO row) {
        if (row.getConcList() == null) row.setConcList(new ArrayList<>());
        if (row.getAgeList() == null) row.setAgeList(new ArrayList<>());
        if (row.getPrgntList() == null) row.setPrgntList(new ArrayList<>());
        if (row.getCpctList() == null) row.setCpctList(new ArrayList<>());
        if (row.getDosageList() == null) row.setDosageList(new ArrayList<>());
        if (row.getEftgrpList() == null) row.setEftgrpList(new ArrayList<>());
        if (row.getSnctzList() == null) row.setSnctzList(new ArrayList<>());
        if (row.getNurswList() == null) row.setNurswList(new ArrayList<>());
    }
}

package kr.or.kids.domain.pp.dep.service.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import kr.or.kids.domain.pp.dep.mapper.OrgchtMapper;
import kr.or.kids.domain.pp.dep.service.OrgchtService;
import kr.or.kids.domain.pp.dep.vo.OrgchtDeptRVO;
import kr.or.kids.domain.pp.dep.vo.OrgchtEmpRVO;
import kr.or.kids.domain.pp.dep.vo.OrgchtPVO;
import kr.or.kids.global.system.common.ApiResultCode;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class OrgchtServiceImpl implements OrgchtService {

    private final OrgchtMapper orgchtMapper;

    @Override
    public ApiPrnDto selectOrgchtTree(OrgchtPVO orgchtPVO) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<>();

        List<OrgchtDeptRVO> deptList = orgchtMapper.selectOrgchtTree(orgchtPVO);
        data.put("deptList", deptList);

        if (deptList == null || deptList.isEmpty()) {
            result.setMsg("조회된 부서 정보가 없습니다.");
        } else {
            result.setMsg("조직도 조회 완료");
        }

        result.setData(data);
        return result;
    }

    @Override
    public ApiPrnDto selectOrgchtEmployees(OrgchtPVO orgchtPVO) {
        ApiPrnDto result = new ApiPrnDto(ApiResultCode.SUCCESS);
        HashMap<String, Object> data = new HashMap<>();

        if (orgchtPVO == null || StringUtils.isBlank(orgchtPVO.getDeptNo())) {
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg("부서번호는 필수입니다.");
            return result;
        }

        List<OrgchtEmpRVO> empList = orgchtMapper.selectOrgchtEmployees(orgchtPVO);
        data.put("empList", empList);

        if (empList == null || empList.isEmpty()) {
            result.setMsg("조회된 직원 정보가 없습니다.");
        } else {
            result.setMsg("직원 목록 조회 완료");
        }

        result.setData(data);
        return result;
    }
}

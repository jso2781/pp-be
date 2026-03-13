package kr.or.kids.domain.pp.dep.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.kids.domain.pp.dep.vo.OrgchtDeptRVO;
import kr.or.kids.domain.pp.dep.vo.OrgchtEmpRVO;
import kr.or.kids.domain.pp.dep.vo.OrgchtPVO;

@Mapper
public interface OrgchtMapper {

    List<OrgchtDeptRVO> selectOrgchtTree(OrgchtPVO orgchtPVO);

    List<OrgchtEmpRVO> selectOrgchtEmployees(OrgchtPVO orgchtPVO);
}

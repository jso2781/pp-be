package kr.or.kids.domain.pp.dep.service;

import kr.or.kids.domain.pp.dep.vo.OrgchtPVO;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

public interface OrgchtService {

    ApiPrnDto selectOrgchtTree(OrgchtPVO orgchtPVO);

    ApiPrnDto selectOrgchtEmployees(OrgchtPVO orgchtPVO);
}

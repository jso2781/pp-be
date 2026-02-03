package kr.go.kids.domain.exprt.mapper;

import kr.go.kids.domain.exprt.vo.ExprtApprovalPVO;
import kr.go.kids.domain.exprt.vo.ExprtApprovalRVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ExprtApprovalMapper {

    /**
     * 대국민포털_전문가업무신청관리 소속 전문가 회원 목록 조회
     *
     * @param exprtApprovalPVO 파라메터 정보
     * @return 소속 전문가 회원 목록
     */
    List<ExprtApprovalRVO> selectExprtApprovalList(ExprtApprovalPVO exprtApprovalPVO);

    /**
     * 대국민포털_전문가업무신청관리 소속 전문가 회원 상세 조회
     *
     * @param exprtApprovalPVO 파라메터 정보
     * @return 소속 전문가 회원 상세정보
     */
    ExprtApprovalRVO selectExprtApproval(ExprtApprovalPVO exprtApprovalPVO);
}

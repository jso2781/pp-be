package kr.go.kids.domain.exprt.mapper;

import kr.go.kids.domain.exprt.vo.ExprtApprovalAuthRVO;
import kr.go.kids.domain.exprt.vo.ExprtApprovalPVO;
import kr.go.kids.domain.exprt.vo.ExprtApprovalRVO;
import kr.go.kids.domain.exprt.vo.ExprtApprovalUVO;
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

    /**
     * 대국민포털_전문가업무신청관리 업무시스템 권한 목록 조회
     *
     * @param exprtApprovalPVO 파라메터 정보
     * @return 소속 전문가 회원 목록
     */
    List<ExprtApprovalAuthRVO> selectTaskAuthList(String taskSeCd);

    /**
     * 대국민포털_전문가업무신청관리 전문가 업무시스템 권한 목록 조회
     *
     * @param exprtApprovalPVO 파라메터 정보
     * @return 소속 전문가 회원 목록
     */
    List<ExprtApprovalAuthRVO> selectExprtTaskAuthList(Long exprtTaskSn);

    /**
     * 대국민포털_전문가업무신청관리 소속 전문가 회원 전환 신청 승인 상태 업데이트
     *
     * @param exprtApprovalPVO 파라메터 정보
     * @return 업데이트 건수
     */
    int updateExprtApproval(ExprtApprovalUVO exprtApprovalUVO);

    /**
     * 대국민포털_전문가업무신청관리 소속 전문가 회원 업무시스템 승인 상태 업데이트
     *
     * @param exprtApprovalPVO 파라메터 정보
     * @return 업데이트 건수
     */
    int updateExprtTaskApproval(ExprtApprovalUVO exprtApprovalUVO);

    /**
     * 대국민포털_전문가업무신청관리 전문가 업무시스템 권한 추가
     *
     * @param exprtApprovalUVO 파라메터 정보 (exprtTaskSn, authrtCd, mbrId, mbrNo 필요)
     * @return 추가 건수
     */
    int insertExprtTaskAuth(ExprtApprovalUVO exprtApprovalUVO);

    /**
     * 대국민포털_전문가업무신청관리 전문가 업무시스템 권한 삭제
     *
     * @param exprtApprovalUVO 파라메터 정보 (exprtTaskSn, authrtCd 필요)
     * @return 삭제 건수
     */
    int deleteExprtTaskAuth(ExprtApprovalUVO exprtApprovalUVO);

    /**
     * 대국민포털_전문가업무신청관리 소속 전문가 회원 회수처리
     *
     * @param exprtApprovalUVO 파라메터 정보
     * @return 수정 건수
     */
    int collectExprtApproval(ExprtApprovalUVO exprtApprovalUVO);

    /**
     * 대국민포털_전문가업무신청관리 소속 전문가 회원 업무 회수처리
     *
     * @param exprtApprovalUVO 파라메터 정보
     * @return 수정 건수
     */
    int collectExprtTaskApproval(ExprtApprovalUVO exprtApprovalUVO);
}

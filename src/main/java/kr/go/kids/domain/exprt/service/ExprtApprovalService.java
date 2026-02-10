package kr.go.kids.domain.exprt.service;

import kr.go.kids.domain.exprt.vo.ExprtApprovalPVO;
import kr.go.kids.domain.exprt.vo.ExprtApprovalUVO;
import kr.go.kids.global.system.common.vo.ApiPrnDto;

public interface ExprtApprovalService {

    /**
     * 대국민포털_전문가업무신청관리 소속 전문가 회원 목록 조회
     *
     * @param exprtApprovalPVO 파라메터 정보
     * @return 소속 전문가 회원 목록
     */
    ApiPrnDto selectExprtApprovalList(ExprtApprovalPVO exprtApprovalPVO);

    /**
     * 대국민포털_전문가업무신청관리 소속 전문가 회원 상세 조회
     *
     * @param exprtApprovalPVO 파라메터 정보
     * @return 소속 전문가 회원 목록
     */
    ApiPrnDto selectExprtApproval(ExprtApprovalPVO exprtApprovalPVO);

    /**
     * 대국민포털_전문가업무신청관리 업무시스템 권한 목록 조회
     *
     * @param exprtApprovalPVO 파라메터 정보
     * @return 업무시스템 권한 목록
     */
    ApiPrnDto selectTaskAuthList(ExprtApprovalPVO exprtApprovalPVO);

    /**
     * 대국민포털_전문가업무신청관리 소속 전문가 회원 승인 상태 업데이트
     *
     * @param exprtApprovalPVO 파라메터 정보
     * @return 소속 전문가 회원 목록
     */
    ApiPrnDto updateExprtApproval(ExprtApprovalUVO exprtApprovalUVO);

    /**
     * 대국민포털_전문가업무신청관리 소속 전문가 회원 탈퇴 처리
     *
     * @param exprtApprovalPVO 파라메터 정보
     * @return 소속 전문가 회원 목록
     */
    ApiPrnDto withdrawExprtApproval(ExprtApprovalUVO exprtApprovalUVO);
}

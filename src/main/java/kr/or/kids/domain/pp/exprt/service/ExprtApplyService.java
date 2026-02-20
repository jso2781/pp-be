package kr.or.kids.domain.pp.exprt.service;

import org.springframework.web.multipart.MultipartFile;

import kr.or.kids.domain.pp.exprt.vo.ExprtApplyIVO;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

public interface ExprtApplyService
{
    /**
     * 대국민포털_전문가회원전환신청관리 사업자등록번호 검증 
     *
     * @param exprtApplyIVO 신청용 파라메터 정보 
     * @return 기관 존재여부, 기관 업무시스템 구분코드 목록
     */
    public ApiPrnDto existsInstByBrno(ExprtApplyIVO exprtApplyIVO);

    /**
     * 대국민포털_전문가회원전환신청관리 이메일 중복검사
     *
     * @param exprtApplyIVO 신청용 파라메터 정보 
     * @return 이메일 중복여부 
     */
    public ApiPrnDto existbyEmail(ExprtApplyIVO exprtApplyIVO);    

    /**
     * 대국민포털_전문가회원전환신청관리 전환 신청
     *
     * @param exprtApplyIVO 신청용 파라메터 정보 
     * @return 전환신청 성공여부
     */
    public ApiPrnDto expertApply(ExprtApplyIVO exprtApplyIVO, MultipartFile file);    
}

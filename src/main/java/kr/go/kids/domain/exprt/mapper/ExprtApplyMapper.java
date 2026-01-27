package kr.go.kids.domain.exprt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.exprt.vo.ExprtApplyIVO;
import kr.go.kids.domain.exprt.vo.ExprtApplyRVO;

@Mapper
public interface ExprtApplyMapper
{
    /**
     * 대국민포털_전문가회원전환신청관리 사업자등록번호 검증 
     *
     * @param brno 사업자등록번호
     * @return 기관존재여부 
     */    
    public String existsInstByBrno(String brno);
    
    /**
     * 대국민포털_전문가회원전환신청관리 기관 업무시스템 목록 조회 
     *
     * @param brno 사업자등록번호
     * @return 기관 업무시스템 목록 
     */    
    public List<ExprtApplyRVO> selectInstTaskSystemByBrno(String brno);    
 
    /**
     * 대국민포털_전문가회원전환신청관리 이메일 중복검사 
     *
     * @param brno 사업자등록번호
     * @return 기관존재여부 
     */    
    public boolean existsByEmail(String email);
    
    /**
     * 대국민포털_전문가회원전환신청관리 전문가정보기본 입력
     *
     * @param exprtApplyIVO 등록 파라미터
     * @return 성공여부
     */    
    public int insertExprtInfo(ExprtApplyIVO exprtApplyIVO);    
    
    /**
     * 대국민포털_전문가회원전환신청관리 전문가업무기본 입력
     *
     * @param exprtApplyIVO 등록 파라미터
     * @return 성공여부
     */    
    public int insertExprtTask(ExprtApplyIVO exprtApplyIVO);        
}

package kr.or.kids.domain.pp.dep.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.or.kids.domain.pp.dep.vo.OrgchtDVO;
import kr.or.kids.domain.pp.dep.vo.OrgchtPVO;
import kr.or.kids.domain.pp.dep.vo.OrgchtRVO;

@Mapper
public interface OrgchtMapper
{
    /**
     * 대국민포털_KIDS조직도기본 정보 조회 
     *
     * @param orgchtPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_KIDS조직도기본 
     */
    public OrgchtRVO getOrgcht(OrgchtPVO orgchtPVO);

    /**
     * 대국민포털_KIDS조직도기본 정보 입력 
     *
     * @param orgchtPVO 입력할 대국민포털_KIDS조직도기본 정보 
     * @return 입력된 건수 
     */
    public int insertOrgcht(OrgchtPVO orgchtPVO);

    /**
     * 대국민포털_KIDS조직도기본 정보 수정 
     *
     * @param orgchtPVO 수정할 대국민포털_KIDS조직도기본 정보 
     * @return 수정된 건수 
     */
    public int updateOrgcht(OrgchtPVO orgchtPVO);

    /**
     * 대국민포털_KIDS조직도기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param orgchtPVO 저장할 대국민포털_KIDS조직도기본 정보 
     * @return 저장된 건수 
     */
    public int saveOrgcht(OrgchtPVO orgchtPVO);

    /**
     * 대국민포털_KIDS조직도기본 정보 삭제 
     *
     * @param orgchtDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteOrgcht(OrgchtDVO orgchtDVO);
}

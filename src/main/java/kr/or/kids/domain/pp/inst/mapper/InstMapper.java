package kr.or.kids.domain.pp.inst.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.or.kids.domain.pp.inst.vo.InstDVO;
import kr.or.kids.domain.pp.inst.vo.InstPVO;
import kr.or.kids.domain.pp.inst.vo.InstRVO;

@Mapper
public interface InstMapper
{
    /**
     * 대국민포털_기관정보기본 정보 조회 
     *
     * @param instPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_기관정보기본 
     */
    public InstRVO getInst(InstPVO instPVO);

    /**
     * 대국민포털_기관정보기본 정보 입력 
     *
     * @param instPVO 입력할 대국민포털_기관정보기본 정보 
     * @return 입력된 건수 
     */
    public int insertInst(InstPVO instPVO);

    /**
     * 대국민포털_기관정보기본 정보 수정 
     *
     * @param instPVO 수정할 대국민포털_기관정보기본 정보 
     * @return 수정된 건수 
     */
    public int updateInst(InstPVO instPVO);

    /**
     * 대국민포털_기관정보기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param instPVO 저장할 대국민포털_기관정보기본 정보 
     * @return 저장된 건수 
     */
    public int saveInst(InstPVO instPVO);

    /**
     * 대국민포털_기관정보기본 정보 삭제 
     *
     * @param instDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteInst(InstDVO instDVO);
}

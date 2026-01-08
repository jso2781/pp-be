package kr.go.kids.domain.pp.notice.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.pp.notice.vo.CmntDVO;
import kr.go.kids.domain.pp.notice.vo.CmntPVO;
import kr.go.kids.domain.pp.notice.vo.CmntRVO;

@Mapper
public interface CmntMapper
{
    /**
     * 대국민포털_댓글기본 정보 조회 
     *
     * @param cmntPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_댓글기본 
     */
    public CmntRVO getCmnt(CmntPVO cmntPVO);

    /**
     * 대국민포털_댓글기본 정보 입력 
     *
     * @param cmntPVO 입력할 대국민포털_댓글기본 정보 
     * @return 입력된 건수 
     */
    public int insertCmnt(CmntPVO cmntPVO);

    /**
     * 대국민포털_댓글기본 정보 수정 
     *
     * @param cmntPVO 수정할 대국민포털_댓글기본 정보 
     * @return 수정된 건수 
     */
    public int updateCmnt(CmntPVO cmntPVO);

    /**
     * 대국민포털_댓글기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param cmntPVO 저장할 대국민포털_댓글기본 정보 
     * @return 저장된 건수 
     */
    public int saveCmnt(CmntPVO cmntPVO);

    /**
     * 대국민포털_댓글기본 정보 삭제 
     *
     * @param cmntDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteCmnt(CmntDVO cmntDVO);
}

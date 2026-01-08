package kr.go.kids.domain.pp.com.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.pp.com.vo.ComCdDVO;
import kr.go.kids.domain.pp.com.vo.ComCdPVO;
import kr.go.kids.domain.pp.com.vo.ComCdRVO;

@Mapper
public interface ComCdMapper
{
    /**
     * 공통_공통코드기본 정보 조회 
     *
     * @param comCdPVO 조회용 파라메터 정보 
     * @return 조회된 공통_공통코드기본 
     */
    public ComCdRVO getComCd(ComCdPVO comCdPVO);

    /**
     * 공통_공통코드기본 정보 입력 
     *
     * @param comCdPVO 입력할 공통_공통코드기본 정보 
     * @return 입력된 건수 
     */
    public int insertComCd(ComCdPVO comCdPVO);

    /**
     * 공통_공통코드기본 정보 수정 
     *
     * @param comCdPVO 수정할 공통_공통코드기본 정보 
     * @return 수정된 건수 
     */
    public int updateComCd(ComCdPVO comCdPVO);

    /**
     * 공통_공통코드기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param comCdPVO 저장할 공통_공통코드기본 정보 
     * @return 저장된 건수 
     */
    public int saveComCd(ComCdPVO comCdPVO);

    /**
     * 공통_공통코드기본 정보 삭제 
     *
     * @param comCdDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteComCd(ComCdDVO comCdDVO);
}

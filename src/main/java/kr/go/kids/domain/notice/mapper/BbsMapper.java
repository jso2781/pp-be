package kr.go.kids.domain.notice.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.notice.vo.BbsDVO;
import kr.go.kids.domain.notice.vo.BbsPVO;
import kr.go.kids.domain.notice.vo.BbsRVO;

@Mapper
public interface BbsMapper
{
    /**
     * 대국민포털_게시판기본 정보 조회 
     *
     * @param bbsPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_게시판기본 
     */
    public BbsRVO getBbs(BbsPVO bbsPVO);

    /**
     * 대국민포털_게시판기본 정보 입력 
     *
     * @param bbsPVO 입력할 대국민포털_게시판기본 정보 
     * @return 입력된 건수 
     */
    public int insertBbs(BbsPVO bbsPVO);

    /**
     * 대국민포털_게시판기본 정보 수정 
     *
     * @param bbsPVO 수정할 대국민포털_게시판기본 정보 
     * @return 수정된 건수 
     */
    public int updateBbs(BbsPVO bbsPVO);

    /**
     * 대국민포털_게시판기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param bbsPVO 저장할 대국민포털_게시판기본 정보 
     * @return 저장된 건수 
     */
    public int saveBbs(BbsPVO bbsPVO);

    /**
     * 대국민포털_게시판기본 정보 삭제 
     *
     * @param bbsDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteBbs(BbsDVO bbsDVO);
}

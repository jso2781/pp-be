package kr.go.kids.domain.atch.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.atch.vo.AtchDVO;
import kr.go.kids.domain.atch.vo.AtchPVO;
import kr.go.kids.domain.atch.vo.AtchRVO;

@Mapper
public interface AtchMapper
{
    /**
     * 공통_첨부파일기본 정보 조회 
     *
     * @param atchPVO 조회용 파라메터 정보 
     * @return 조회된 공통_첨부파일기본 
     */
    public AtchRVO getAtch(AtchPVO atchPVO);

    /**
     * 첨부파일일련번호 발번
     * @return 발번된 첨부파일일련번호
     */
    public long nextAtchFileSn();

    /**
     * 공통_첨부파일기본 정보 입력 
     *
     * @param atchPVO 입력할 공통_첨부파일기본 정보 
     * @return 입력된 건수 
     */
    public int insertAtch(AtchPVO atchPVO);

    /**
     * 공통_첨부파일기본 정보 수정 
     *
     * @param atchPVO 수정할 공통_첨부파일기본 정보 
     * @return 수정된 건수 
     */
    public int updateAtch(AtchPVO atchPVO);

    /**
     * 공통_첨부파일기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param atchPVO 저장할 공통_첨부파일기본 정보 
     * @return 저장된 건수 
     */
    public int saveAtch(AtchPVO atchPVO);

    /**
     * 공통_첨부파일기본 정보 삭제 
     *
     * @param atchDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteAtch(AtchDVO atchDVO);
}

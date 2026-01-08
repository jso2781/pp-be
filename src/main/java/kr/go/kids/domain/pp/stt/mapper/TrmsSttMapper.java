package kr.go.kids.domain.pp.stt.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.pp.stt.vo.TrmsSttDVO;
import kr.go.kids.domain.pp.stt.vo.TrmsSttPVO;
import kr.go.kids.domain.pp.stt.vo.TrmsSttRVO;

@Mapper
public interface TrmsSttMapper
{
    /**
     * 대국민포털_약관법령기본 정보 조회 
     *
     * @param trmsSttPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_약관법령기본 
     */
    public TrmsSttRVO getTrmsStt(TrmsSttPVO trmsSttPVO);

    /**
     * 대국민포털_약관법령기본 정보 입력 
     *
     * @param trmsSttPVO 입력할 대국민포털_약관법령기본 정보 
     * @return 입력된 건수 
     */
    public int insertTrmsStt(TrmsSttPVO trmsSttPVO);

    /**
     * 대국민포털_약관법령기본 정보 수정 
     *
     * @param trmsSttPVO 수정할 대국민포털_약관법령기본 정보 
     * @return 수정된 건수 
     */
    public int updateTrmsStt(TrmsSttPVO trmsSttPVO);

    /**
     * 대국민포털_약관법령기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param trmsSttPVO 저장할 대국민포털_약관법령기본 정보 
     * @return 저장된 건수 
     */
    public int saveTrmsStt(TrmsSttPVO trmsSttPVO);

    /**
     * 대국민포털_약관법령기본 정보 삭제 
     *
     * @param trmsSttDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteTrmsStt(TrmsSttDVO trmsSttDVO);
}

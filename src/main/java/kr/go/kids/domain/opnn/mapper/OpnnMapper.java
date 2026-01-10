package kr.go.kids.domain.opnn.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.opnn.vo.OpnnDVO;
import kr.go.kids.domain.opnn.vo.OpnnPVO;
import kr.go.kids.domain.opnn.vo.OpnnRVO;

@Mapper
public interface OpnnMapper
{
    /**
     * 대국민포털_의견제안 정보 조회 
     *
     * @param opnnPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_의견제안 
     */
    public OpnnRVO getOpnn(OpnnPVO opnnPVO);

    /**
     * 대국민포털_의견제안 정보 입력 
     *
     * @param opnnPVO 입력할 대국민포털_의견제안 정보 
     * @return 입력된 건수 
     */
    public int insertOpnn(OpnnPVO opnnPVO);

    /**
     * 대국민포털_의견제안 정보 수정 
     *
     * @param opnnPVO 수정할 대국민포털_의견제안 정보 
     * @return 수정된 건수 
     */
    public int updateOpnn(OpnnPVO opnnPVO);

    /**
     * 대국민포털_의견제안 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param opnnPVO 저장할 대국민포털_의견제안 정보 
     * @return 저장된 건수 
     */
    public int saveOpnn(OpnnPVO opnnPVO);

    /**
     * 대국민포털_의견제안 정보 삭제 
     *
     * @param opnnDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteOpnn(OpnnDVO opnnDVO);
}

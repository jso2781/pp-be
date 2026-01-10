package kr.go.kids.domain.opnn.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.opnn.vo.OpnnDVO;
import kr.go.kids.domain.opnn.vo.OpnnPVO;
import kr.go.kids.domain.opnn.vo.OpnnRVO;

@Mapper
public interface OpnnMapper
{
    /**
     * 대국민포털_의견제안 정보 입력 
     *
     * @param opnnPVO 입력할 대국민포털_의견제안 정보 
     * @return 입력된 건수 
     */
    public int insertOpnn(OpnnPVO opnnPVO);
}

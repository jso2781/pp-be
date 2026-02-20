package kr.or.kids.domain.pp.opnn.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.or.kids.domain.pp.opnn.vo.OpnnPVO;

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
    
    public long nextOpnnSn();
}

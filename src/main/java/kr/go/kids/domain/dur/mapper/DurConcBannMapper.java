package kr.go.kids.domain.dur.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.dur.vo.DurConcBannDVO;
import kr.go.kids.domain.dur.vo.DurConcBannPVO;
import kr.go.kids.domain.dur.vo.DurConcBannRVO;

@Mapper
public interface DurConcBannMapper
{
    /**
     * 대국민포털_DUR병용금기기본 정보 조회 
     *
     * @param concBannPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_DUR병용금기기본 
     */
    public DurConcBannRVO getDurConcBann(DurConcBannPVO concBannPVO);

    /**
     * 대국민포털_DUR병용금기기본 정보 입력 
     *
     * @param concBannPVO 입력할 대국민포털_DUR병용금기기본 정보 
     * @return 입력된 건수 
     */
    public int insertDurConcBann(DurConcBannPVO concBannPVO);

    /**
     * 대국민포털_DUR병용금기기본 정보 수정 
     *
     * @param concBannPVO 수정할 대국민포털_DUR병용금기기본 정보 
     * @return 수정된 건수 
     */
    public int updateDurConcBann(DurConcBannPVO concBannPVO);

    /**
     * 대국민포털_DUR병용금기기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param concBannPVO 저장할 대국민포털_DUR병용금기기본 정보 
     * @return 저장된 건수 
     */
    public int saveDurConcBann(DurConcBannPVO concBannPVO);

    /**
     * 대국민포털_DUR병용금기기본 정보 삭제 
     *
     * @param concBannDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteDurConcBann(DurConcBannDVO concBannDVO);
}

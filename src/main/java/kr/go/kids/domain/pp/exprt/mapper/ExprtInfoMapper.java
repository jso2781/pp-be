package kr.go.kids.domain.pp.exprt.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.pp.exprt.vo.ExprtInfoDVO;
import kr.go.kids.domain.pp.exprt.vo.ExprtInfoPVO;
import kr.go.kids.domain.pp.exprt.vo.ExprtInfoRVO;

@Mapper
public interface ExprtInfoMapper
{
    /**
     * 대국민포털_전문가정보기본 정보 조회 
     *
     * @param exprtInfoPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_전문가정보기본 
     */
    public ExprtInfoRVO getExprtInfo(ExprtInfoPVO exprtInfoPVO);

    /**
     * 대국민포털_전문가정보기본 정보 입력 
     *
     * @param exprtInfoPVO 입력할 대국민포털_전문가정보기본 정보 
     * @return 입력된 건수 
     */
    public int insertExprtInfo(ExprtInfoPVO exprtInfoPVO);

    /**
     * 대국민포털_전문가정보기본 정보 수정 
     *
     * @param exprtInfoPVO 수정할 대국민포털_전문가정보기본 정보 
     * @return 수정된 건수 
     */
    public int updateExprtInfo(ExprtInfoPVO exprtInfoPVO);

    /**
     * 대국민포털_전문가정보기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param exprtInfoPVO 저장할 대국민포털_전문가정보기본 정보 
     * @return 저장된 건수 
     */
    public int saveExprtInfo(ExprtInfoPVO exprtInfoPVO);

    /**
     * 대국민포털_전문가정보기본 정보 삭제 
     *
     * @param exprtInfoDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteExprtInfo(ExprtInfoDVO exprtInfoDVO);
}

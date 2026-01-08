package kr.go.kids.domain.pp.auth.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.pp.auth.vo.PicAuthrtDVO;
import kr.go.kids.domain.pp.auth.vo.PicAuthrtPVO;
import kr.go.kids.domain.pp.auth.vo.PicAuthrtRVO;

@Mapper
public interface PicAuthrtMapper
{
    /**
     * 대국민포털_담당자권한기본 정보 조회 
     *
     * @param picAuthrtPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_담당자권한기본 
     */
    public PicAuthrtRVO getPicAuthrt(PicAuthrtPVO picAuthrtPVO);

    /**
     * 대국민포털_담당자권한기본 정보 입력 
     *
     * @param picAuthrtPVO 입력할 대국민포털_담당자권한기본 정보 
     * @return 입력된 건수 
     */
    public int insertPicAuthrt(PicAuthrtPVO picAuthrtPVO);

    /**
     * 대국민포털_담당자권한기본 정보 수정 
     *
     * @param picAuthrtPVO 수정할 대국민포털_담당자권한기본 정보 
     * @return 수정된 건수 
     */
    public int updatePicAuthrt(PicAuthrtPVO picAuthrtPVO);

    /**
     * 대국민포털_담당자권한기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param picAuthrtPVO 저장할 대국민포털_담당자권한기본 정보 
     * @return 저장된 건수 
     */
    public int savePicAuthrt(PicAuthrtPVO picAuthrtPVO);

    /**
     * 대국민포털_담당자권한기본 정보 삭제 
     *
     * @param picAuthrtDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deletePicAuthrt(PicAuthrtDVO picAuthrtDVO);
}

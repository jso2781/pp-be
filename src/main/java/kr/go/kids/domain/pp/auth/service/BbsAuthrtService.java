package kr.go.kids.domain.pp.auth.service;

import kr.go.kids.domain.pp.auth.vo.BbsAuthrtDVO;
import kr.go.kids.domain.pp.auth.vo.BbsAuthrtPVO;
import kr.go.kids.domain.pp.auth.vo.BbsAuthrtRVO;

public interface BbsAuthrtService
{
    /**
     * 대국민포털_게시판권한기본 정보 조회 
     *
     * @param bbsAuthrtPVO 조회용 파라메터 정보 
     * @return 조회된 대국민포털_게시판권한기본 
     */
    public BbsAuthrtRVO getBbsAuthrt(BbsAuthrtPVO bbsAuthrtPVO);

    /**
     * 대국민포털_게시판권한기본 정보 입력 
     *
     * @param bbsAuthrtPVO 입력할 대국민포털_게시판권한기본 정보 
     * @return 입력된 건수 
     */
    public int insertBbsAuthrt(BbsAuthrtPVO bbsAuthrtPVO);

    /**
     * 대국민포털_게시판권한기본 정보 수정 
     *
     * @param bbsAuthrtPVO 수정할 대국민포털_게시판권한기본 정보 
     * @return 수정된 건수 
     */
    public int updateBbsAuthrt(BbsAuthrtPVO bbsAuthrtPVO);

    /**
     * 대국민포털_게시판권한기본 정보 저장 
     * <p>
     * 기존 데이터가 존재하지 않으면 입력하고, 존재하면 수정한다.
     * </p>
     *
     * @param bbsAuthrtPVO 저장할 대국민포털_게시판권한기본 정보 
     * @return 저장된 건수 
     */
    public int saveBbsAuthrt(BbsAuthrtPVO bbsAuthrtPVO);

    /**
     * 대국민포털_게시판권한기본 정보 삭제 
     *
     * @param bbsAuthrtDVO 삭제용 파라메터 정보 
     * @return 삭제된 건수 
     */
    public int deleteBbsAuthrt(BbsAuthrtDVO bbsAuthrtDVO);
}

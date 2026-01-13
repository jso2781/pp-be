package kr.go.kids.domain.atch.service;

import java.util.HashMap;

import org.springframework.web.multipart.MultipartFile;

import kr.go.kids.domain.atch.vo.AtchDVO;
import kr.go.kids.domain.atch.vo.AtchDWVO;
import kr.go.kids.domain.atch.vo.AtchPVO;
import kr.go.kids.domain.atch.vo.AtchRVO;
import kr.go.kids.global.system.common.vo.ApiPrnDto;

public interface AtchService
{
    /**
     * 공통_첨부파일기본 정보 조회 
     *
     * @param atchPVO 조회용 파라메터 정보 
     * @return 조회된 공통_첨부파일기본 
     */
    public AtchRVO getAtch(AtchPVO atchPVO);

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

    /**
     * 파일 업로드(파일정보 입력 포함)
     * @param params 파일 업로드시 사용할 파라메터 정보 
     * @param uploadFiles 업로드할 파일 객체 배열
     * @return 업로드후 응답결과 객체 반환
     */
    public ApiPrnDto uploadFile(HashMap<String, Object> params, MultipartFile[] uploadFiles);
    
    /**
     * 공통_첨부파일기본 파일 다운로드 
     *
     * @param atchPVO 다운로드 파라메터 정보 
     * @return 세팅된 다운로드 파라메터 정보 
     */
    public AtchDWVO downloadFile(AtchPVO atchPVO);        
}

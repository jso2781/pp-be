package kr.or.kids.domain.file.service;

import org.springframework.web.multipart.MultipartFile;

import kr.or.kids.domain.file.vo.FileGroupInsertReq;
import kr.or.kids.global.system.common.vo.ApiPrnDto;

import java.util.HashMap;

/**
 * 파일 서비스 인터페이스
 */
public interface FileService {

    /**
     * 파일 목록
     * @return API 응답 DTO
     */
    ApiPrnDto list(int pageNum,int  pageSize);

    /**
     * 파일 업로드
     * @param savePath 저장 경로
     * @param uploadFiles 업로드할 파일 배열
     * @return API 응답 DTO
     */
    ApiPrnDto uploadFile(HashMap<String, Object> param, MultipartFile[] uploadFiles);


    /**
     * 파일 그룹정보 등록
     * @return API 응답 DTO
     */
    ApiPrnDto groupInsert(FileGroupInsertReq param);


}

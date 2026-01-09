package kr.go.kids.domain.pp.file.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import kr.go.kids.domain.pp.file.service.FileService;
import kr.go.kids.domain.pp.file.vo.FileGroupInsertReq;
import kr.go.kids.global.system.common.ApiResultCode;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
import kr.go.kids.global.system.common.vo.PageRequestDto;

@RestController
@CrossOrigin
@RequestMapping("/api/file")
public class FileController{

    @Autowired
    private FileService fileService;

    /**
     * 파일목록
     * @param uploadFiles 업로드할 파일들
     * @param request HTTP 요청
     * @return API 응답
     */
    @Operation( summary = "파일 목록 조회", description = "파일 목록을 조회합니다.")
    @ApiResponse(responseCode = "200", description = "파일목록 조회 성공")
    @PostMapping("/list")
    public ResponseEntity<ApiPrnDto> fileList(HttpServletRequest request, PageRequestDto pageRequestDto) {

        int pageNum = pageRequestDto != null ? pageRequestDto.getPageNum() : 1;
        int pageSize = pageRequestDto != null ? pageRequestDto.getPageSize() : 10;

        ApiPrnDto apiPrnDto = fileService.list(pageNum, pageSize);
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }


    /**
     * 파일 업로드
     * @param uploadFiles 업로드할 파일들
     * @param request HTTP 요청
     * @return API 응답
     */
    @Operation( summary = "파일 등록", description = "파일을 등록합니다.")
    @ApiResponse(responseCode = "200", description = "파일등록  성공")
    @PostMapping("/uploadFile")
    public ResponseEntity<ApiPrnDto> uploadFile(@RequestParam(value="uploadFiles") MultipartFile[] uploadFiles, HttpServletRequest request) {

        /**  파일경로 정보 */
        String savePath = request.getParameter("savePath");
        /**  파일그룹 일련번호  */
        String fileGroupSn = request.getParameter("fileGroupSn");

        HashMap<String, Object> params = new HashMap<>();
        params.put("savePath",savePath);
        params.put("fileGroupSn",fileGroupSn);

        ApiPrnDto apiPrnDto = fileService.uploadFile(params, uploadFiles);
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }

    /**
     * 공통파일 정보등록 API
     * @param input
     * @return
     */
    @Operation( summary = "파일그룹 정보등록", description = "파일그룹 정보를 등록합니다.")
    @ApiResponse(responseCode = "200", description = "파일그룹 정보 등록  성공")
    @PostMapping("/groupInsert")
    public ResponseEntity<ApiPrnDto> groupInsert(@RequestBody FileGroupInsertReq param, HttpServletRequest request) {
        ApiPrnDto apiPrnDto = fileService.groupInsert(param);
        ApiResultCode resultCode = ApiResultCode.fromCode(apiPrnDto.getCode());
        return ResponseEntity.status(resultCode.getHttpStatus()).body(apiPrnDto);
    }


}

package kr.go.kids.domain.pp.file.service.impl;

import static kr.go.kids.domain.pp.global.system.common.ApiResultCode.SUCCESS;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import kr.go.kids.domain.pp.file.mapper.FileMapper;
import kr.go.kids.domain.pp.file.service.FileService;
import kr.go.kids.domain.pp.file.vo.FileDataResVO;
import kr.go.kids.domain.pp.file.vo.FileGroupInsertReq;
import kr.go.kids.domain.pp.file.vo.FileInsertReqVO;
import kr.go.kids.domain.pp.global.config.FileProperties;
import kr.go.kids.domain.pp.global.system.common.ApiResultCode;
import kr.go.kids.domain.pp.global.system.common.vo.ApiPrnDto;
import kr.go.kids.domain.pp.global.util.DrugsafeUtil;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class FileServiceImpl implements FileService {

    private String fileSepStr = File.separator;  // 변경: OS에 맞는 파일 구분자 사용

    @Autowired
    private FileProperties fileProperties;

    @Autowired
    private FileMapper fileMapper;


    /**
     * 파일정보 목록 조회
     * @param param
     * @return
     */
    public ApiPrnDto list( int pageNum, int pageSize ) {
        ApiPrnDto result = new ApiPrnDto(SUCCESS);
        HashMap<String, Object> data = new HashMap<>();

        try {
            // UserMapper의 list() 메서드 호출
            List<FileDataResVO> fileList = fileMapper.list();

            PageHelper.startPage(pageNum, pageSize); // ⭐ PageInfo로 감싸기
            PageInfo<FileDataResVO> pageInfo = new PageInfo<>(fileList);

            data.put("list", fileList);
            data.put("totalCount", pageInfo.getTotal());
            data.put("pageNum", pageInfo.getPageNum());
            data.put("pageSize", pageInfo.getPageSize());
            data.put("pages", pageInfo.getPages()); // 총 페이지 수

            // 데이터가 없어도 성공으로 처리 (HTTP 200)
            if (fileList.size() == 0) {
                result.setMsg("조회된 데이터가 없습니다.");
            } else {
                result.setMsg("파일 목록 조회 완료");
            }

            log.info("파일 목록 조회 완료: {} 건", fileList.size());

        } catch (Exception e) {
            log.error("파일 목록 조회 실패", e);
            result = new ApiPrnDto(ApiResultCode.SYSTEM_ERROR);
            result.setMsg("파일 목록 조회 중 오류가 발생했습니다.");
        }

        result.setData(data);
        return result;
    }


    /**
     * 파일 그룹정보 일련번호 생성
     * @param param
     * @return
     */
    @Transactional
    public ApiPrnDto groupInsert(FileGroupInsertReq param) {

        ApiPrnDto ApiPrnDto             = new ApiPrnDto(SUCCESS);
        HashMap<String, Object> bizData = new HashMap<>();

        try {
            /**
             *  파일 그룹정보  생성
             */
            long nextFileGroupId = fileMapper.nextFileGroupId();
            param.setAtchFileGroupSn(nextFileGroupId);

            param.setUseYn("Y");
            fileMapper.groupInsert(param);

            /**
             * 결과처리
             */
            ApiPrnDto.setMsg("파일 그룹 정보가 등록되었습니다.");
            bizData.put("fileGroupSn", nextFileGroupId);
        } catch(Exception e) {
            ApiPrnDto = DrugsafeUtil.getApiPrnDto("-1", e.toString());
        }
        ApiPrnDto.setData(bizData);
        return ApiPrnDto;
    }


    /**
     * 파일 업로드
     * @return
     */
    @Transactional
    @Override
    public ApiPrnDto uploadFile(HashMap<String, Object> params, MultipartFile[] uploadFiles) {
        return uploadPost(params, uploadFiles, "attachment", null);
    }


    /**
     * 파일 업로드
     * @return
     */
    private ApiPrnDto uploadPost(HashMap<String, Object> params, MultipartFile[] uploadFiles, String type, String fileName) {

        ApiPrnDto ApiPrnDto             = new ApiPrnDto(SUCCESS);
        HashMap<String, Object> bizData = new HashMap<>();

        String savePath = params.get("savePath").toString();
        String fileGroupSn = params.get("fileGroupSn").toString();
        try {
            /**
             * 년월 기반 경로 생성 (예: 202512)
             */
            String yearMonth = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMM"));
            String crtDt = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMddHHmmss"));

            /**
             * 저장경로 설정(\data\storage\attach\202512\savePath\)
             */
            String tempSavePath = this.getSavePath(savePath, type, yearMonth);

            /**
             * 파일 Write
             */
            List<HashMap<String, Object>> uploadList = new ArrayList<>();

            int fileSeq = 0;
            for (MultipartFile uploadFile: uploadFiles) {
                /**
                 * 파일 정보
                 */
                String orginalName  = uploadFile.getOriginalFilename();
                String fileNm       = orginalName.substring(orginalName.lastIndexOf("/") + 1);
                String extNm        = fileNm.substring(fileNm.lastIndexOf(".") + 1);

                String realFileNm   = null;
                if(fileName != null) {
                    realFileNm   = fileName + "_"+String.valueOf(System.currentTimeMillis())+"." + extNm;
                }
                else {
                    realFileNm   = UUID.randomUUID().toString() + "." + extNm;
                }

                String rootFilePath = fileProperties.getStorePath();
                String saveFullPath = rootFilePath + tempSavePath + realFileNm;

                /**
                 * 저장폴더 생성
                 */
                File saveFolder = new File(rootFilePath+tempSavePath);
                if(!saveFolder.exists() && !saveFolder.isDirectory()) {
                    saveFolder.mkdirs();
                }

                /**
                 * 파일 저장
                 */
                File saveFile   = new File(saveFullPath);
                log.info("@@ saveFile:"+saveFile);
                uploadFile.transferTo(saveFile);
                long fileSize = saveFile.length();

                /**
                 * DB에 파일 정보 저장
                 */
                // 파일 ID 생성
                long nextFileId = fileMapper.nextFileId();

                // FileInsertReqVO 생성 및 데이터 설정
                FileInsertReqVO fileInsertReqVO = new FileInsertReqVO();
                fileInsertReqVO.setAtchFileDtlSn((long) nextFileId);
                fileInsertReqVO.setAtchFileGroupSn(Long.valueOf(fileGroupSn));
                fileInsertReqVO.setFileSeq(fileSeq);
                fileInsertReqVO.setFileStrgPathDsctn(tempSavePath);   // 저장경로
                fileInsertReqVO.setStrgFileNm(realFileNm);
                fileInsertReqVO.setFileNm(fileNm);
                fileInsertReqVO.setFileCn("");                        // 내용
                fileInsertReqVO.setFileExtnNm(extNm);                 // 확장자
                fileInsertReqVO.setFileSz(fileSize);
                fileInsertReqVO.setCrtDt(crtDt);
                fileInsertReqVO.setUseYn("1");
                fileInsertReqVO.setRgtrId("admin");
                fileInsertReqVO.setMdfrId("admin");
                // DB에 insert
                fileMapper.insert(fileInsertReqVO);

                log.info("@@ File saved to DB - fileId: {}, fileName: {}, path: {}", nextFileId, orginalName, tempSavePath);

                HashMap<String, Object> updateInfo = new HashMap<String, Object>();
                updateInfo.put("fileId"    , nextFileId);    // DB에 저장된 파일 ID 추가
                updateInfo.put("filePath"  , tempSavePath);
                updateInfo.put("fileNm"    , fileNm);
                updateInfo.put("fileType"  , extNm);
                updateInfo.put("fileEncNm" , realFileNm);
                updateInfo.put("fileSize"  , fileSize);
                updateInfo.put("yearMonth" , yearMonth);     // 년월 정보 추가
                uploadList.add(updateInfo);

                fileSeq++;
            }

            bizData.put("uploadList", uploadList);
        } catch(Exception e) {
            log.error("@@ File upload error: ", e);
            ApiPrnDto = DrugsafeUtil.getApiPrnDto("-1", e.toString());
        }

        ApiPrnDto.setData(bizData);
        return ApiPrnDto;
    }


    /**
     * 저장경로 설정
     * @param savePath 사용자 지정 경로
     * @param fileType 파일 타입 (attachment, image 등)
     * @param yearMonth 년월 (예: 202512)
     * @return 최종 저장 경로 (예: /attachment/202512/savePath/)
     */
    private String getSavePath(String savePath, String fileType, String yearMonth) {

        if (StringUtils.hasLength(savePath)) {
            savePath = savePath.replaceAll("\\.", "");
        }

        // 앞에 \ 있으면 제거
        if (StringUtils.hasLength(savePath) && savePath.startsWith(File.separator)) {
            savePath = savePath.substring(1);
        }

        log.info("rootPath = {}", fileProperties.getStorePath());

        // 수정: \attach\ca\202601\
        savePath = File.separator + "attach" + File.separator + savePath + File.separator + yearMonth + File.separator;


        // 마지막 \ 보장
        if (!savePath.endsWith(File.separator)) {
            savePath = savePath + File.separator;
        }

        log.info("savePath(before return) = {}", savePath);

        return savePath;
    }

}

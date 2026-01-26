package kr.go.kids.domain.atch.service.impl;

import static kr.go.kids.global.system.common.ApiResultCode.SUCCESS;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import kr.go.kids.domain.atch.mapper.AtchMapper;
import kr.go.kids.domain.atch.service.AtchService;
import kr.go.kids.domain.atch.vo.AtchDVO;
import kr.go.kids.domain.atch.vo.AtchDWVO;
import kr.go.kids.domain.atch.vo.AtchPVO;
import kr.go.kids.domain.atch.vo.AtchRVO;
import kr.go.kids.global.config.FileProperties;
import kr.go.kids.global.exception.ApplicationException;
import kr.go.kids.global.system.common.vo.ApiPrnDto;
import kr.go.kids.global.util.DrugsafeUtil;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AtchServiceImpl implements AtchService
{
    @Autowired
    private FileProperties fileProperties;

    @Autowired
    private AtchMapper atchMapper;

    @Value("${file.storePath}")
    private String fileStorePath;
    
    @Override
    public AtchRVO getAtch(AtchPVO atchPVO)
    {
        return atchMapper.getAtch(atchPVO);
    }

    @Override
    public List<AtchRVO> getAtchList(AtchPVO atchPVO)
    {
        return atchMapper.getAtchList(atchPVO);
    }

    @Override
    public int insertAtch(AtchPVO atchPVO)
    {
        return atchMapper.insertAtch(atchPVO);
    }

    @Override
    public int updateAtch(AtchPVO atchPVO)
    {
        return atchMapper.updateAtch(atchPVO);
    }

    @Override
    public int saveAtch(AtchPVO atchPVO)
    {
        return atchMapper.saveAtch(atchPVO);
    }

    @Override
    public int deleteAtch(AtchDVO atchDVO)
    {
        return atchMapper.deleteAtch(atchDVO);
    }

    /**
     * 파일 업로드(파일정보 입력 포함)
     * @param params 파일 업로드시 사용할 파라메터 정보 
     * @param uploadFiles 업로드할 파일 객체 배열
     * @return 업로드후 응답결과 객체 반환
     */
    @Transactional
    @Override
    public ApiPrnDto uploadFile(HashMap<String, Object> params, MultipartFile[] uploadFiles) {
        return uploadPost(params, uploadFiles, "attachment", null);
    }


    /**
     * 파일 업로드(파일정보 입력 포함)
     * @param params 파일 업로드시 사용할 파라메터 정보 
     * @param uploadFiles 업로드할 파일 객체 배열
     * @param fileName 업로드할 파일명
     * @return 업로드후 응답결과 객체 반환
     */
    private ApiPrnDto uploadPost(HashMap<String, Object> params, MultipartFile[] uploadFiles, String type, String fileName) {

        ApiPrnDto apiPrnDto = new ApiPrnDto(SUCCESS);
        HashMap<String, Object> bizData = new HashMap<>();
        LocalDateTime now = LocalDateTime.now();

        String taskSeCd = params.get("taskSeCd") != null ? params.get("taskSeCd").toString() : null;
        String taskSeTrgtId = params.get("taskSeTrgtId") != null ? params.get("taskSeTrgtId").toString() : null;

        // 기존 호환성을 위해 menuSn, menuType도 지원
        if (taskSeCd == null && params.get("menuType") != null) {
            taskSeCd = params.get("menuType").toString();
        }
        if (taskSeTrgtId == null && params.get("menuSn") != null) {
            taskSeTrgtId = params.get("menuSn").toString();
        }

        String savePath = (taskSeCd != null ? taskSeCd : "") + (taskSeTrgtId != null ? taskSeTrgtId : "");

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
             * 파일 그룹 생성 (여러 파일을 하나의 그룹으로 관리)
             */
            AtchPVO groupInsertReqVO = new AtchPVO();
            groupInsertReqVO.setTaskSeCd(taskSeCd);
            groupInsertReqVO.setTaskSeTrgtId(taskSeTrgtId);
            groupInsertReqVO.setUseYn("Y");
            groupInsertReqVO.setRgtrId(params.get("rgtrId") != null ? params.get("rgtrId").toString() : "system");
            groupInsertReqVO.setMdfrId(params.get("mdfrId") != null ? params.get("mdfrId").toString() : "system");
            atchMapper.insertAtchGroup(groupInsertReqVO);
            // insert 후 발번된 그룹 ID 가져오기
            String atchFileGroupId = groupInsertReqVO.getAtchFileGroupId();

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
                // FileInsertReqVO 생성 및 데이터 설정
                AtchPVO fileInsertReqVO = new AtchPVO();

                fileInsertReqVO.setAtchFileGroupId(atchFileGroupId);
                fileInsertReqVO.setFileSeq(fileSeq++);
                fileInsertReqVO.setFileStrgPathDsctn(tempSavePath);
                fileInsertReqVO.setEncdFileNm(realFileNm);
                fileInsertReqVO.setPrvcInclYn("N");
                fileInsertReqVO.setFileNm(fileNm);
                fileInsertReqVO.setFileExtnNm(extNm);
                fileInsertReqVO.setFileCn(null);
                fileInsertReqVO.setFileSz(fileSize);
                fileInsertReqVO.setCrtDt(crtDt);
                fileInsertReqVO.setUseYn("Y");
                fileInsertReqVO.setRgtrId(params.get("rgtrId") != null ? params.get("rgtrId").toString() : "system");
                fileInsertReqVO.setMdfrId(params.get("mdfrId") != null ? params.get("mdfrId").toString() : "system");

                // DB에 파일정보 insert (nextval로 ID 자동 생성)
                atchMapper.insertAtch(fileInsertReqVO);
                // insert 후 발번된 파일 ID 가져오기
                String atchFileId = fileInsertReqVO.getAtchFileId();

                log.info("@@ File saved to DB - fileId: {}, fileName: {}, path: {}", atchFileId, orginalName, tempSavePath);

                HashMap<String, Object> updateInfo = new HashMap<String, Object>();
                updateInfo.put("fileId"    , atchFileId);    // DB에 저장된 파일 ID 추가
                updateInfo.put("fileGroupId", atchFileGroupId);  // 파일 그룹 ID 추가
                updateInfo.put("filePath"  , tempSavePath);
                updateInfo.put("fileNm"    , fileNm);
                updateInfo.put("fileType"  , extNm);
                updateInfo.put("fileEncNm" , realFileNm);
                updateInfo.put("fileSize"  , fileSize);
                updateInfo.put("yearMonth" , yearMonth);     // 년월 정보 추가
                uploadList.add(updateInfo);
            }

            bizData.put("fileGroupId", atchFileGroupId);
            bizData.put("uploadList", uploadList);
        } catch(Exception e) {
            log.error("@@ File upload error: ", e);
            apiPrnDto = DrugsafeUtil.getApiPrnDto("-1", e.toString());
        }

        apiPrnDto.setData(bizData);
        return apiPrnDto;
    }

    /**
     * 파일 다운로드
     * @param atchPVO 파일 ID 포함
     * @return 파일 다운로드에 필요한 파라미터 반환
     */    
    @Override
    public AtchDWVO downloadFile(AtchPVO atchPVO) {
        try {
            String filename = "";
            String path = "";
            String atchFileId = "";
            String downloadFilename = "";
            
            if (atchPVO != null) {
                AtchRVO atchRVO = atchMapper.getAtch(atchPVO);
                if (atchRVO != null) {
                    atchFileId = atchRVO.getAtchFileId();
                    filename = atchRVO.getEncdFileNm();  // 암호화된 파일명 사용 (실제 저장된 파일명)
                    path = atchRVO.getFileStrgPathDsctn();  // 저장 경로 설명
                    downloadFilename = atchRVO.getFileNm();  // 원본 파일명 (다운로드시 사용)
                    
                    // 원본 파일명이 없는 경우 암호화된 파일명 사용
                    if (downloadFilename == null || downloadFilename.isEmpty()) {
                        downloadFilename = filename;
                    }
                    
                    // 암호화된 파일명이 없는 경우 원본 파일명 사용
                    if (filename == null || filename.isEmpty()) {
                        filename = downloadFilename;
                    }
                }
            }
            
            // 파일명 검증 (경로 조작 공격 방지)
            if (!isValidFilename(filename)) {
                log.error("File name verification failed: {}", filename);
                throw new ApplicationException("api.error.file.validation.name");  
            }

            // 다운로드 파일 경로 세팅
            Path baseDir = Paths.get(fileStorePath).toAbsolutePath().normalize();
            Path filePath = baseDir.resolve(path).resolve(filename).normalize();
            File file = filePath.toFile();

            // 파일 존재 여부 확인
            if (!file.exists() || !file.isFile()) {
                log.error("File not found: {}", filePath);
                throw new ApplicationException("api.error.file.validation.exists");
            }

            // 보안: 파일이 지정된 디렉토리 내에 있는지 확인 (Path Traversal 방지)
            if (!filePath.startsWith(Paths.get(fileStorePath).normalize())) {
                log.error("Access denied - file outside allowed directory: {}", filePath);
                throw new ApplicationException("api.error.file.validation.path");
            }
            
            Resource resource = new FileSystemResource(file);
            
            String contentType = Files.probeContentType(filePath);
            if (contentType == null) {
                contentType = "application/octet-stream";
            }
            
            AtchDWVO atchDWVO = AtchDWVO.builder()
                    .atchFileId(atchFileId)
                    .filename(downloadFilename)
                    .contentType(contentType)
                    .contentLength(file.length())
                    .resource(resource)
                    .build();
            
            return atchDWVO;
            
        } catch (Exception e) {
            throw new ApplicationException("api.error.file.download");          
        }
    }

    /**
     * 파일 존재 여부 확인 API
     * 
     * @param filename 확인할 파일명
     * @return 존재 여부
     */
    private boolean isValidFilename(String filename) {
        if (!StringUtils.hasText(filename)) {
            return false;
        }

        // Path Traversal 공격만 차단 (..만 차단)
        if (filename.contains("..") || filename.contains("\0")) {
            return false;
        }

        // 정상적인 경로 구분자는 허용, 파일명 패턴 검증
        String normalizedPath = filename.replace("\\", "/");

        // 각 경로 구성 요소 검증 (빈 값, 특수문자 등)
        String[] parts = normalizedPath.split("/");
        for (String part : parts) {
            if (part.isEmpty() || !part.matches("^[a-zA-Z0-9가-힣._\\-\\s()]+$")) {
                return false;
            }
        }
        return true;
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

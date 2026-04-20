package kr.or.kids.domain.pp.atch.service.impl;

import static kr.or.kids.global.system.common.ApiResultCode.SUCCESS;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import kr.or.kids.domain.ca.common.file.service.FileService;
import kr.or.kids.domain.ca.common.file.vo.FileDataReqVO;
import kr.or.kids.domain.ca.common.file.vo.FileDownResVO;
import kr.or.kids.domain.pp.atch.mapper.AtchMapper;
import kr.or.kids.domain.pp.atch.service.AtchService;
import kr.or.kids.domain.pp.atch.vo.AtchDVO;
import kr.or.kids.domain.pp.atch.vo.AtchPVO;
import kr.or.kids.domain.pp.atch.vo.AtchRVO;
import kr.or.kids.domain.pp.task.mapper.TaskCdMapper;
import kr.or.kids.domain.pp.task.vo.FileIdFromTaskCdPVO;
import kr.or.kids.domain.pp.task.vo.FileIdFromTaskCdRVO;
import kr.or.kids.global.config.FileProperties;
import kr.or.kids.global.system.common.vo.ApiPrnDto;
import kr.or.kids.global.util.DrugsafeUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class AtchServiceImpl implements AtchService
{
    /** 업무구분·대상ID 등 저장 경로에 쓰이는 단일 세그먼트 (슬래시·드라이브 문자 등 금지) */
    private static final Pattern SAFE_PATH_SEGMENT = Pattern.compile("^[a-zA-Z0-9가-힣._-]{0,128}$");

    private final FileProperties fileProperties;

    private final FileService fileService;

    private final AtchMapper atchMapper;

    private final TaskCdMapper taskCdMapper;

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

        String pathValidationMsg = validateTaskPathSegments(taskSeCd, taskSeTrgtId);
        if (pathValidationMsg != null) {
            log.warn("@@ upload rejected: {}", pathValidationMsg);
            apiPrnDto = DrugsafeUtil.getApiPrnDto("-1", pathValidationMsg);
            apiPrnDto.setData(bizData);
            return apiPrnDto;
        }

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
                 * 파일 정보 — 원본명에서 디렉터리 부분 제거 후 Path Traversal 방지 규칙 적용
                 */
                String orginalName = uploadFile.getOriginalFilename();
                if (!StringUtils.hasText(orginalName)) {
                    throw new IllegalArgumentException("첨부 파일명이 비어 있습니다.");
                }
                String fileNm = basenameOnly(orginalName);
                if (!isValidFilename(fileNm)) {
                    throw new IllegalArgumentException("허용되지 않는 파일명입니다.");
                }
                int lastDot = fileNm.lastIndexOf('.');
                String extNm = (lastDot >= 0 && lastDot < fileNm.length() - 1)
                    ? fileNm.substring(lastDot + 1)
                    : "";
                if (StringUtils.hasText(extNm) && !isValidExtension(extNm)) {
                    throw new IllegalArgumentException("허용되지 않는 확장자입니다.");
                }

                String realFileNm   = null;
                if(fileName != null) {
                    realFileNm = fileName + "_" + System.currentTimeMillis()
                        + (StringUtils.hasText(extNm) ? "." + extNm : "");
                }
                else {
                    realFileNm   = UUID.randomUUID().toString() + (StringUtils.hasText(extNm) ? "." + extNm : "");
                }

                if (!isValidFilename(realFileNm)) {
                    throw new IllegalArgumentException("저장 파일명 규칙 위반입니다.");
                }

                String rootFilePath = fileProperties.getStorePath();
                File saveFile = resolveUnderStoreRoot(rootFilePath, tempSavePath, realFileNm);

                /**
                 * 저장폴더 생성
                 */
                File saveFolder = saveFile.getParentFile();
                if (saveFolder != null && !saveFolder.exists() && !saveFolder.isDirectory()) {
                    saveFolder.mkdirs();
                }

                /**
                 * 파일 저장
                 */
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
                fileInsertReqVO.setEncptFileNm(realFileNm);
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
        } catch (IllegalArgumentException e) {
            log.warn("@@ File upload validation: {}", e.getMessage());
            apiPrnDto = DrugsafeUtil.getApiPrnDto("-1", e.getMessage());
        } catch (IOException e) {
            log.error("@@ File upload IO error: ", e);
            apiPrnDto = DrugsafeUtil.getApiPrnDto("-1", e.getMessage());
        } catch(Exception e) {
            log.error("@@ File upload error: ", e);
            apiPrnDto = DrugsafeUtil.getApiPrnDto("-1", e.toString());
        }

        apiPrnDto.setData(bizData);
        return apiPrnDto;
    }

    /**
     * Multipart 원본 파일명에서 경로 구분자 뒤 basename만 추출 (윈도우/유닉스)
     */
    private static String basenameOnly(String originalFilename) {
        String n = originalFilename.replace('\\', '/');
        int slash = n.lastIndexOf('/');
        return slash >= 0 ? n.substring(slash + 1) : n;
    }

    /**
     * 업로드 저장용 파일명·표시용 파일명 검증 (단일 이름 조각, 디렉터리 메타 문자 제외)
     */
    private boolean isValidFilename(String filename) {
        if (!StringUtils.hasText(filename)) {
            return false;
        }
        if (filename.contains("..") || filename.contains("\0")) {
            return false;
        }
        if (filename.contains("/") || filename.contains("\\")) {
            return false;
        }
        return filename.matches("^[a-zA-Z0-9가-힣._\\-\\s()_]+$");
    }

    /** 저장 시 붙는 확장자(소문자 기준 검사) */
    private static final Pattern SAFE_EXT = Pattern.compile("^[a-zA-Z0-9]{1,16}$");

    private boolean isValidExtension(String ext) {
        return StringUtils.hasText(ext) && SAFE_EXT.matcher(ext).matches();
    }

    /**
     * taskSeCd / taskSeTrgtId 로 이어붙인 저장 하위 경로 — 세그먼트별로 검증 후에만 사용
     */
    private String validateTaskPathSegments(String taskSeCd, String taskSeTrgtId) {
        if (!isValidPathSegment(taskSeCd)) {
            return "허용되지 않는 업무구분(taskSeCd)입니다.";
        }
        if (!isValidPathSegment(taskSeTrgtId)) {
            return "허용되지 않는 업무대상(taskSeTrgtId)입니다.";
        }
        return null;
    }

    /**
     * null·빈 문자열 허용(옵션), 값이 있으면 경로 메타 문자 없이 패턴만 허용
     */
    private boolean isValidPathSegment(String segment) {
        if (!StringUtils.hasText(segment)) {
            return true;
        }
        if (segment.contains("..") || segment.contains("/") || segment.contains("\\") || segment.contains("\0")) {
            return false;
        }
        if (segment.contains(":")) {
            return false;
        }
        return SAFE_PATH_SEGMENT.matcher(segment).matches();
    }

    /**
     * file.storePath 루트 아래에만 파일이 생성되도록 절대경로 해석 후 검증
     */
    private File resolveUnderStoreRoot(String rootFilePath, String tempSavePath, String realFileNm) {
        Path storeRoot = Paths.get(rootFilePath).toAbsolutePath().normalize();
        String rel = tempSavePath.replace('/', File.separatorChar).replaceFirst("^[/\\\\]+", "");
        Path candidate = storeRoot.resolve(rel).resolve(realFileNm).normalize();
        if (!candidate.startsWith(storeRoot)) {
            throw new IllegalArgumentException("저장 경로가 허용된 디렉터리를 벗어났습니다.");
        }
        return candidate.toFile();
    }

    /**
     * 저장경로 설정
     * @param savePath 사용자 지정 경로 (taskSeCd+taskSeTrgtId, 세그먼트는 상위에서 검증됨)
     * @param fileType 파일 타입 (attachment, image 등)
     * @param yearMonth 년월 (예: 202512)
     * @return 최종 저장 경로 (예: /attachment/202512/savePath/)
     */
    private String getSavePath(String savePath, String fileType, String yearMonth) {

        if (StringUtils.hasLength(savePath) && savePath.startsWith(File.separator)) {
            savePath = savePath.substring(1);
        }

        log.info("rootPath = {}", fileProperties.getStorePath());

        savePath = File.separator + "attach" + File.separator + savePath + File.separator + yearMonth + File.separator;

        if (!savePath.endsWith(File.separator)) {
            savePath = savePath + File.separator;
        }

        log.info("savePath(before return) = {}", savePath);

        return savePath;
    }

    @Override
    public FileDownResVO downloadFromTaskCd(FileIdFromTaskCdPVO param) {
        FileIdFromTaskCdRVO resultVo = taskCdMapper.getFileIdFromTaskCd(param);
        
        FileDataReqVO fdrv = new FileDataReqVO();
        fdrv.setAtchFileId(resultVo.getAtchFileId());

        return fileService.downloadFile(fdrv);
    }
}

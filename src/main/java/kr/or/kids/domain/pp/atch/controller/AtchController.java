package kr.or.kids.domain.pp.atch.controller;

import java.io.File;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.http.ContentDisposition;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.util.StringUtils;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.or.kids.domain.ca.common.file.service.FileService;
import kr.or.kids.domain.ca.common.file.vo.FileDataReqVO;
import kr.or.kids.domain.ca.common.file.vo.FileDownResVO;
import kr.or.kids.domain.pp.atch.service.AtchService;
import kr.or.kids.domain.pp.atch.vo.AtchPVO;
import kr.or.kids.domain.pp.atch.vo.AtchRVO;
import kr.or.kids.domain.pp.task.vo.FileIdFromTaskCdPVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Tag(name = "AtchController", description = "공통_첨부파일기본 관리")
@RestController
@Slf4j
@RequestMapping(value="/api/pp/atch")
@RequiredArgsConstructor
public class AtchController
{
    private static final int THUMB_REL_PATH_MAX_LEN = 512;

    /** 썸네일 상대 경로의 각 디렉터리/파일 이름 조각 (Path Traversal·절대경로 방지) */
    private static final Pattern THUMB_PATH_SEGMENT = Pattern.compile("^[a-zA-Z0-9가-힣._\\-\\s()_]{1,255}$");

    private final AtchService atchService;

    private final FileService fileService;
    

    @Value("${file.storePath}")
    private String fileStorePath;

    @Operation(summary = "공통_첨부파일기본 조회 (단건)", description = "공통_첨부파일기본 단건 조회한다. (atchFileGroupId, atchFileId 필수)")
    @PostMapping(value="/getAtch")
    @ResponseBody
    public ResponseEntity<AtchRVO> getAtch(@RequestBody AtchPVO atchPVO)
    {
        AtchRVO atch = atchService.getAtch(atchPVO);

        return ResponseEntity.ok(atch);
    }

    @Operation(summary = "공통_첨부파일기본 목록 조회", description = "공통_첨부파일기본 목록을 조회한다. (atchFileGroupId 필수)")
    @PostMapping(value="/getAtchList")
    @ResponseBody
    public ResponseEntity<List<AtchRVO>> getAtchList(@RequestBody AtchPVO atchPVO)
    {
        List<AtchRVO> atchList = atchService.getAtchList(atchPVO);

        return ResponseEntity.ok(atchList);
    }
    
    @Operation(summary = "공통_첨부파일기본 첨부파일 다운로드", description = "공통_첨부파일기본 첨부파일을 다운로드한다.")
    @PostMapping(value="/download")
    public ResponseEntity<Resource> downloadFile(@RequestBody FileDataReqVO fdrv)
    {
        FileDownResVO downloadParam = fileService.downloadFile(fdrv);

        Resource resource = downloadParam.getResource();

        HttpHeaders headers = new HttpHeaders();
        headers.setContentDisposition(
            ContentDisposition.attachment()
                .filename(downloadParam.getFilename(), StandardCharsets.UTF_8)
                .build()
        );
        headers.add(HttpHeaders.CONTENT_TYPE, downloadParam.getContentType());
        headers.add(HttpHeaders.CONTENT_LENGTH, String.valueOf(downloadParam.getContentLength()));

        log.info("downloadFile File download started: {}, size: {} bytes", downloadParam.getFilename(), downloadParam.getContentLength());

        return ResponseEntity.ok()
                .headers(headers)
                .body(resource);
    }

    @Operation(summary = "공통_첨부파일기본 첨부파일 다운로드(GET)", description = "공통_첨부파일기본 첨부파일을 다운로드한다.(GET)")
    @GetMapping(value="/downloadParam")
    public ResponseEntity<Resource> downloadParam(FileDataReqVO fdrv)
    {
        FileDownResVO downloadParam = fileService.downloadFile(fdrv);

        Resource resource = downloadParam.getResource();

        HttpHeaders headers = new HttpHeaders();
        headers.setContentDisposition(
            ContentDisposition.attachment()
                .filename(downloadParam.getFilename(), StandardCharsets.UTF_8)
                .build()
        );
        headers.add(HttpHeaders.CONTENT_TYPE, downloadParam.getContentType());
        headers.add(HttpHeaders.CONTENT_LENGTH, String.valueOf(downloadParam.getContentLength()));

        log.info("downloadParam File download started: {}, size: {} bytes", downloadParam.getFilename(), downloadParam.getContentLength());

        return ResponseEntity.ok()
                .headers(headers)
                .body(resource);
    }

    @Operation(summary = "업무코드로부터 업무별 업로드된 파일을 다운로드(GET)", description = "업무코드로부터 업무별 업로드된 파일을 다운로드한다.(GET)")
    @GetMapping(value="/downloadFromTaskCd")
    public ResponseEntity<Resource> downloadFromTaskCd(FileIdFromTaskCdPVO fdrv)
    {
        FileDownResVO downloadParam = atchService.downloadFromTaskCd(fdrv);

        Resource resource = downloadParam.getResource();

        HttpHeaders headers = new HttpHeaders();
        headers.setContentDisposition(
            ContentDisposition.attachment()
                .filename(downloadParam.getFilename(), StandardCharsets.UTF_8)
                .build()
        );
        headers.add(HttpHeaders.CONTENT_TYPE, downloadParam.getContentType());
        headers.add(HttpHeaders.CONTENT_LENGTH, String.valueOf(downloadParam.getContentLength()));

        log.info("downloadFromTaskCd File download started: {}, size: {} bytes", downloadParam.getFilename(), downloadParam.getContentLength());

        return ResponseEntity.ok()
                .headers(headers)
                .body(resource);
    }

    @Operation(summary = "공통_첨부파일기본 썸네일 조회", description = "공통_첨부파일기본 썸네일 파일을 조회한다.")
    @GetMapping(value="/thumb/**")
    public ResponseEntity<Resource> getThumb(HttpServletRequest request)
    {
        String requestUri = request.getRequestURI();
        String basePath = "/thumb/";
        int thumbIdx = requestUri.indexOf(basePath);
        if (thumbIdx < 0) {
            return buildBackupThumbResponse();
        }
        String rawTail = requestUri.substring(thumbIdx + basePath.length());
        String safeRelative = sanitizeThumbRelativePath(rawTail);
        if (safeRelative == null) {
            log.warn("getThumb rejected unsafe path. rawTail={}", rawTail);
            return buildBackupThumbResponse();
        }
        if (!isThumbPathUnderStoreRoot(safeRelative)) {
            log.warn("getThumb path escapes store root. safeRelative={}", safeRelative);
            return buildBackupThumbResponse();
        }

        FileDataReqVO fdrv = new FileDataReqVO();
        fdrv.setSrvrFileNm(safeRelative);

        try {
            FileDownResVO downloadParam = fileService.downloadFile(fdrv);

            if (downloadParam == null) {
                return buildBackupThumbResponse();
            }

            Resource resource = downloadParam.getResource();

            if (resource == null || !resource.exists()) {
                return buildBackupThumbResponse();
            }

            return ResponseEntity.ok()
                    .contentType(MediaType.IMAGE_PNG)
                    .body(resource);
        } catch (Exception e) {
            log.warn("getThumb fallback to backup image. srvrFileNm={}", safeRelative, e);
            return buildBackupThumbResponse();
        }
    }

    /**
     * URL 디코드 후 슬래시로 통일, 세그먼트별 화이트리스트 검증. 불가 시 null.
     */
    private static String sanitizeThumbRelativePath(String rawTail) {
        if (!StringUtils.hasText(rawTail)) {
            return null;
        }
        String decoded;
        try {
            decoded = URLDecoder.decode(rawTail, StandardCharsets.UTF_8);
        } catch (IllegalArgumentException e) {
            return null;
        }
        if (decoded.indexOf('\0') >= 0) {
            return null;
        }
        String n = decoded.replace('\\', '/').replaceFirst("^/+", "");
        if (n.length() > THUMB_REL_PATH_MAX_LEN) {
            return null;
        }
        if (n.contains("..")) {
            return null;
        }
        String[] parts = n.split("/");
        for (String part : parts) {
            if (part.isEmpty()) {
                continue;
            }
            if (".".equals(part) || "..".equals(part)) {
                return null;
            }
            if (!THUMB_PATH_SEGMENT.matcher(part).matches()) {
                return null;
            }
        }
        return n;
    }

    /**
     * file.storePath 기준으로 해석했을 때 저장소 밖으로 나가지 않는지 확인
     */
    private boolean isThumbPathUnderStoreRoot(String relativeUnixStyle) {
        if (!StringUtils.hasText(fileStorePath) || !StringUtils.hasText(relativeUnixStyle)) {
            return false;
        }
        try {
            Path storeRoot = Paths.get(fileStorePath).toAbsolutePath().normalize();
            String relFs = relativeUnixStyle.replace('/', File.separatorChar);
            Path candidate = storeRoot.resolve(relFs).normalize();
            return candidate.startsWith(storeRoot);
        } catch (Exception e) {
            log.debug("isThumbPathUnderStoreRoot failed: {}", e.getMessage());
            return false;
        }
    }

    private ResponseEntity<Resource> buildBackupThumbResponse()
    {
        Resource backupResource = new ClassPathResource("static/image/thumb_backup1.png");

        if (!backupResource.exists()) {
            log.error("Backup thumbnail not found: static/image/thumb_backup1.png");
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }

        return ResponseEntity.ok()
                .contentType(MediaType.IMAGE_PNG)
                .body(backupResource);
    }
}

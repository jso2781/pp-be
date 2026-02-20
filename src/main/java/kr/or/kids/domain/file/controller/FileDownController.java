package kr.or.kids.domain.file.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.ContentDisposition;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import kr.or.kids.domain.file.mapper.FileMapper;
import kr.or.kids.domain.file.vo.FileDataReqVO;
import kr.or.kids.domain.file.vo.FileDataResVO;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@Slf4j
@RestController
@CrossOrigin
@RequestMapping("/file")
public class FileDownController {

    @Value("${file.storePath}")
    private String fileStorePath;

    @Autowired
    FileMapper fileMapper;

    /**
     * 파일 다운로드 (ResponseEntity 방식)
     * @param filename 다운로드할 파일명
     * @return ResponseEntity<Resource>
     */
    @GetMapping("/download")
    public ResponseEntity<Resource> download(@RequestParam String filename) {
        try {
            // 1. 파일명 검증 (경로 조작 공격 방지)
            if (!isValidFilename(filename)) {
                log.error("Invalid filename detected: {}", filename);
                return ResponseEntity.badRequest().build();
            }

            // 2. 파일 경로 생성
            Path filePath = Paths.get(fileStorePath).resolve(filename).normalize();
            File file = filePath.toFile();

            // 3. 파일 존재 여부 확인
            if (!file.exists() || !file.isFile()) {
                log.error("File not found: {}", filePath);
                return ResponseEntity.notFound().build();
            }

            // 4. 보안: 파일이 지정된 디렉토리 내에 있는지 확인 (Path Traversal 방지)
            if (!filePath.startsWith(Paths.get(fileStorePath).normalize())) {
                log.error("Access denied - file outside allowed directory: {}", filePath);
                return ResponseEntity.status(HttpStatus.FORBIDDEN).build();
            }

            // 5. 파일을 Resource로 변환
            Resource resource = new FileSystemResource(file);

            // 6. Content-Type 자동 감지
            String contentType = Files.probeContentType(filePath);
            if (contentType == null) {
                contentType = "application/octet-stream";
            }

            // 7. 한글 파일명 인코딩 처리
            String encodedFilename = URLEncoder.encode(filename, StandardCharsets.UTF_8.toString())
                    .replaceAll("\\+", "%20");

            // 8. 응답 헤더 설정
            HttpHeaders headers = new HttpHeaders();
            headers.setContentDisposition(
                ContentDisposition.attachment()
                    .filename(encodedFilename, StandardCharsets.UTF_8)
                    .build()
            );
            headers.add(HttpHeaders.CONTENT_TYPE, contentType);
            headers.add(HttpHeaders.CONTENT_LENGTH, String.valueOf(file.length()));

            log.info("File download started: {}, size: {} bytes", filename, file.length());

            return ResponseEntity.ok()
                    .headers(headers)
                    .body(resource);

        } catch (Exception e) {
            log.error("File download error: {}", e.getMessage(), e);
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

    /**
     * 파일 다운로드 (OutputStream 방식 - 대용량 파일에 적합)
     * @param filename 다운로드할 파일명
     * @param response HttpServletResponse
     */
    @GetMapping("/download-stream")
    public void downloadStream(@RequestParam String filename, HttpServletResponse response) {
        InputStream inputStream = null;
        OutputStream outputStream = null;

        try {
            // 1. 파일명 검증
            if (!isValidFilename(filename)) {
                log.error("Invalid filename detected: {}", filename);
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid filename");
                return;
            }

            // 인코딩 파일명으로 경로 정보 죄회
            FileDataReqVO fileParam = new FileDataReqVO();
            fileParam.setStrgFileNm(filename);
            FileDataResVO fileData = fileMapper.data(fileParam);

            String fileurl =  fileData.getFileStrgPathDsctn(); // "C:\\data\\attach\\202601\\ca";
            log.info("fileStorePath::::0000000::: {}", fileStorePath + fileurl); // fileStorePath

            // 2. 파일 경로 생성
            Path filePath = Paths.get(fileStorePath + fileurl).resolve(filename).normalize(); // fileStorePath

            log.info("filePath::::::::::::::::xxxx:::: {}", filePath);

            File file = filePath.toFile();

            // 3. 파일 존재 여부 확인
            if (!file.exists() || !file.isFile()) {
                log.error("File not found: {}", filePath);
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "File not found");
                return;
            }

            // 4. 보안 검사
            if (!filePath.startsWith(Paths.get(fileStorePath).normalize())) {
                log.error("Access denied - file outside allowed directory: {}", filePath);
                response.sendError(HttpServletResponse.SC_FORBIDDEN, "Access denied");
                return;
            }

            // 5. Content-Type 설정
            String contentType = Files.probeContentType(filePath);
            if (contentType == null) {
                contentType = "application/octet-stream";
            }
            response.setContentType(contentType);

            // 6. 한글 파일명 인코딩
            String encodedFilename = URLEncoder.encode(filename, StandardCharsets.UTF_8.toString())
                    .replaceAll("\\+", "%20");

            // 7. 응답 헤더 설정
            response.setHeader(HttpHeaders.CONTENT_DISPOSITION, 
                "attachment; filename*=UTF-8''" + encodedFilename);
            response.setHeader(HttpHeaders.CONTENT_LENGTH, String.valueOf(file.length()));

            // 8. 파일 스트리밍
            inputStream = new BufferedInputStream(new FileInputStream(file));
            outputStream = new BufferedOutputStream(response.getOutputStream());

            byte[] buffer = new byte[8192]; // 8KB 버퍼
            int bytesRead;

            while ((bytesRead = inputStream.read(buffer)) != -1) {
                outputStream.write(buffer, 0, bytesRead);
            }

            outputStream.flush();
            log.info("File download completed: {}, size: {} bytes", filename, file.length());

        } catch (IOException e) {
            log.error("File download error: {}", e.getMessage(), e);
            try {
                if (!response.isCommitted()) {
                    response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, 
                        "File download failed");
                }
            } catch (IOException ex) {
                log.error("Error sending error response", ex);
            }
        } finally {
            // 9. 리소스 정리
            try {
                if (inputStream != null) inputStream.close();
                if (outputStream != null) outputStream.close();
            } catch (IOException e) {
                log.error("Error closing streams", e);
            }
        }
    }

    /**
     * 파일 존재 여부 확인 API
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
        // Windows: \, Linux/Mac: /
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


    @GetMapping("/exists")
    public ResponseEntity<Boolean> fileExists(@RequestParam String filename) {
        try {
            if (!isValidFilename(filename)) {
                return ResponseEntity.badRequest().body(false);
            }

            Path filePath = Paths.get(fileStorePath).resolve(filename).normalize();
            File file = filePath.toFile();

            boolean exists = file.exists() && file.isFile() && 
                           filePath.startsWith(Paths.get(fileStorePath).normalize());

            return ResponseEntity.ok(exists);
        } catch (Exception e) {
            log.error("Error checking file existence: {}", e.getMessage());
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(false);
        }
    }



}

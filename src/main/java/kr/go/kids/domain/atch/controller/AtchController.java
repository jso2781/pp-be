package kr.go.kids.domain.atch.controller;

import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
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

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import kr.go.kids.domain.atch.service.AtchService;
import kr.go.kids.domain.atch.vo.AtchDWVO;
import kr.go.kids.domain.atch.vo.AtchPVO;
import kr.go.kids.domain.atch.vo.AtchRVO;
import lombok.extern.slf4j.Slf4j;

@Tag(name = "AtchController", description = "공통_첨부파일기본 관리")
@RestController
@Slf4j
@RequestMapping(value="/api/atch")
public class AtchController
{
    @Autowired
    private AtchService atchService;
    
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
    public ResponseEntity<Resource> downloadFile(@RequestBody AtchPVO atchPVO)
    {
        AtchDWVO downloadParam = atchService.downloadFile(atchPVO);

        Resource resource = downloadParam.getResource();

        HttpHeaders headers = new HttpHeaders();
        headers.setContentDisposition(
            ContentDisposition.attachment()
                .filename(downloadParam.getFilename(), StandardCharsets.UTF_8)
                .build()
        );
        headers.add(HttpHeaders.CONTENT_TYPE, downloadParam.getContentType());
        headers.add(HttpHeaders.CONTENT_LENGTH, String.valueOf(downloadParam.getContentLength()));

        log.info("File download started: {}, size: {} bytes", downloadParam.getFilename(), downloadParam.getContentLength());

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
        String relativePath = requestUri.substring(requestUri.indexOf(basePath) + basePath.length());

        Path baseDir = Paths.get(fileStorePath).normalize();
        Path filePath = baseDir.resolve(relativePath).normalize();

        if (!filePath.startsWith(baseDir)) {
            return ResponseEntity.status(HttpStatus.FORBIDDEN).build();
        }

        Resource resource = new FileSystemResource(filePath.toFile());

        if (!resource.exists()) {
            return ResponseEntity.notFound().build();
        }

        return ResponseEntity.ok()
                .contentType(MediaType.IMAGE_PNG)
                .body(resource);                
    }         
}

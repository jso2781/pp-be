package kr.or.kids.domain.test.controller;

import org.springframework.core.io.ClassPathResource;
import org.springframework.http.MediaType;
import org.springframework.util.StreamUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.nio.charset.StandardCharsets;

@RestController
public class FileUploadTestController {

    @GetMapping(value = "/ca/file-upload", produces = MediaType.TEXT_HTML_VALUE)
    public String fileUploadTestPage() throws IOException {
        ClassPathResource resource = new ClassPathResource("static/file-upload-test.html");
        return StreamUtils.copyToString(resource.getInputStream(), StandardCharsets.UTF_8);
    }
}

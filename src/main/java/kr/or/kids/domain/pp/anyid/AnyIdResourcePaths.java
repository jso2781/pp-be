package kr.or.kids.domain.pp.anyid;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import org.springframework.stereotype.Component;

/**
 * Any-ID(정부 통합인증) 중계형 SDK는 일부 API에서 "설정 파일 경로"(파일시스템 경로)를 요구합니다.
 * (예: kdist-api.json)
 *
 * Spring Boot는 classpath 리소스를 파일 경로로 바로 넘기기 어렵기 때문에,
 * 필요한 리소스를 임시 파일로 복사하여 경로를 제공합니다.
 */
@Component
public class AnyIdResourcePaths {

    private final AnyIdProfilePaths anyIdProfilePaths;

    private volatile Path kdistApiJsonPath;
    private volatile Path esignProviderKeyJsonPath;
    private volatile Path pidApiJsonPath;

    public AnyIdResourcePaths(AnyIdProfilePaths anyIdProfilePaths) {
        this.anyIdProfilePaths = anyIdProfilePaths;
    }

    /**
     * 활성 프로필(local/dev/prod)에 맞는 kdist-api.json 경로를 준비한다.
     */
    public String kdistApiJsonFilePath() {
        if (kdistApiJsonPath != null) {
            return kdistApiJsonPath.toAbsolutePath().toString();
        }
        synchronized (this) {
            if (kdistApiJsonPath != null) {
                return kdistApiJsonPath.toAbsolutePath().toString();
            }
            try {
                kdistApiJsonPath = copyToTempFile(anyIdProfilePaths.classpathLocation("kdist/kdist-api.json"), "kdist-api", ".json");
            } catch (IOException e) {
                throw new IllegalStateException("Failed to prepare Any-ID kdist-api.json temp file", e);
            }
            return kdistApiJsonPath.toAbsolutePath().toString();
        }
    }

    /** 활성 프로필(local/dev/prod)에 맞는 provider-key.json 경로를 준비한다. */
    public String esignProviderKeyJsonFilePath() {
        if (esignProviderKeyJsonPath != null) {
            return esignProviderKeyJsonPath.toAbsolutePath().toString();
        }
        synchronized (this) {
            if (esignProviderKeyJsonPath != null) {
                return esignProviderKeyJsonPath.toAbsolutePath().toString();
            }
            try {
                esignProviderKeyJsonPath = copyToTempFile(anyIdProfilePaths.classpathLocation("esign/provider-key.json"), "provider-key", ".json");
            } catch (IOException e) {
                throw new IllegalStateException("Failed to prepare Any-ID provider-key.json temp file", e);
            }
            return esignProviderKeyJsonPath.toAbsolutePath().toString();
        }
    }

    /** 활성 프로필(local/dev/prod)에 맞는 pid_api.json 경로를 준비한다. */
    public String pidApiJsonFilePath() {
        if (pidApiJsonPath != null) {
            return pidApiJsonPath.toAbsolutePath().toString();
        }
        synchronized (this) {
            if (pidApiJsonPath != null) {
                return pidApiJsonPath.toAbsolutePath().toString();
            }
            try {
                pidApiJsonPath = copyToTempFile(anyIdProfilePaths.classpathLocation("pid/pid_api.json"), "pid_api", ".json");
            } catch (IOException e) {
                throw new IllegalStateException("Failed to prepare Any-ID pid_api.json temp file", e);
            }
            return pidApiJsonPath.toAbsolutePath().toString();
        }
    }

    private static Path copyToTempFile(String classpathLocation, String prefix, String suffix) throws IOException {
        org.springframework.core.io.ClassPathResource res = new org.springframework.core.io.ClassPathResource(classpathLocation);
        if (!res.exists()) {
            throw new IOException("Classpath resource not found: " + classpathLocation);
        }
        Path tmp = Files.createTempFile(prefix, suffix);
        tmp.toFile().deleteOnExit();
        try (InputStream in = res.getInputStream()) {
            Files.copy(in, tmp, StandardCopyOption.REPLACE_EXISTING);
        }
        return tmp;
    }
}

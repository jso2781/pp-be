package kr.or.kids.domain.pp.anyid;

import org.springframework.core.env.Environment;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Component;

@Component
public class AnyIdProfilePaths {

    private final Environment environment;

    public AnyIdProfilePaths(Environment environment) {
        this.environment = environment;
    }

    public String frontConfigPath(String contextPath) {
        String normalizedContextPath = "/".equalsIgnoreCase(contextPath) ? "" : contextPath;
        return normalizedContextPath + "/config/" + configDirName() + "/config.anyidc.json";
    }

    public String classpathLocation(String relativePath) {
        String profileScopedPath = "config/" + configDirName() + "/" + relativePath;
        if (new ClassPathResource(profileScopedPath).exists()) {
            return profileScopedPath;
        }
        return "config/" + relativePath;
    }

    public String configDirName() {
        for (String activeProfile : environment.getActiveProfiles()) {
            String mapped = mapProfile(activeProfile);
            if (mapped != null) {
                return mapped;
            }
        }

        String configuredProfile = environment.getProperty("spring.profiles.active");
        String mapped = mapProfile(configuredProfile);
        return mapped != null ? mapped : "local";
    }

    private String mapProfile(String profile) {
        if (profile == null || profile.isBlank()) {
            return null;
        }

        return switch (profile.trim().toLowerCase()) {
            case "local", "localout", "development" -> "local";
            case "dev", "stg", "stage", "staging" -> "dev";
            case "prod", "production" -> "prod";
            default -> null;
        };
    }
}

package kr.or.kids.global.config;

import org.springframework.boot.context.properties.ConfigurationProperties;

import lombok.Data;

/**
 * 파일 Configuration Properties Bean
 */
@Data
@ConfigurationProperties(prefix =  "file")
public class FileProperties {
    private String storePath;
    private String url;

}

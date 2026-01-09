package kr.go.kids;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

import kr.go.kids.global.config.FileProperties;

@SpringBootApplication
@EnableConfigurationProperties(FileProperties.class)
public class KidsApplication {

	public static void main(String[] args) {
		SpringApplication.run(KidsApplication.class, args);
	}
 
}

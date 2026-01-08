package kr.go.kids.domain.pp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

import kr.go.kids.domain.pp.global.config.FileProperties;

@SpringBootApplication
@EnableConfigurationProperties(FileProperties.class)
public class KidsPpApplication {

	public static void main(String[] args) {
		SpringApplication.run(KidsPpApplication.class, args);
	}

}

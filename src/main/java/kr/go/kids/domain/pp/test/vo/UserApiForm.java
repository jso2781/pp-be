package kr.go.kids.domain.pp.test.vo;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import io.swagger.v3.oas.annotations.media.Schema;

public class UserApiForm {

    @Schema(description = "Name", example = "JOSEONGOK")
    @NotBlank // 메시지는 핸들러에서 “라벨 포함 자연어”로 최종 구성
    @Size(min = 2, max = 20)
    private String name;

    @Schema(description = "Email", example = "jso2781@hanmail.net")
    @NotBlank
    @Email
    private String email;

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
}
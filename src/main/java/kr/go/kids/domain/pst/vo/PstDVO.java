package kr.go.kids.domain.pst.vo;

import java.math.BigInteger;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema.RequiredMode;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "대국민포털_게시물기본", description = "대국민포털_게시물기본 Delete Parameter VO")
public class PstDVO {
	/**
	 * 게시물일련번호
	 */
	@Schema(requiredMode = RequiredMode.REQUIRED, description = "게시물일련번호", type = "BigInteger")
	private BigInteger pstSn;
}
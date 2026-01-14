package kr.go.kids.domain.main.vo;

import java.math.BigInteger;
import java.util.List;

import io.swagger.v3.oas.annotations.media.Schema;
import kr.go.kids.domain.atch.vo.AtchRVO;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "대국민포털_메인화면", description = "대국민포털_메인화면 컨텐츠 Result VO")
public class MainRVO {

    /**
     * 게시물일련번호
     */
    @Schema(description = "게시물일련번호", type = "BigInteger")
    private BigInteger pstSn;

    /**
     * 첨부파일 목록
     */
    @Schema(description = "첨부파일 목록", type = "AtchRVO")
    private List<AtchRVO> atchRVOs;

}
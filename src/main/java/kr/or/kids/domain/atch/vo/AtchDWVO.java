package kr.or.kids.domain.atch.vo;

import org.springframework.core.io.Resource;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Builder;
import lombok.Getter;

@Builder
@Getter
@Schema(name = "공통_첨부파일기본", description = "공통_첨부파일기본 File Download Parameter VO")
public class AtchDWVO {

    /** 첨부파일ID */
    private String atchFileId;

    /** 파일명 */
    private String filename;

    /** 컨텐츠 타입 */
    private String contentType;

    /** 컨텐츠 길이 */
    private long contentLength;

    /** 파일 리소스 */
    private Resource resource;
}
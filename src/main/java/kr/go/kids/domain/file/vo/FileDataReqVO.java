package kr.go.kids.domain.file.vo;

import lombok.Data;

@Data
public class FileDataReqVO {
    private Integer atchFileDtlSn;  // 파일정보 일련버호
    private String strgFileNm;      // 파일 인코딩명

}
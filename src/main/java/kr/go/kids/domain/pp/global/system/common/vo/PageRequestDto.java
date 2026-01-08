package kr.go.kids.domain.pp.global.system.common.vo;

import lombok.Data;

@Data
public class PageRequestDto {

    private int pageNum = 1;
    private int pageSize = 10;

}

package kr.go.kids.domain.pp.global.system.common.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.HashMap;

import kr.go.kids.domain.pp.global.system.common.ApiResultCode;

@Getter
@Setter
@ToString
public class ApiPrnDto {

    private String code;
    private String msg;
    private HashMap<String, Object> data = new HashMap<>();

    public ApiPrnDto(ApiResultCode resultCode) {
        this.code = resultCode.getCode();
        this.msg = resultCode.getMessage();
    }

    public static ApiPrnDto success(HashMap<String, Object> bizData) {
        ApiPrnDto dto = new ApiPrnDto(ApiResultCode.SUCCESS);
        dto.setData(bizData);
        return dto;
    }

    public static ApiPrnDto fail(ApiResultCode resultCode) {
        return new ApiPrnDto(resultCode);
    }

}

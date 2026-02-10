package kr.go.kids.domain.dur.mapper.typehandler;

import java.util.List;

import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;

import com.fasterxml.jackson.core.type.TypeReference;

import kr.go.kids.domain.dur.vo.DurSearchRoomRVO;
import kr.go.kids.global.mybatis.typehandler.JsonListTypeHandler;

// nursw_json_array
@MappedTypes({List.class})
@MappedJdbcTypes(JdbcType.OTHER) // PostgreSQL json/jsonb는 보통 OTHER로 들어옴
public class NurswJsonArrayTypeHandler extends JsonListTypeHandler<DurSearchRoomRVO.NurswItem> {
    public NurswJsonArrayTypeHandler() {
        super(new TypeReference<List<DurSearchRoomRVO.NurswItem>>() {});
    }
}
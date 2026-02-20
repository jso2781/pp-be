package kr.or.kids.domain.pp.dur.mapper.typehandler;

import java.util.List;

import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;

import com.fasterxml.jackson.core.type.TypeReference;

import kr.or.kids.domain.pp.dur.vo.DurSearchRoomRVO;
import kr.or.kids.global.mybatis.typehandler.JsonListTypeHandler;

// prgnt_json_array
@MappedTypes({List.class})
@MappedJdbcTypes(JdbcType.OTHER) // PostgreSQL json/jsonb는 보통 OTHER로 들어옴
public class PrgntJsonArrayTypeHandler extends JsonListTypeHandler<DurSearchRoomRVO.PrgntItem> {
    public PrgntJsonArrayTypeHandler() {
        super(new TypeReference<List<DurSearchRoomRVO.PrgntItem>>() {});
    }
}
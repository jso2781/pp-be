package kr.or.kids.domain.pp.search.mapper.typehandler;

import java.util.List;

import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;

import com.fasterxml.jackson.core.type.TypeReference;

import kr.or.kids.domain.pp.search.vo.IntegratedSearchRVO;
import kr.or.kids.global.mybatis.typehandler.JsonListTypeHandler;

// main_task_json_array
@MappedTypes({List.class})
@MappedJdbcTypes(JdbcType.OTHER) // PostgreSQL json/jsonb는 보통 OTHER로 들어옴
public class MainTaskJsonArrayTypeHandler extends JsonListTypeHandler<IntegratedSearchRVO.SearchItem> {
    public MainTaskJsonArrayTypeHandler() {
        super(new TypeReference<List<IntegratedSearchRVO.SearchItem>>() {});
    }
}
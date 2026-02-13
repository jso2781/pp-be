package kr.go.kids.domain.mbr.mapper.typehandler;

import java.util.List;

import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;

import com.fasterxml.jackson.core.type.TypeReference;

import kr.go.kids.domain.mbr.vo.MbrInfoRVO;
import kr.go.kids.global.mybatis.typehandler.JsonListTypeHandler;

// appr_inst_task_json_array
@MappedTypes({List.class})
@MappedJdbcTypes(JdbcType.OTHER) // PostgreSQL json/jsonb는 보통 OTHER로 들어옴
public class ApprInstTaskJsonArrayTypeHandler extends JsonListTypeHandler<MbrInfoRVO.InstTaskItem> {
    public ApprInstTaskJsonArrayTypeHandler() {
        super(new TypeReference<List<MbrInfoRVO.InstTaskItem>>() {});
    }
}

package kr.go.kids.domain.connecionlog.mapper;

import kr.go.kids.domain.connecionlog.vo.ConnectionLogInsertReqVO;
import kr.go.kids.domain.connecionlogdetail.vo.ConnectionLogDetailInsertVO;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ConnectionLogDetailMapper {

    /**  접속 로그 상세  일련번호 조회 */
    public long nextConnecttionDetailId();

    /**  접속 로그 정보 단건 등록 */
    public int insert(ConnectionLogDetailInsertVO param);

}

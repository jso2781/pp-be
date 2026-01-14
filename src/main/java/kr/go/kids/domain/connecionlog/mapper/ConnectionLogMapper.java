package kr.go.kids.domain.connecionlog.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.connecionlog.vo.ConnectionLogInsertReqVO;

@Mapper
public interface ConnectionLogMapper {

    /**  접속 로그  마지막 ID 조회 */
    public long getLastId();
    /**  접속 로그 일련번호 조회 */
    public long nextConnectionLogReq();
    /**  접속 로그 정보 단건 등록 */
    public int insert(ConnectionLogInsertReqVO param);

}

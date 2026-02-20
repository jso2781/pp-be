package kr.or.kids.domain.pp.connecionlog.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.or.kids.domain.pp.connecionlog.vo.ConnectionLogInsertReqVO;
import kr.or.kids.domain.pp.connecionlogdetail.vo.ConnectionLogDetailInsertVO;

@Mapper
public interface ConnectionLogDetailMapper {

    /**  접속 로그 상세  일련번호 조회 */
    public long nextConnecttionDetailId();

    /**  접속 로그 정보 단건 등록 */
    public int insert(ConnectionLogDetailInsertVO param);

}

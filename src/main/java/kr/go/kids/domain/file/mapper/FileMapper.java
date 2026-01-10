package kr.go.kids.domain.file.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.go.kids.domain.file.vo.*;

import java.util.List;

@Mapper
public interface FileMapper {

    /**  파일 목록 조회 */
    public List<FileDataResVO> list();
    /**  파일 단건 조회 */
    public FileDataResVO data(FileDataReqVO param);
    /**  파일 일련번호 조회 */
    public long nextFileId();
    /**  파일 파일정보 등록 */
    public int insert(FileInsertReqVO param);
    /**  파일 단건 수정 */
    public int update(FileInsertReqVO param);
    /**  파일 파일 삭제 */
    public int delete(FileDeleteReqVO param);
    /**  파일 그룹  일련번호 조회 */
    public long nextFileGroupId();
    /**  파일 그룹  정보 등록 */
    public void groupInsert(FileGroupInsertReq param);
}

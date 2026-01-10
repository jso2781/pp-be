package kr.go.kids.domain.notice.vo;

import java.math.BigInteger;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Schema(name = "대국민포털_게시물기본", description = "대국민포털_게시물기본 Search Result VO")
public class PstRVO {
	/**
	 * 게시물일련번호
	 */
	@Schema(description = "게시물일련번호", type = "BigInteger")
	private BigInteger pstSn;

	/**
	 * 게시판아이디
	 */
	@Schema(description = "게시판아이디", type = "String")
	private String bbsId;

	/**
	 * 게시물제목
	 */
	@Schema(description = "게시물제목", type = "String")
	private String pstTtl;

	/**
	 * 게시물내용
	 */
	@Schema(description = "게시물내용", type = "String")
	private String pstCn;

	/**
	 * 게시물조회수
	 */
	@Schema(description = "게시물조회수", type = "Long")
	private Long pstInqCnt;

	/**
	 * 게시물공공누리저작권유형코드
	 */
	@Schema(description = "게시물공공누리저작권유형코드", type = "String")
	private String pstKoglCprgtTypeCd;

	/**
	 * 첨부파일아이디
	 */
	@Schema(description = "첨부파일아이디", type = "String")
	private String atchFileId;

	/**
	 * 썸네일아이디
	 */
	@Schema(description = "썸네일아이디", type = "String")
	private String thmbId;

	/**
	 * 공지여부
	 */
	@Schema(description = "공지여부", type = "String")
	private String ntcYn;

	/**
	 * 삭제여부
	 */
	@Schema(description = "삭제여부", type = "String")
	private String delYn;

	/**
	 * 작성자부서명
	 */
	@Schema(description = "작성자부서명", type = "String")
	private String wrtrDeptNm;

	/**
	 * 수정자부서명
	 */
	@Schema(description = "수정자부서명", type = "String")
	private String mdfrDeptNm;

	/**
	 * 등록자아이디
	 */
	@Schema(description = "등록자아이디", type = "String")
	private String rgtrId;

	/**
	 * 등록일시
	 */
	@Schema(description = "등록일시", type = "String")
	private String regDt;

	/**
	 * 등록프로그램아이디
	 */
	@Schema(description = "등록프로그램아이디", type = "String")
	private String regPrgrmId;

	/**
	 * 수정자아이디
	 */
	@Schema(description = "수정자아이디", type = "String")
	private String mdfrId;

	/**
	 * 수정일시
	 */
	@Schema(description = "수정일시", type = "String")
	private String mdfcnDt;

	/**
	 * 수정프로그램아이디
	 */
	@Schema(description = "수정프로그램아이디", type = "String")
	private String mdfcnPrgrmId;

	/**
	 * 조회수 증가
	 */
	public void increaseInqCnt() {
		this.pstInqCnt++;
	}
}
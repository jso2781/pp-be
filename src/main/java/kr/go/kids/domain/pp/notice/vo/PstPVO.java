package kr.go.kids.domain.pp.notice.vo;

import java.math.BigInteger;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(name = "대국민포털_게시물기본", description = "대국민포털_게시물기본 Search Parameter VO")
public class PstPVO
{
    /**
     * 게시판아이디
     */
    @Schema(description = "게시판아이디", type = "String")
    private String bbsId;	
	
    /**
     * 게시물일련번호
     */
    @Schema(description = "게시물일련번호", type = "BigInteger")
    private BigInteger pstSn;
	
    /**
     * 검색조건
     */
    @Schema(description = "검색구분", type = "String")
    private String searchCnd;

    /**
     * 검색어
     */
    @Schema(description = "검색어", type = "String")
    private String searchWrd;

	public BigInteger getPstSn() {
		return pstSn;
	}
	public String getBbsId() {
		return bbsId;
	}
	public void setBbsId(String bbsId) {
		this.bbsId = bbsId;
	}
	public void setPstSn(BigInteger pstSn) {
		this.pstSn = pstSn;
	}
	public String getSearchCnd() {
		return searchCnd;
	}
	public void setSearchCnd(String searchCnd) {
		this.searchCnd = searchCnd;
	}

	public String getSearchWrd() {
		return searchWrd;
	}
	public void setSearchWrd(String searchWrd) {
		this.searchWrd = searchWrd;
	}
}
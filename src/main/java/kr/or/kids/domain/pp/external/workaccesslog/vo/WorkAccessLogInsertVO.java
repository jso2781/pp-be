package kr.or.kids.domain.pp.external.workaccesslog.vo;

import java.sql.Timestamp;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Data
@Schema(name = "업무별 접속 이력 입력 파라메터 VO", description = "업무별 접속 이력 입력 파라메터 VO 입니다.")
public class WorkAccessLogInsertVO{
    /**
     * 메뉴이용일련번호(사용안함. 자동발번)
     */
    @Schema(description = "메뉴이용일련번호", type = "Long")
    private Long menuUtztnSn;

    /**
     * 세션로그일련번호(사용안함. 로그인된 사용자의 세션로그일련번호(tb_ca_l_sesn_log_info_mng.sess_log_sn) 번호를 찾아서 자동 대입)
     */
    @Schema(description = "세션로그일련번호", type = "Long")
    private Long sessLogSn;

    /**
     * 입력일시
     */
    @Schema(description = "입력일시", type = "Timestamp")
    private Timestamp inptDt;

    /**
     * 메뉴아이디
     */
    @Schema(description = "메뉴아이디", type = "String")
    private String menuId;

    /**
     * URL주소
     */
    @Schema(description = "URL주소", type = "String")
    private String urlAddr;

    /**
     * 업무구분코드번호(PP,CA,CDM,..)
     */
    @Schema(description = "업무구분코드번호(PP,CA,CDM,..)", type = "String")
    private String taskSeCdNo;

    /**
     * 접속일시(입력시 now()로 대체 적용, 사용안함.)
     */
    @Schema(description = "접속일시(입력시 now()로 대체 적용, 사용안함.)", type = "Timestamp")
    private Timestamp cntnDt;

    /**
     * 접속자명
     */
    @Schema(description = "접속자명", type = "String")
    private String acsrNm;

    /**
     * 요청자아이디
     */
    @Schema(description = "요청자아이디", type = "String")
    private String rqstrId;            // 요청자아이디

    /**
     * 수행업무코드(tb_ca_c_group_code의 com_group_cd = 'CA0003' 의 코드값)
     *
     * 공통상세코드  공통그룹코드      공통상세코드명     자릿수     정렬순서
     * com_dtl_cd  com_group_cd    com_dtl_cd_nm   dgt     sort_seq
     * 1           CA0003          조회              1       1
     * 2           CA0003          생성              1       2
     * 3           CA0003          수정              1       3
     * 4           CA0003          삭제              1       4
     * 5           CA0003          인쇄              1       5
     * 6           CA0003          저장              1       6
     * 7           CA0003          다운로드           1       7
     */
    @Schema(description = "수행업무코드(tb_ca_c_group_code의 com_group_cd = 'CA0003' 의 코드값)", type = "String")
    private String flfmtTaskCd;

    /**
     * 기타메모내용
     */
    @Schema(description = "기타메모내용", type = "String")
    private String etcMemoCn;          // 

    /**
     * 개인정보포함여부(Y/N)
     */
    @Schema(description = "개인정보포함여부(Y/N)", type = "String")
    private String prvcInclYn;

    /**
     * 등록일시(입력시 now()로 대체 적용, 사용안함.)
     */
    @Schema(description = "등록일시", type = "Timestamp")
    private Timestamp regDt;

    /**
     * 등록자아이디
     */
    @Schema(description = "등록자아이디", type = "String")
    private String rgtrId;

    /**
     * 수정자아이디
     */
    @Schema(description = "수정자아이디", type = "String")
    private String mdfrId;
}

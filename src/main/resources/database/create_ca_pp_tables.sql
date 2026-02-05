-- kids_own.tb_ca_addr definition

-- Drop table

-- DROP TABLE kids_own.tb_ca_addr;

CREATE TABLE kids_own.tb_ca_addr (
	zip bpchar(5) NOT NULL, -- 우편번호
	ctpv_nm varchar(300) NULL, -- 시도명
	sgg_nm varchar(200) NULL, -- 시군구명
	emd_nm varchar(300) NULL, -- 읍면동명
	road_nm_cd varchar(20) NULL, -- 도로명코드
	road_nm varchar(300) NULL, -- 도로명
	bno_mno numeric(4) NULL, -- 건물번호본번
	bno_sno numeric(4) NULL, -- 건물번호부번
	bldg_nm varchar(300) NULL, -- 건물명
	dtl_bldg_nm varchar(300) NULL, -- 상세건물명
	lotno_no_vl varchar(40) NULL, -- 지번번호값
	lotno_mno numeric(4) NULL, -- 지번본번
	lotno_sno numeric(4) NULL, -- 지번부번
	reg_dt timestamp NOT NULL, -- 등록일시
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	CONSTRAINT pk_tb_ca_addr PRIMARY KEY (zip)
);
COMMENT ON TABLE kids_own.tb_ca_addr IS '공통_우편번호기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_ca_addr.zip IS '우편번호';
COMMENT ON COLUMN kids_own.tb_ca_addr.ctpv_nm IS '시도명';
COMMENT ON COLUMN kids_own.tb_ca_addr.sgg_nm IS '시군구명';
COMMENT ON COLUMN kids_own.tb_ca_addr.emd_nm IS '읍면동명';
COMMENT ON COLUMN kids_own.tb_ca_addr.road_nm_cd IS '도로명코드';
COMMENT ON COLUMN kids_own.tb_ca_addr.road_nm IS '도로명';
COMMENT ON COLUMN kids_own.tb_ca_addr.bno_mno IS '건물번호본번';
COMMENT ON COLUMN kids_own.tb_ca_addr.bno_sno IS '건물번호부번';
COMMENT ON COLUMN kids_own.tb_ca_addr.bldg_nm IS '건물명';
COMMENT ON COLUMN kids_own.tb_ca_addr.dtl_bldg_nm IS '상세건물명';
COMMENT ON COLUMN kids_own.tb_ca_addr.lotno_no_vl IS '지번번호값';
COMMENT ON COLUMN kids_own.tb_ca_addr.lotno_mno IS '지번본번';
COMMENT ON COLUMN kids_own.tb_ca_addr.lotno_sno IS '지번부번';
COMMENT ON COLUMN kids_own.tb_ca_addr.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_ca_addr.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_ca_addr.mdfcn_dt IS '수정일시';
COMMENT ON COLUMN kids_own.tb_ca_addr.mdfr_id IS '수정자아이디';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_ca_addr ON kids_own.tb_ca_addr IS '공통_우편번호기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_ca_addr OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_ca_addr TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_addr TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_addr TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_addr TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_addr TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_addr TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_addr TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_addr TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_addr TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_addr TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_addr TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_addr TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_addr TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_addr TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_addr TO ca_dev;


-- kids_own.tb_ca_c_dtl_code definition

-- Drop table

-- DROP TABLE kids_own.tb_ca_c_dtl_code;

CREATE TABLE kids_own.tb_ca_c_dtl_code (
	com_dtl_cd varchar(20) NOT NULL, -- 공통상세코드
	com_group_cd varchar(20) NOT NULL, -- 공통그룹코드
	com_dtl_cd_nm varchar(80) NULL, -- 공통상세코드명
	dgt numeric(10) NULL, -- 자릿수
	sort_seq numeric(10) NULL, -- 정렬순서
	rsvt_cn_1 text NULL, -- 예약내용_1
	rsvt_cn_2 text NULL, -- 예약내용_2
	rsvt_cn_3 text NULL, -- 예약내용_3
	rsvt_cn_4 text NULL, -- 예약내용_4
	rsvt_cn_5 text NULL, -- 예약내용_5
	rsvt_cn_6 text NULL, -- 예약내용_6
	rsvt_cn_7 text NULL, -- 예약내용_7
	rsvt_cn_8 text NULL, -- 예약내용_8
	rsvt_cn_9 text NULL, -- 예약내용_9
	rsvt_cn_10 text NULL, -- 예약내용_10
	use_yn bpchar(1) NULL, -- 사용여부
	reg_dt timestamp NOT NULL, -- 등록일시
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	CONSTRAINT pk_tb_ca_c_dtl_code PRIMARY KEY (com_dtl_cd, com_group_cd)
);
COMMENT ON TABLE kids_own.tb_ca_c_dtl_code IS '공통_상세코드';

-- Column comments

COMMENT ON COLUMN kids_own.tb_ca_c_dtl_code.com_dtl_cd IS '공통상세코드';
COMMENT ON COLUMN kids_own.tb_ca_c_dtl_code.com_group_cd IS '공통그룹코드';
COMMENT ON COLUMN kids_own.tb_ca_c_dtl_code.com_dtl_cd_nm IS '공통상세코드명';
COMMENT ON COLUMN kids_own.tb_ca_c_dtl_code.dgt IS '자릿수';
COMMENT ON COLUMN kids_own.tb_ca_c_dtl_code.sort_seq IS '정렬순서';
COMMENT ON COLUMN kids_own.tb_ca_c_dtl_code.rsvt_cn_1 IS '예약내용_1';
COMMENT ON COLUMN kids_own.tb_ca_c_dtl_code.rsvt_cn_2 IS '예약내용_2';
COMMENT ON COLUMN kids_own.tb_ca_c_dtl_code.rsvt_cn_3 IS '예약내용_3';
COMMENT ON COLUMN kids_own.tb_ca_c_dtl_code.rsvt_cn_4 IS '예약내용_4';
COMMENT ON COLUMN kids_own.tb_ca_c_dtl_code.rsvt_cn_5 IS '예약내용_5';
COMMENT ON COLUMN kids_own.tb_ca_c_dtl_code.rsvt_cn_6 IS '예약내용_6';
COMMENT ON COLUMN kids_own.tb_ca_c_dtl_code.rsvt_cn_7 IS '예약내용_7';
COMMENT ON COLUMN kids_own.tb_ca_c_dtl_code.rsvt_cn_8 IS '예약내용_8';
COMMENT ON COLUMN kids_own.tb_ca_c_dtl_code.rsvt_cn_9 IS '예약내용_9';
COMMENT ON COLUMN kids_own.tb_ca_c_dtl_code.rsvt_cn_10 IS '예약내용_10';
COMMENT ON COLUMN kids_own.tb_ca_c_dtl_code.use_yn IS '사용여부';
COMMENT ON COLUMN kids_own.tb_ca_c_dtl_code.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_ca_c_dtl_code.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_ca_c_dtl_code.mdfcn_dt IS '수정일시';
COMMENT ON COLUMN kids_own.tb_ca_c_dtl_code.mdfr_id IS '수정자아이디';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_ca_c_dtl_code ON kids_own.tb_ca_c_dtl_code IS '공통_상세코드 기본키';

-- Permissions

ALTER TABLE kids_own.tb_ca_c_dtl_code OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_ca_c_dtl_code TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_dtl_code TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_dtl_code TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_dtl_code TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_dtl_code TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_dtl_code TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_dtl_code TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_dtl_code TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_dtl_code TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_dtl_code TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_dtl_code TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_dtl_code TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_dtl_code TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_dtl_code TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_dtl_code TO ca_dev;


-- kids_own.tb_ca_c_group_code definition

-- Drop table

-- DROP TABLE kids_own.tb_ca_c_group_code;

CREATE TABLE kids_own.tb_ca_c_group_code (
	com_group_cd varchar(20) NOT NULL, -- 공통그룹코드
	group_cd_nm varchar(80) NOT NULL, -- 그룹코드명
	group_cd_expln varchar(300) NOT NULL, -- 그룹코드설명
	group_cd_abbr_nm varchar(40) NULL, -- 그룹코드약어명
	group_cd_rsvt_cn_1 text NULL, -- 그룹코드예약내용_1
	group_cd_rsvt_cn_2 text NULL, -- 그룹코드예약내용_2
	group_cd_rsvt_cn_3 text NULL, -- 그룹코드예약내용_3
	group_cd_rsvt_cn_4 text NULL, -- 그룹코드예약내용_4
	group_cd_rsvt_cn_5 text NULL, -- 그룹코드예약내용_5
	reg_dt timestamp NOT NULL, -- 등록일시
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	CONSTRAINT pk_tb_ca_c_group_code PRIMARY KEY (com_group_cd)
);
COMMENT ON TABLE kids_own.tb_ca_c_group_code IS '공통_그룹코드';

-- Column comments

COMMENT ON COLUMN kids_own.tb_ca_c_group_code.com_group_cd IS '공통그룹코드';
COMMENT ON COLUMN kids_own.tb_ca_c_group_code.group_cd_nm IS '그룹코드명';
COMMENT ON COLUMN kids_own.tb_ca_c_group_code.group_cd_expln IS '그룹코드설명';
COMMENT ON COLUMN kids_own.tb_ca_c_group_code.group_cd_abbr_nm IS '그룹코드약어명';
COMMENT ON COLUMN kids_own.tb_ca_c_group_code.group_cd_rsvt_cn_1 IS '그룹코드예약내용_1';
COMMENT ON COLUMN kids_own.tb_ca_c_group_code.group_cd_rsvt_cn_2 IS '그룹코드예약내용_2';
COMMENT ON COLUMN kids_own.tb_ca_c_group_code.group_cd_rsvt_cn_3 IS '그룹코드예약내용_3';
COMMENT ON COLUMN kids_own.tb_ca_c_group_code.group_cd_rsvt_cn_4 IS '그룹코드예약내용_4';
COMMENT ON COLUMN kids_own.tb_ca_c_group_code.group_cd_rsvt_cn_5 IS '그룹코드예약내용_5';
COMMENT ON COLUMN kids_own.tb_ca_c_group_code.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_ca_c_group_code.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_ca_c_group_code.mdfcn_dt IS '수정일시';
COMMENT ON COLUMN kids_own.tb_ca_c_group_code.mdfr_id IS '수정자아이디';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_ca_c_group_code ON kids_own.tb_ca_c_group_code IS '공통_그룹코드 기본키';

-- Permissions

ALTER TABLE kids_own.tb_ca_c_group_code OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_ca_c_group_code TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_group_code TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_group_code TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_group_code TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_group_code TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_group_code TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_group_code TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_group_code TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_group_code TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_group_code TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_group_code TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_group_code TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_group_code TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_group_code TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_c_group_code TO ca_dev;


-- kids_own.tb_ca_e_cert definition

-- Drop table

-- DROP TABLE kids_own.tb_ca_e_cert;

CREATE TABLE kids_own.tb_ca_e_cert (
	cert_dmnd_no varchar(64) NOT NULL, -- 인증요청번호
	link_info_idntf_id varchar(100) NOT NULL, -- 연계정보식별아이디
	intg_cert_sn numeric(22) NOT NULL, -- 통합인증일련번호
	anyid_unq_vl varchar(100) NULL, -- ANY아이디고유값
	user_crtf_vl varchar(100) NULL, -- 사용자인증서값
	user_cnpl_no varchar(20) NULL, -- 사용자연락처번호
	user_dompl_se_cd bpchar(1) NULL, -- 사용자내국인구분코드
	user_rrno varchar(20) NULL, -- 사용자주민등록번호
	user_gndr_cd bpchar(1) NULL, -- 사용자성별코드
	user_flnm varchar(20) NULL, -- 사용자성명
	user_brdt bpchar(8) NULL, -- 사용자생년월일
	cert_token_vl varchar(40) NOT NULL, -- 인증토큰값
	cert_scs_yn bpchar(1) NULL, -- 인증성공여부
	cert_dmnd_dt timestamp NOT NULL, -- 인증요청일시
	cert_rslt_se_cd varchar(10) NULL, -- 인증결과구분코드
	cert_rspns_cd varchar(10) NOT NULL, -- 인증응답코드
	cert_rspns_msg_cn varchar(1000) NULL, -- 인증응답메시지내용
	rqstr_ip_addr varchar(255) NOT NULL, -- 요청자IP주소
	prcs_stts_cd varchar(10) NULL, -- 처리상태코드
	prcs_stts_nm varchar(20) NULL, -- 처리상태명
	rslt_vl varchar(4000) NULL, -- 결과값
	reg_dt timestamp NOT NULL, -- 등록일시
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	CONSTRAINT pk_tb_ca_e_cert PRIMARY KEY (cert_dmnd_no, link_info_idntf_id, intg_cert_sn)
);
COMMENT ON TABLE kids_own.tb_ca_e_cert IS '공통_인증결과';

-- Column comments

COMMENT ON COLUMN kids_own.tb_ca_e_cert.cert_dmnd_no IS '인증요청번호';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.link_info_idntf_id IS '연계정보식별아이디';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.intg_cert_sn IS '통합인증일련번호';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.anyid_unq_vl IS 'ANY아이디고유값';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.user_crtf_vl IS '사용자인증서값';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.user_cnpl_no IS '사용자연락처번호';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.user_dompl_se_cd IS '사용자내국인구분코드';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.user_rrno IS '사용자주민등록번호';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.user_gndr_cd IS '사용자성별코드';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.user_flnm IS '사용자성명';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.user_brdt IS '사용자생년월일';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.cert_token_vl IS '인증토큰값';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.cert_scs_yn IS '인증성공여부';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.cert_dmnd_dt IS '인증요청일시';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.cert_rslt_se_cd IS '인증결과구분코드';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.cert_rspns_cd IS '인증응답코드';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.cert_rspns_msg_cn IS '인증응답메시지내용';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.rqstr_ip_addr IS '요청자IP주소';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.prcs_stts_cd IS '처리상태코드';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.prcs_stts_nm IS '처리상태명';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.rslt_vl IS '결과값';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.mdfcn_dt IS '수정일시';
COMMENT ON COLUMN kids_own.tb_ca_e_cert.mdfr_id IS '수정자아이디';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_ca_e_cert ON kids_own.tb_ca_e_cert IS '공통_인증결과 기본키';

-- Permissions

ALTER TABLE kids_own.tb_ca_e_cert OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_ca_e_cert TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_cert TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_cert TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_cert TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_cert TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_cert TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_cert TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_cert TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_cert TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_cert TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_cert TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_cert TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_cert TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_cert TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_cert TO ca_dev;


-- kids_own.tb_ca_e_doc_otpt definition

-- Drop table

-- DROP TABLE kids_own.tb_ca_e_doc_otpt;

CREATE TABLE kids_own.tb_ca_e_doc_otpt (
	otpt_sn numeric(22) NOT NULL, -- 출력일련번호
	prnot_id varchar(20) NOT NULL, -- 출력물아이디
	rqstr_id varchar(40) NOT NULL, -- 요청자아이디
	ognz_cd varchar(20) NULL, -- 조직코드
	elsgn varchar(20) NULL, -- 전자서명
	img_nm varchar(100) NULL, -- 이미지명
	img_extn_nm varchar(100) NULL, -- 이미지확장자명
	otpt_dt bpchar(14) NULL, -- 출력일시
	reg_dt timestamp NOT NULL, -- 등록일시
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	CONSTRAINT pk_tb_ca_e_doc_otpt PRIMARY KEY (otpt_sn)
);
COMMENT ON TABLE kids_own.tb_ca_e_doc_otpt IS '공통_문서출력내역';

-- Column comments

COMMENT ON COLUMN kids_own.tb_ca_e_doc_otpt.otpt_sn IS '출력일련번호';
COMMENT ON COLUMN kids_own.tb_ca_e_doc_otpt.prnot_id IS '출력물아이디';
COMMENT ON COLUMN kids_own.tb_ca_e_doc_otpt.rqstr_id IS '요청자아이디';
COMMENT ON COLUMN kids_own.tb_ca_e_doc_otpt.ognz_cd IS '조직코드';
COMMENT ON COLUMN kids_own.tb_ca_e_doc_otpt.elsgn IS '전자서명';
COMMENT ON COLUMN kids_own.tb_ca_e_doc_otpt.img_nm IS '이미지명';
COMMENT ON COLUMN kids_own.tb_ca_e_doc_otpt.img_extn_nm IS '이미지확장자명';
COMMENT ON COLUMN kids_own.tb_ca_e_doc_otpt.otpt_dt IS '출력일시';
COMMENT ON COLUMN kids_own.tb_ca_e_doc_otpt.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_ca_e_doc_otpt.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_ca_e_doc_otpt.mdfcn_dt IS '수정일시';
COMMENT ON COLUMN kids_own.tb_ca_e_doc_otpt.mdfr_id IS '수정자아이디';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_ca_e_doc_otpt ON kids_own.tb_ca_e_doc_otpt IS '공통_문서출력내역 기본키';

-- Permissions

ALTER TABLE kids_own.tb_ca_e_doc_otpt OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_ca_e_doc_otpt TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_doc_otpt TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_doc_otpt TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_doc_otpt TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_doc_otpt TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_doc_otpt TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_doc_otpt TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_doc_otpt TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_doc_otpt TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_doc_otpt TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_doc_otpt TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_doc_otpt TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_doc_otpt TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_doc_otpt TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_doc_otpt TO ca_dev;


-- kids_own.tb_ca_e_file_group_trsm definition

-- Drop table

-- DROP TABLE kids_own.tb_ca_e_file_group_trsm;

CREATE TABLE kids_own.tb_ca_e_file_group_trsm (
	atch_file_group_id varchar(40) NOT NULL, -- 첨부파일그룹아이디
	task_se_cd varchar(10) NULL, -- 업무구분코드
	task_se_trgt_id varchar(40) NULL, -- 업무구분대상아이디
	use_yn bpchar(1) NULL, -- 사용여부
	reg_dt timestamp NOT NULL, -- 등록일시
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	CONSTRAINT pk_tb_ca_e_file_group_trsm PRIMARY KEY (atch_file_group_id)
);
COMMENT ON TABLE kids_own.tb_ca_e_file_group_trsm IS '공통_파일그룹전송내역';

-- Column comments

COMMENT ON COLUMN kids_own.tb_ca_e_file_group_trsm.atch_file_group_id IS '첨부파일그룹아이디';
COMMENT ON COLUMN kids_own.tb_ca_e_file_group_trsm.task_se_cd IS '업무구분코드';
COMMENT ON COLUMN kids_own.tb_ca_e_file_group_trsm.task_se_trgt_id IS '업무구분대상아이디';
COMMENT ON COLUMN kids_own.tb_ca_e_file_group_trsm.use_yn IS '사용여부';
COMMENT ON COLUMN kids_own.tb_ca_e_file_group_trsm.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_ca_e_file_group_trsm.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_ca_e_file_group_trsm.mdfcn_dt IS '수정일시';
COMMENT ON COLUMN kids_own.tb_ca_e_file_group_trsm.mdfr_id IS '수정자아이디';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_ca_e_file_group_trsm ON kids_own.tb_ca_e_file_group_trsm IS '공통_파일그룹전송내역 기본키';

-- Permissions

ALTER TABLE kids_own.tb_ca_e_file_group_trsm OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_ca_e_file_group_trsm TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_group_trsm TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_group_trsm TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_group_trsm TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_group_trsm TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_group_trsm TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_group_trsm TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_group_trsm TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_group_trsm TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_group_trsm TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_group_trsm TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_group_trsm TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_group_trsm TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_group_trsm TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_group_trsm TO ca_dev;


-- kids_own.tb_ca_e_file_trsm definition

-- Drop table

-- DROP TABLE kids_own.tb_ca_e_file_trsm;

CREATE TABLE kids_own.tb_ca_e_file_trsm (
	atch_file_id varchar(40) NOT NULL,
	atch_file_group_id varchar(40) NULL,
	file_seq numeric(10) NOT NULL,
	file_strg_path_dsctn varchar(1000) NULL,
	srvr_file_nm varchar(300) NULL,
	prvc_incl_yn bpchar(1) NULL,
	file_nm varchar(300) NULL,
	file_extn_nm varchar(20) NULL,
	file_cn text NULL,
	file_sz numeric(10) NULL,
	crt_dt bpchar(14) NULL,
	use_yn bpchar(1) NULL,
	reg_dt timestamp NOT NULL,
	rgtr_id varchar(40) NOT NULL,
	mdfcn_dt timestamp NOT NULL,
	mdfr_id varchar(40) NOT NULL,
	CONSTRAINT pk_tb_ca_e_file_trsm PRIMARY KEY (atch_file_id)
);

-- Permissions

ALTER TABLE kids_own.tb_ca_e_file_trsm OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_ca_e_file_trsm TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_trsm TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_trsm TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_trsm TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_trsm TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_trsm TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_trsm TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_trsm TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_trsm TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_trsm TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_trsm TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_trsm TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_trsm TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_trsm TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_e_file_trsm TO ca_dev;


-- kids_own.tb_ca_l_cntn_info_log definition

-- Drop table

-- DROP TABLE kids_own.tb_ca_l_cntn_info_log;

CREATE TABLE kids_own.tb_ca_l_cntn_info_log (
	prvc_hstry_sn numeric(22) NOT NULL, -- 개인정보이력일련번호
	task_sys_se_cd bpchar(2) NOT NULL, -- 업무시스템구분코드
	menu_sn numeric(22) NULL, -- 메뉴일련번호
	cntn_dt bpchar(14) NULL, -- 접속일시
	acsr_info_nm varchar(200) NULL, -- 접속자정보명
	qna_sql_cn text NULL, -- 질의응답SQL내용
	prcs_nocs numeric(10) NULL, -- 처리건수
	dwnld_yn bpchar(1) NULL, -- 다운로드여부
	dwnld_rsn text NULL, -- 다운로드사유
	flfmt_task_nm varchar(200) NULL, -- 수행업무명
	reg_dt timestamp NOT NULL, -- 등록일시
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	CONSTRAINT pk_tb_ca_l_cntn_info_log PRIMARY KEY (prvc_hstry_sn)
);
COMMENT ON TABLE kids_own.tb_ca_l_cntn_info_log IS '공통_개인정보이력';

-- Column comments

COMMENT ON COLUMN kids_own.tb_ca_l_cntn_info_log.prvc_hstry_sn IS '개인정보이력일련번호';
COMMENT ON COLUMN kids_own.tb_ca_l_cntn_info_log.task_sys_se_cd IS '업무시스템구분코드';
COMMENT ON COLUMN kids_own.tb_ca_l_cntn_info_log.menu_sn IS '메뉴일련번호';
COMMENT ON COLUMN kids_own.tb_ca_l_cntn_info_log.cntn_dt IS '접속일시';
COMMENT ON COLUMN kids_own.tb_ca_l_cntn_info_log.acsr_info_nm IS '접속자정보명';
COMMENT ON COLUMN kids_own.tb_ca_l_cntn_info_log.qna_sql_cn IS '질의응답SQL내용';
COMMENT ON COLUMN kids_own.tb_ca_l_cntn_info_log.prcs_nocs IS '처리건수';
COMMENT ON COLUMN kids_own.tb_ca_l_cntn_info_log.dwnld_yn IS '다운로드여부';
COMMENT ON COLUMN kids_own.tb_ca_l_cntn_info_log.dwnld_rsn IS '다운로드사유';
COMMENT ON COLUMN kids_own.tb_ca_l_cntn_info_log.flfmt_task_nm IS '수행업무명';
COMMENT ON COLUMN kids_own.tb_ca_l_cntn_info_log.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_ca_l_cntn_info_log.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_ca_l_cntn_info_log.mdfcn_dt IS '수정일시';
COMMENT ON COLUMN kids_own.tb_ca_l_cntn_info_log.mdfr_id IS '수정자아이디';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_ca_l_cntn_info_log ON kids_own.tb_ca_l_cntn_info_log IS '공통_개인정보이력 기본키';

-- Permissions

ALTER TABLE kids_own.tb_ca_l_cntn_info_log OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_ca_l_cntn_info_log TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_cntn_info_log TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_cntn_info_log TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_cntn_info_log TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_cntn_info_log TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_cntn_info_log TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_cntn_info_log TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_cntn_info_log TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_cntn_info_log TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_cntn_info_log TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_cntn_info_log TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_cntn_info_log TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_cntn_info_log TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_cntn_info_log TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_cntn_info_log TO ca_dev;


-- kids_own.tb_ca_l_sesn_log_info_mng definition

-- Drop table

-- DROP TABLE kids_own.tb_ca_l_sesn_log_info_mng;

CREATE TABLE kids_own.tb_ca_l_sesn_log_info_mng (
	sess_log_sn numeric(22) NOT NULL, -- 세션로그일련번호
	net_se_cd bpchar(1) NULL, -- 네트워크구분코드
	lgn_se_cd bpchar(1) NULL, -- 로그인구분코드
	srvc_user_id varchar(40) NULL, -- 서비스사용자아이디
	rqstr_ip_addr varchar(255) NOT NULL, -- 요청자IP주소
	cntn_se_no varchar(10) NULL, -- 접속구분번호
	cntn_ocrn_dt bpchar(14) NULL, -- 접속발생일시
	cntn_dtl_expln varchar(40) NULL, -- 접속상세설명
	cert_token_vl varchar(40) NOT NULL, -- 인증토큰값
	token_crt_hr bpchar(6) NULL, -- 토큰생성시간
	task_se_cd varchar(10) NOT NULL, -- 업무구분코드
	srvc_nm varchar(100) NULL, -- 서비스명
	flfmt_hr bpchar(6) NULL, -- 수행시간
	sess_expry_prnmnt_hr bpchar(6) NULL, -- 세션만료예정시간
	lgt_dt timestamp NULL, -- 로그아웃일시
	reg_dt timestamp NOT NULL, -- 등록일시
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	CONSTRAINT pk_tb_ca_l_sesn_log_info_mng PRIMARY KEY (sess_log_sn)
);
COMMENT ON TABLE kids_own.tb_ca_l_sesn_log_info_mng IS '공통_세션정보시스템로그';

-- Column comments

COMMENT ON COLUMN kids_own.tb_ca_l_sesn_log_info_mng.sess_log_sn IS '세션로그일련번호';
COMMENT ON COLUMN kids_own.tb_ca_l_sesn_log_info_mng.net_se_cd IS '네트워크구분코드';
COMMENT ON COLUMN kids_own.tb_ca_l_sesn_log_info_mng.lgn_se_cd IS '로그인구분코드';
COMMENT ON COLUMN kids_own.tb_ca_l_sesn_log_info_mng.srvc_user_id IS '서비스사용자아이디';
COMMENT ON COLUMN kids_own.tb_ca_l_sesn_log_info_mng.rqstr_ip_addr IS '요청자IP주소';
COMMENT ON COLUMN kids_own.tb_ca_l_sesn_log_info_mng.cntn_se_no IS '접속구분번호';
COMMENT ON COLUMN kids_own.tb_ca_l_sesn_log_info_mng.cntn_ocrn_dt IS '접속발생일시';
COMMENT ON COLUMN kids_own.tb_ca_l_sesn_log_info_mng.cntn_dtl_expln IS '접속상세설명';
COMMENT ON COLUMN kids_own.tb_ca_l_sesn_log_info_mng.cert_token_vl IS '인증토큰값';
COMMENT ON COLUMN kids_own.tb_ca_l_sesn_log_info_mng.token_crt_hr IS '토큰생성시간';
COMMENT ON COLUMN kids_own.tb_ca_l_sesn_log_info_mng.task_se_cd IS '업무구분코드';
COMMENT ON COLUMN kids_own.tb_ca_l_sesn_log_info_mng.srvc_nm IS '서비스명';
COMMENT ON COLUMN kids_own.tb_ca_l_sesn_log_info_mng.flfmt_hr IS '수행시간';
COMMENT ON COLUMN kids_own.tb_ca_l_sesn_log_info_mng.sess_expry_prnmnt_hr IS '세션만료예정시간';
COMMENT ON COLUMN kids_own.tb_ca_l_sesn_log_info_mng.lgt_dt IS '로그아웃일시';
COMMENT ON COLUMN kids_own.tb_ca_l_sesn_log_info_mng.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_ca_l_sesn_log_info_mng.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_ca_l_sesn_log_info_mng.mdfcn_dt IS '수정일시';
COMMENT ON COLUMN kids_own.tb_ca_l_sesn_log_info_mng.mdfr_id IS '수정자아이디';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_ca_l_sesn_log_info_mng ON kids_own.tb_ca_l_sesn_log_info_mng IS '공통_세션정보시스템로그 기본키';

-- Permissions

ALTER TABLE kids_own.tb_ca_l_sesn_log_info_mng OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_ca_l_sesn_log_info_mng TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_sesn_log_info_mng TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_sesn_log_info_mng TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_sesn_log_info_mng TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_sesn_log_info_mng TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_sesn_log_info_mng TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_sesn_log_info_mng TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_sesn_log_info_mng TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_sesn_log_info_mng TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_sesn_log_info_mng TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_sesn_log_info_mng TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_sesn_log_info_mng TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_sesn_log_info_mng TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_sesn_log_info_mng TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_sesn_log_info_mng TO ca_dev;


-- kids_own.tb_ca_l_task_acs_hstry definition

-- Drop table

-- DROP TABLE kids_own.tb_ca_l_task_acs_hstry;

CREATE TABLE kids_own.tb_ca_l_task_acs_hstry (
	menu_utztn_sn numeric(22) NOT NULL, -- 메뉴이용일련번호
	sess_log_sn numeric(22) NULL, -- 세션로그일련번호
	inpt_dt timestamp NULL, -- 입력일시
	inst_cd varchar(20) NULL, -- 기관코드
	trgt_menu_nm varchar(40) NULL, -- 대상메뉴명
	qna_sql_cn text NULL, -- 질의응답SQL내용
	url_addr varchar(2000) NOT NULL, -- URL주소
	task_se_cd_no varchar(10) NULL, -- 업무구분코드번호
	cntn_dt timestamp NULL, -- 접속일시
	acsr_nm varchar(20) NULL, -- 접속자명
	rqstr_id varchar(40) NULL, -- 요청자아이디
	flfmt_task_cd varchar(10) NULL, -- 수행업무코드
	etc_memo_cn varchar(4000) NULL, -- 기타메모내용
	prvc_incl_yn bpchar(1) NULL, -- 개인정보포함여부
	reg_dt timestamp NOT NULL, -- 등록일시
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	CONSTRAINT pk_tb_ca_l_task_acs_hstry PRIMARY KEY (menu_utztn_sn)
);
COMMENT ON TABLE kids_own.tb_ca_l_task_acs_hstry IS '공통_업무별접근이력';

-- Column comments

COMMENT ON COLUMN kids_own.tb_ca_l_task_acs_hstry.menu_utztn_sn IS '메뉴이용일련번호';
COMMENT ON COLUMN kids_own.tb_ca_l_task_acs_hstry.sess_log_sn IS '세션로그일련번호';
COMMENT ON COLUMN kids_own.tb_ca_l_task_acs_hstry.inpt_dt IS '입력일시';
COMMENT ON COLUMN kids_own.tb_ca_l_task_acs_hstry.inst_cd IS '기관코드';
COMMENT ON COLUMN kids_own.tb_ca_l_task_acs_hstry.trgt_menu_nm IS '대상메뉴명';
COMMENT ON COLUMN kids_own.tb_ca_l_task_acs_hstry.qna_sql_cn IS '질의응답SQL내용';
COMMENT ON COLUMN kids_own.tb_ca_l_task_acs_hstry.url_addr IS 'URL주소';
COMMENT ON COLUMN kids_own.tb_ca_l_task_acs_hstry.task_se_cd_no IS '업무구분코드번호';
COMMENT ON COLUMN kids_own.tb_ca_l_task_acs_hstry.cntn_dt IS '접속일시';
COMMENT ON COLUMN kids_own.tb_ca_l_task_acs_hstry.acsr_nm IS '접속자명';
COMMENT ON COLUMN kids_own.tb_ca_l_task_acs_hstry.rqstr_id IS '요청자아이디';
COMMENT ON COLUMN kids_own.tb_ca_l_task_acs_hstry.flfmt_task_cd IS '수행업무코드';
COMMENT ON COLUMN kids_own.tb_ca_l_task_acs_hstry.etc_memo_cn IS '기타메모내용';
COMMENT ON COLUMN kids_own.tb_ca_l_task_acs_hstry.prvc_incl_yn IS '개인정보포함여부';
COMMENT ON COLUMN kids_own.tb_ca_l_task_acs_hstry.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_ca_l_task_acs_hstry.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_ca_l_task_acs_hstry.mdfcn_dt IS '수정일시';
COMMENT ON COLUMN kids_own.tb_ca_l_task_acs_hstry.mdfr_id IS '수정자아이디';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_ca_l_task_acs_hstry ON kids_own.tb_ca_l_task_acs_hstry IS '공통_업무별접근이력 기본키';

-- Permissions

ALTER TABLE kids_own.tb_ca_l_task_acs_hstry OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_ca_l_task_acs_hstry TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_task_acs_hstry TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_task_acs_hstry TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_task_acs_hstry TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_task_acs_hstry TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_task_acs_hstry TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_task_acs_hstry TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_task_acs_hstry TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_task_acs_hstry TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_task_acs_hstry TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_task_acs_hstry TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_task_acs_hstry TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_task_acs_hstry TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_task_acs_hstry TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_l_task_acs_hstry TO ca_dev;


-- kids_own.tb_ca_m_anyid_intg_cert definition

-- Drop table

-- DROP TABLE kids_own.tb_ca_m_anyid_intg_cert;

CREATE TABLE kids_own.tb_ca_m_anyid_intg_cert (
	intg_cert_sn numeric(22) NOT NULL, -- 통합인증일련번호
	intg_cert_dmnd_sn numeric(22) NULL, -- 통합인증요청일련번호
	rqstr_ip_addr varchar(255) NOT NULL, -- 요청자IP주소
	prcs_stts_cd varchar(10) NULL, -- 처리상태코드
	intg_cert_rspns_cd varchar(10) NULL, -- 통합인증응답코드
	intg_cert_rspns_msg_vl varchar(40) NULL, -- 통합인증응답메시지값
	reg_dt timestamp NOT NULL, -- 등록일시
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	CONSTRAINT pk_tb_ca_m_anyid_intg_cert PRIMARY KEY (intg_cert_sn)
);
COMMENT ON TABLE kids_own.tb_ca_m_anyid_intg_cert IS '공통_ANYID 통합인증기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_ca_m_anyid_intg_cert.intg_cert_sn IS '통합인증일련번호';
COMMENT ON COLUMN kids_own.tb_ca_m_anyid_intg_cert.intg_cert_dmnd_sn IS '통합인증요청일련번호';
COMMENT ON COLUMN kids_own.tb_ca_m_anyid_intg_cert.rqstr_ip_addr IS '요청자IP주소';
COMMENT ON COLUMN kids_own.tb_ca_m_anyid_intg_cert.prcs_stts_cd IS '처리상태코드';
COMMENT ON COLUMN kids_own.tb_ca_m_anyid_intg_cert.intg_cert_rspns_cd IS '통합인증응답코드';
COMMENT ON COLUMN kids_own.tb_ca_m_anyid_intg_cert.intg_cert_rspns_msg_vl IS '통합인증응답메시지값';
COMMENT ON COLUMN kids_own.tb_ca_m_anyid_intg_cert.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_ca_m_anyid_intg_cert.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_ca_m_anyid_intg_cert.mdfcn_dt IS '수정일시';
COMMENT ON COLUMN kids_own.tb_ca_m_anyid_intg_cert.mdfr_id IS '수정자아이디';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_ca_m_anyid_intg_cert ON kids_own.tb_ca_m_anyid_intg_cert IS '공통_ANYID 통합인증기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_ca_m_anyid_intg_cert OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_ca_m_anyid_intg_cert TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_anyid_intg_cert TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_anyid_intg_cert TO ca_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_anyid_intg_cert TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_anyid_intg_cert TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_anyid_intg_cert TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_anyid_intg_cert TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_anyid_intg_cert TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_anyid_intg_cert TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_anyid_intg_cert TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_anyid_intg_cert TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_anyid_intg_cert TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_anyid_intg_cert TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_anyid_intg_cert TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_anyid_intg_cert TO pp_app;


-- kids_own.tb_ca_m_atch definition

-- Drop table

-- DROP TABLE kids_own.tb_ca_m_atch;

CREATE TABLE kids_own.tb_ca_m_atch (
	atch_file_sn numeric(10) NOT NULL, -- 첨부파일일련번호
	menu_sn numeric(22) NOT NULL, -- 메뉴일련번호
	menu_type varchar(20) NULL, -- 메뉴유형
	atch_file_uld_hr timestamp NOT NULL, -- 첨부파일업로드시간
	atch_file_use_yn bpchar(1) NOT NULL, -- 첨부파일사용여부
	atch_file_path varchar(1000) NULL, -- 첨부파일경로
	atch_file_nm varchar(100) NULL, -- 첨부파일명
	atch_file_extn_nm varchar(5) NULL, -- 첨부파일확장자명
	atch_file_cn varchar(1000) NULL, -- 첨부파일내용
	atch_file_sz numeric(14) NULL, -- 첨부파일크기
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_ca_m_atch PRIMARY KEY (atch_file_sn)
);
COMMENT ON TABLE kids_own.tb_ca_m_atch IS 'EXT_공통_첨부파일기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_ca_m_atch.atch_file_sn IS '첨부파일일련번호';
COMMENT ON COLUMN kids_own.tb_ca_m_atch.menu_sn IS '메뉴일련번호';
COMMENT ON COLUMN kids_own.tb_ca_m_atch.menu_type IS '메뉴유형';
COMMENT ON COLUMN kids_own.tb_ca_m_atch.atch_file_uld_hr IS '첨부파일업로드시간';
COMMENT ON COLUMN kids_own.tb_ca_m_atch.atch_file_use_yn IS '첨부파일사용여부';
COMMENT ON COLUMN kids_own.tb_ca_m_atch.atch_file_path IS '첨부파일경로';
COMMENT ON COLUMN kids_own.tb_ca_m_atch.atch_file_nm IS '첨부파일명';
COMMENT ON COLUMN kids_own.tb_ca_m_atch.atch_file_extn_nm IS '첨부파일확장자명';
COMMENT ON COLUMN kids_own.tb_ca_m_atch.atch_file_cn IS '첨부파일내용';
COMMENT ON COLUMN kids_own.tb_ca_m_atch.atch_file_sz IS '첨부파일크기';
COMMENT ON COLUMN kids_own.tb_ca_m_atch.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_ca_m_atch.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_ca_m_atch.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_ca_m_atch.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_ca_m_atch ON kids_own.tb_ca_m_atch IS 'EXT_공통_첨부파일기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_ca_m_atch OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_ca_m_atch TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_atch TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_atch TO ca_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_atch TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_atch TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_atch TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_atch TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_atch TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_atch TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_atch TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_atch TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_atch TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_atch TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_atch TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_atch TO pp_app;


-- kids_own.tb_ca_m_eml_sndng definition

-- Drop table

-- DROP TABLE kids_own.tb_ca_m_eml_sndng;

CREATE TABLE kids_own.tb_ca_m_eml_sndng (
	eml_sndng_sn numeric(22) NOT NULL, -- 이메일발송일련번호
	eml_ttl varchar(256) NULL, -- 이메일제목
	eml_cn varchar(4000) NULL, -- 이메일내용
	sndpty_flnm varchar(100) NULL, -- 발신자성명
	sndpty_eml_addr varchar(320) NOT NULL, -- 발신자이메일주소
	rcvr_flnm varchar(100) NULL, -- 수신자성명
	rcvr_eml_addr varchar(320) NOT NULL, -- 수신자이메일주소
	rcvr_jbps_nm varchar(100) NULL, -- 수신자직위명
	sndng_rslt_cd varchar(10) NULL, -- 발송결과코드
	atch_file_id varchar(40) NULL, -- 첨부파일아이디
	dsptch_dt bpchar(14) NULL, -- 발신일시
	reg_dt timestamp NOT NULL, -- 등록일시
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	CONSTRAINT pk_tb_ca_m_eml_sndng PRIMARY KEY (eml_sndng_sn)
);
COMMENT ON TABLE kids_own.tb_ca_m_eml_sndng IS '공통_메일발송기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_ca_m_eml_sndng.eml_sndng_sn IS '이메일발송일련번호';
COMMENT ON COLUMN kids_own.tb_ca_m_eml_sndng.eml_ttl IS '이메일제목';
COMMENT ON COLUMN kids_own.tb_ca_m_eml_sndng.eml_cn IS '이메일내용';
COMMENT ON COLUMN kids_own.tb_ca_m_eml_sndng.sndpty_flnm IS '발신자성명';
COMMENT ON COLUMN kids_own.tb_ca_m_eml_sndng.sndpty_eml_addr IS '발신자이메일주소';
COMMENT ON COLUMN kids_own.tb_ca_m_eml_sndng.rcvr_flnm IS '수신자성명';
COMMENT ON COLUMN kids_own.tb_ca_m_eml_sndng.rcvr_eml_addr IS '수신자이메일주소';
COMMENT ON COLUMN kids_own.tb_ca_m_eml_sndng.rcvr_jbps_nm IS '수신자직위명';
COMMENT ON COLUMN kids_own.tb_ca_m_eml_sndng.sndng_rslt_cd IS '발송결과코드';
COMMENT ON COLUMN kids_own.tb_ca_m_eml_sndng.atch_file_id IS '첨부파일아이디';
COMMENT ON COLUMN kids_own.tb_ca_m_eml_sndng.dsptch_dt IS '발신일시';
COMMENT ON COLUMN kids_own.tb_ca_m_eml_sndng.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_ca_m_eml_sndng.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_ca_m_eml_sndng.mdfcn_dt IS '수정일시';
COMMENT ON COLUMN kids_own.tb_ca_m_eml_sndng.mdfr_id IS '수정자아이디';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_ca_m_eml_sndng ON kids_own.tb_ca_m_eml_sndng IS '공통_메일발송기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_ca_m_eml_sndng OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_ca_m_eml_sndng TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_eml_sndng TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_eml_sndng TO ca_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_eml_sndng TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_eml_sndng TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_eml_sndng TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_eml_sndng TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_eml_sndng TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_eml_sndng TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_eml_sndng TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_eml_sndng TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_eml_sndng TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_eml_sndng TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_eml_sndng TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_eml_sndng TO pp_app;


-- kids_own.tb_ca_m_mbr_token definition

-- Drop table

-- DROP TABLE kids_own.tb_ca_m_mbr_token;

CREATE TABLE kids_own.tb_ca_m_mbr_token (
	token_sn numeric(22) NOT NULL, -- 토큰일련번호
	mbr_id varchar(40) NOT NULL, -- 회원아이디
	prgrm_id varchar(64) NULL, -- 프로그램아이디
	updt_token_cn text NULL, -- 갱신토큰내용
	acs_token_cn text NULL, -- 접근토큰내용
	reg_dt timestamp NOT NULL, -- 등록일시
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	CONSTRAINT pk_tb_ca_m_mbr_token PRIMARY KEY (token_sn)
);
COMMENT ON TABLE kids_own.tb_ca_m_mbr_token IS '공통_회원JWT토큰관리';

-- Column comments

COMMENT ON COLUMN kids_own.tb_ca_m_mbr_token.token_sn IS '토큰일련번호';
COMMENT ON COLUMN kids_own.tb_ca_m_mbr_token.mbr_id IS '회원아이디';
COMMENT ON COLUMN kids_own.tb_ca_m_mbr_token.prgrm_id IS '프로그램아이디';
COMMENT ON COLUMN kids_own.tb_ca_m_mbr_token.updt_token_cn IS '갱신토큰내용';
COMMENT ON COLUMN kids_own.tb_ca_m_mbr_token.acs_token_cn IS '접근토큰내용';
COMMENT ON COLUMN kids_own.tb_ca_m_mbr_token.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_ca_m_mbr_token.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_ca_m_mbr_token.mdfcn_dt IS '수정일시';
COMMENT ON COLUMN kids_own.tb_ca_m_mbr_token.mdfr_id IS '수정자아이디';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_ca_m_mbr_token ON kids_own.tb_ca_m_mbr_token IS '공통_회원JWT토큰관리 기본키';

-- Permissions

ALTER TABLE kids_own.tb_ca_m_mbr_token OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_ca_m_mbr_token TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_mbr_token TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_mbr_token TO ca_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_mbr_token TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_mbr_token TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_mbr_token TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_mbr_token TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_mbr_token TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_mbr_token TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_mbr_token TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_mbr_token TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_mbr_token TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_mbr_token TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_mbr_token TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_ca_m_mbr_token TO pp_app;


-- kids_own.tb_pp_d_menu definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_d_menu;

CREATE TABLE kids_own.tb_pp_d_menu (
	menu_sn numeric(22) NOT NULL, -- 메뉴일련번호
	menu_url_addr varchar(320) NULL, -- 메뉴URL주소
	menu_npag_nm varchar(20) NULL, -- 메뉴새창명
	prvc_incl_yn bpchar(1) NOT NULL, -- 개인정보포함여부
	dgstfn_exmn_yn bpchar(1) NOT NULL, -- 만족도조사여부
	menu_expsr_yn bpchar(1) NOT NULL, -- 메뉴노출여부
	dept_info_expsr_yn bpchar(1) NOT NULL, -- 부서정보노출여부
	pic_info_expsr_yn bpchar(1) NOT NULL, -- 담당자정보노출여부
	mobl_aplcn_yn bpchar(1) NOT NULL, -- 모바일적용여부
	lgn_yn bpchar(1) NULL, -- 로그인여부
	encpt_pic_telno varchar(256) NULL, -- 암호화담당자전화번호
	menu_kogl_cprgt_type_cd bpchar(1) NULL, -- 메뉴공공누리저작권유형코드
	menu_pic_id varchar(40) NOT NULL, -- 메뉴담당자아이디
	menu_tkcg_dept_no varchar(100) NULL, -- 메뉴담당부서번호
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_d_menu PRIMARY KEY (menu_sn)
);
COMMENT ON TABLE kids_own.tb_pp_d_menu IS '대국민포털_메뉴상세';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_d_menu.menu_sn IS '메뉴일련번호';
COMMENT ON COLUMN kids_own.tb_pp_d_menu.menu_url_addr IS '메뉴URL주소';
COMMENT ON COLUMN kids_own.tb_pp_d_menu.menu_npag_nm IS '메뉴새창명';
COMMENT ON COLUMN kids_own.tb_pp_d_menu.prvc_incl_yn IS '개인정보포함여부';
COMMENT ON COLUMN kids_own.tb_pp_d_menu.dgstfn_exmn_yn IS '만족도조사여부';
COMMENT ON COLUMN kids_own.tb_pp_d_menu.menu_expsr_yn IS '메뉴노출여부';
COMMENT ON COLUMN kids_own.tb_pp_d_menu.dept_info_expsr_yn IS '부서정보노출여부';
COMMENT ON COLUMN kids_own.tb_pp_d_menu.pic_info_expsr_yn IS '담당자정보노출여부';
COMMENT ON COLUMN kids_own.tb_pp_d_menu.mobl_aplcn_yn IS '모바일적용여부';
COMMENT ON COLUMN kids_own.tb_pp_d_menu.lgn_yn IS '로그인여부';
COMMENT ON COLUMN kids_own.tb_pp_d_menu.encpt_pic_telno IS '암호화담당자전화번호';
COMMENT ON COLUMN kids_own.tb_pp_d_menu.menu_kogl_cprgt_type_cd IS '메뉴공공누리저작권유형코드';
COMMENT ON COLUMN kids_own.tb_pp_d_menu.menu_pic_id IS '메뉴담당자아이디';
COMMENT ON COLUMN kids_own.tb_pp_d_menu.menu_tkcg_dept_no IS '메뉴담당부서번호';
COMMENT ON COLUMN kids_own.tb_pp_d_menu.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_d_menu.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_d_menu.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_d_menu.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_d_menu ON kids_own.tb_pp_d_menu IS '대국민포털_메뉴상세 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_d_menu OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_d_menu TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_d_menu TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_d_menu TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_d_menu TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_d_menu TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_d_menu TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_d_menu TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_d_menu TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_d_menu TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_d_menu TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_d_menu TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_d_menu TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_d_menu TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_d_menu TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_d_menu TO ca_dev;


-- kids_own.tb_pp_m_authrt definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_authrt;

CREATE TABLE kids_own.tb_pp_m_authrt (
	authrt_cd varchar(10) NOT NULL, -- 권한코드
	up_authrt_cd varchar(10) NULL, -- 상위권한코드
	task_se_cd varchar(10) NULL, -- 업무구분코드
	authrt_nm varchar(20) NULL, -- 권한명
	authrt_type_cd varchar(20) NULL, -- 권한유형코드
	authrt_expln varchar(4000) NULL, -- 권한설명
	use_yn bpchar(1) NOT NULL, -- 사용여부
	wrtr_dept_nm varchar(40) NULL, -- 작성자부서명
	mdfr_dept_nm varchar(40) NULL, -- 수정자부서명
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_authrt PRIMARY KEY (authrt_cd)
);
COMMENT ON TABLE kids_own.tb_pp_m_authrt IS '대국민포털_권한기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_authrt.authrt_cd IS '권한코드';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt.up_authrt_cd IS '상위권한코드';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt.task_se_cd IS '업무구분코드';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt.authrt_nm IS '권한명';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt.authrt_type_cd IS '권한유형코드';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt.authrt_expln IS '권한설명';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt.use_yn IS '사용여부';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt.wrtr_dept_nm IS '작성자부서명';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt.mdfr_dept_nm IS '수정자부서명';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_authrt ON kids_own.tb_pp_m_authrt IS '대국민포털_권한기본 기본키2';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_authrt OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_authrt TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt TO ca_dev;


-- kids_own.tb_pp_m_authrt_chg_hstry definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_authrt_chg_hstry;

CREATE TABLE kids_own.tb_pp_m_authrt_chg_hstry (
	authrt_chg_sn numeric(10) NOT NULL, -- 권한변경일련번호
	authrt_cd varchar(10) NOT NULL, -- 권한코드
	menu_sn numeric(22) NULL, -- 메뉴일련번호
	aplcn_trgt_type_cd bpchar(5) NOT NULL, -- 적용대상유형코드
	chg_role_list_cn varchar(4000) NULL, -- 변경역할목록내용
	aplcn_trgt_nm varchar(20) NULL, -- 적용대상명
	chg_type_cd varchar(20) NOT NULL, -- 변경유형코드
	authrt_chg_rmrk_cn varchar(1000) NOT NULL, -- 권한변경비고내용
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_authrt_chg_hstry PRIMARY KEY (authrt_chg_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_authrt_chg_hstry IS '대국민포털_권한변경이력기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_authrt_chg_hstry.authrt_chg_sn IS '권한변경일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt_chg_hstry.authrt_cd IS '권한코드';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt_chg_hstry.menu_sn IS '메뉴일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt_chg_hstry.aplcn_trgt_type_cd IS '적용대상유형코드';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt_chg_hstry.chg_role_list_cn IS '변경역할목록내용';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt_chg_hstry.aplcn_trgt_nm IS '적용대상명';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt_chg_hstry.chg_type_cd IS '변경유형코드';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt_chg_hstry.authrt_chg_rmrk_cn IS '권한변경비고내용';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt_chg_hstry.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt_chg_hstry.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt_chg_hstry.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt_chg_hstry.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_authrt_chg_hstry ON kids_own.tb_pp_m_authrt_chg_hstry IS '대국민포털_권한변경이력기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_authrt_chg_hstry OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_authrt_chg_hstry TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_chg_hstry TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_chg_hstry TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_chg_hstry TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_chg_hstry TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_chg_hstry TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_chg_hstry TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_chg_hstry TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_chg_hstry TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_chg_hstry TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_chg_hstry TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_chg_hstry TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_chg_hstry TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_chg_hstry TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_chg_hstry TO ca_dev;


-- kids_own.tb_pp_m_authrt_menu definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_authrt_menu;

CREATE TABLE kids_own.tb_pp_m_authrt_menu (
	authrt_cd varchar(10) NOT NULL, -- 권한코드
	menu_sn numeric(22) NOT NULL, -- 메뉴일련번호
	authrt_menu_role_rmrk_cn varchar(1000) NULL, -- 권한메뉴역할비고내용
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_authrt_menu PRIMARY KEY (authrt_cd, menu_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_authrt_menu IS '대국민포털_권한메뉴기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_authrt_menu.authrt_cd IS '권한코드';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt_menu.menu_sn IS '메뉴일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt_menu.authrt_menu_role_rmrk_cn IS '권한메뉴역할비고내용';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt_menu.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt_menu.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt_menu.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt_menu.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_authrt_menu ON kids_own.tb_pp_m_authrt_menu IS '대국민포털_권한메뉴기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_authrt_menu OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_authrt_menu TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu TO ca_dev;


-- kids_own.tb_pp_m_authrt_menu_role definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_authrt_menu_role;

CREATE TABLE kids_own.tb_pp_m_authrt_menu_role (
	authrt_cd varchar(10) NOT NULL, -- 권한코드
	role_cd varchar(20) NOT NULL, -- 역할코드
	menu_sn numeric(22) NOT NULL, -- 메뉴일련번호
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_authrt_menu_role PRIMARY KEY (authrt_cd, role_cd, menu_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_authrt_menu_role IS '대국민포털_권한메뉴롤기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_authrt_menu_role.authrt_cd IS '권한코드';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt_menu_role.role_cd IS '역할코드';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt_menu_role.menu_sn IS '메뉴일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt_menu_role.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt_menu_role.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt_menu_role.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_authrt_menu_role.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_authrt_menu_role ON kids_own.tb_pp_m_authrt_menu_role IS '대국민포털_권한메뉴롤기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_authrt_menu_role OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_authrt_menu_role TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu_role TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu_role TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu_role TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu_role TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu_role TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu_role TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu_role TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu_role TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu_role TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu_role TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu_role TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu_role TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu_role TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_authrt_menu_role TO ca_dev;


-- kids_own.tb_pp_m_bbs definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_bbs;

CREATE TABLE kids_own.tb_pp_m_bbs (
	bbs_id varchar(20) NOT NULL, -- 게시판아이디
	bbs_nm varchar(300) NULL, -- 게시판명
	bbs_atrb_cd bpchar(3) NOT NULL, -- 게시판속성코드
	bbs_expln varchar(4000) NULL, -- 게시판설명
	bbs_smry_cn varchar(4000) NULL, -- 게시판요약내용
	cmnt_use_yn bpchar(1) NOT NULL, -- 댓글사용여부
	inq_cnt_expsr_yn bpchar(1) NOT NULL, -- 조회수노출여부
	dept_expsr_yn bpchar(1) NOT NULL, -- 부서노출여부
	file_atch_yn bpchar(1) NOT NULL, -- 파일첨부여부
	atch_psblty_file_cnt numeric(2) NULL, -- 첨부가능파일수
	lang_se_cd bpchar(3) NOT NULL, -- 언어구분코드
	use_yn bpchar(1) NOT NULL, -- 사용여부
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_bbs PRIMARY KEY (bbs_id)
);
COMMENT ON TABLE kids_own.tb_pp_m_bbs IS '대국민포털_게시판기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_bbs.bbs_id IS '게시판아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_bbs.bbs_nm IS '게시판명';
COMMENT ON COLUMN kids_own.tb_pp_m_bbs.bbs_atrb_cd IS '게시판속성코드';
COMMENT ON COLUMN kids_own.tb_pp_m_bbs.bbs_expln IS '게시판설명';
COMMENT ON COLUMN kids_own.tb_pp_m_bbs.bbs_smry_cn IS '게시판요약내용';
COMMENT ON COLUMN kids_own.tb_pp_m_bbs.cmnt_use_yn IS '댓글사용여부';
COMMENT ON COLUMN kids_own.tb_pp_m_bbs.inq_cnt_expsr_yn IS '조회수노출여부';
COMMENT ON COLUMN kids_own.tb_pp_m_bbs.dept_expsr_yn IS '부서노출여부';
COMMENT ON COLUMN kids_own.tb_pp_m_bbs.file_atch_yn IS '파일첨부여부';
COMMENT ON COLUMN kids_own.tb_pp_m_bbs.atch_psblty_file_cnt IS '첨부가능파일수';
COMMENT ON COLUMN kids_own.tb_pp_m_bbs.lang_se_cd IS '언어구분코드';
COMMENT ON COLUMN kids_own.tb_pp_m_bbs.use_yn IS '사용여부';
COMMENT ON COLUMN kids_own.tb_pp_m_bbs.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_bbs.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_bbs.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_bbs.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_bbs ON kids_own.tb_pp_m_bbs IS '대국민포털_게시판기본 기본키2';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_bbs OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_bbs TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs TO ca_dev;


-- kids_own.tb_pp_m_bbs_authrt definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_bbs_authrt;

CREATE TABLE kids_own.tb_pp_m_bbs_authrt (
	bbs_id varchar(20) NOT NULL, -- 게시판아이디
	authrt_cd varchar(10) NOT NULL, -- 권한코드
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_bbs_authrt PRIMARY KEY (bbs_id, authrt_cd)
);
COMMENT ON TABLE kids_own.tb_pp_m_bbs_authrt IS '대국민포털_게시판권한기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_bbs_authrt.bbs_id IS '게시판아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_bbs_authrt.authrt_cd IS '권한코드';
COMMENT ON COLUMN kids_own.tb_pp_m_bbs_authrt.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_bbs_authrt.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_bbs_authrt.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_bbs_authrt.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_bbs_authrt ON kids_own.tb_pp_m_bbs_authrt IS '대국민포털_게시판권한기본 기본키2';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_bbs_authrt OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_bbs_authrt TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs_authrt TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs_authrt TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs_authrt TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs_authrt TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs_authrt TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs_authrt TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs_authrt TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs_authrt TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs_authrt TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs_authrt TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs_authrt TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs_authrt TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs_authrt TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_bbs_authrt TO ca_dev;


-- kids_own.tb_pp_m_c definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_c;

CREATE TABLE kids_own.tb_pp_m_c (
	dclr_sn numeric(10) NOT NULL, -- 신고일련번호
	encpt_mbr_flnm varchar(256) NOT NULL, -- 암호화회원성명
	encpt_mbr_telno varchar(256) NULL, -- 암호화회원전화번호
	encpt_mbr_eml_nm varchar(256) NULL, -- 암호화회원이메일명
	dclr_ttl_nm varchar(200) NOT NULL, -- 신고제목명
	dshsty_actr_flnm varchar(300) NOT NULL, -- 부정행위자성명
	dshsty_act_pip_cn varchar(1000) NOT NULL, -- 부정행위시점내용
	dshsty_act_plc_cn varchar(1000) NOT NULL, -- 부정행위장소내용
	dshsty_act_cn text NOT NULL, -- 부정행위내용
	add_idntf_idfr_nm varchar(300) NULL, -- 추가식별확인자명
	dclr_cn_idnty_mthd_cn varchar(4000) NULL, -- 신고내용확인방법내용
	dshsty_act_idntf_rsn_cn varchar(4000) NULL, -- 부정행위식별사유내용
	dshsty_act_prd_cn varchar(1000) NULL, -- 부정행위기간내용
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_c PRIMARY KEY (dclr_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_c IS '대국민포털_부정신고기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_c.dclr_sn IS '신고일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_c.encpt_mbr_flnm IS '암호화회원성명';
COMMENT ON COLUMN kids_own.tb_pp_m_c.encpt_mbr_telno IS '암호화회원전화번호';
COMMENT ON COLUMN kids_own.tb_pp_m_c.encpt_mbr_eml_nm IS '암호화회원이메일명';
COMMENT ON COLUMN kids_own.tb_pp_m_c.dclr_ttl_nm IS '신고제목명';
COMMENT ON COLUMN kids_own.tb_pp_m_c.dshsty_actr_flnm IS '부정행위자성명';
COMMENT ON COLUMN kids_own.tb_pp_m_c.dshsty_act_pip_cn IS '부정행위시점내용';
COMMENT ON COLUMN kids_own.tb_pp_m_c.dshsty_act_plc_cn IS '부정행위장소내용';
COMMENT ON COLUMN kids_own.tb_pp_m_c.dshsty_act_cn IS '부정행위내용';
COMMENT ON COLUMN kids_own.tb_pp_m_c.add_idntf_idfr_nm IS '추가식별확인자명';
COMMENT ON COLUMN kids_own.tb_pp_m_c.dclr_cn_idnty_mthd_cn IS '신고내용확인방법내용';
COMMENT ON COLUMN kids_own.tb_pp_m_c.dshsty_act_idntf_rsn_cn IS '부정행위식별사유내용';
COMMENT ON COLUMN kids_own.tb_pp_m_c.dshsty_act_prd_cn IS '부정행위기간내용';
COMMENT ON COLUMN kids_own.tb_pp_m_c.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_c.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_c.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_c.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_c ON kids_own.tb_pp_m_c IS '대국민포털_부정신고기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_c OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_c TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_c TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_c TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_c TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_c TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_c TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_c TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_c TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_c TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_c TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_c TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_c TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_c TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_c TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_c TO ca_dev;


-- kids_own.tb_pp_m_cmnt definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_cmnt;

CREATE TABLE kids_own.tb_pp_m_cmnt (
	cmnt_sn numeric(22) NOT NULL, -- 댓글일련번호
	pst_sn numeric(22) NOT NULL, -- 게시물일련번호
	cmnt_cn varchar(4000) NULL, -- 댓글내용
	encpt_cmnt_pswd varchar(256) NULL, -- 암호화댓글비밀번호
	use_yn bpchar(1) NOT NULL, -- 사용여부
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_cmnt PRIMARY KEY (cmnt_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_cmnt IS '대국민포털_댓글기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_cmnt.cmnt_sn IS '댓글일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_cmnt.pst_sn IS '게시물일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_cmnt.cmnt_cn IS '댓글내용';
COMMENT ON COLUMN kids_own.tb_pp_m_cmnt.encpt_cmnt_pswd IS '암호화댓글비밀번호';
COMMENT ON COLUMN kids_own.tb_pp_m_cmnt.use_yn IS '사용여부';
COMMENT ON COLUMN kids_own.tb_pp_m_cmnt.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_cmnt.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_cmnt.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_cmnt.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_cmnt ON kids_own.tb_pp_m_cmnt IS '대국민포털_댓글기본 기본키2';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_cmnt OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_cmnt TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_cmnt TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_cmnt TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_cmnt TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_cmnt TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_cmnt TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_cmnt TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_cmnt TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_cmnt TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_cmnt TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_cmnt TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_cmnt TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_cmnt TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_cmnt TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_cmnt TO ca_dev;


-- kids_own.tb_pp_m_conts definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_conts;

CREATE TABLE kids_own.tb_pp_m_conts (
	conts_sn varchar(50) NOT NULL, -- 콘텐츠일련번호
	conts_ver_no numeric(10) NOT NULL, -- 콘텐츠버전번호
	conts_ttl varchar(200) NOT NULL, -- 콘텐츠제목
	conts_cn text NOT NULL, -- 콘텐츠내용
	conts_use_yn bpchar(1) NOT NULL, -- 콘텐츠사용여부
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_conts PRIMARY KEY (conts_sn, conts_ver_no)
);
COMMENT ON TABLE kids_own.tb_pp_m_conts IS '대국민포탈_콘텐츠기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_conts.conts_sn IS '콘텐츠일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_conts.conts_ver_no IS '콘텐츠버전번호';
COMMENT ON COLUMN kids_own.tb_pp_m_conts.conts_ttl IS '콘텐츠제목';
COMMENT ON COLUMN kids_own.tb_pp_m_conts.conts_cn IS '콘텐츠내용';
COMMENT ON COLUMN kids_own.tb_pp_m_conts.conts_use_yn IS '콘텐츠사용여부';
COMMENT ON COLUMN kids_own.tb_pp_m_conts.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_conts.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_conts.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_conts.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_conts ON kids_own.tb_pp_m_conts IS '대국민포탈_콘텐츠기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_conts OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_conts TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_conts TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_conts TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_conts TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_conts TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_conts TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_conts TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_conts TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_conts TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_conts TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_conts TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_conts TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_conts TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_conts TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_conts TO ca_dev;


-- kids_own.tb_pp_m_dept_authrt definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_dept_authrt;

CREATE TABLE kids_own.tb_pp_m_dept_authrt (
	dept_no varchar(20) NOT NULL, -- 부서번호
	authrt_cd varchar(10) NOT NULL, -- 권한코드
	dept_authrt_rmrk_cn varchar(1000) NULL, -- 부서권한비고내용
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_dept_authrt PRIMARY KEY (dept_no, authrt_cd)
);
COMMENT ON TABLE kids_own.tb_pp_m_dept_authrt IS '대국민포털_부서권한기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_dept_authrt.dept_no IS '부서번호';
COMMENT ON COLUMN kids_own.tb_pp_m_dept_authrt.authrt_cd IS '권한코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dept_authrt.dept_authrt_rmrk_cn IS '부서권한비고내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dept_authrt.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dept_authrt.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_dept_authrt.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dept_authrt.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_dept_authrt ON kids_own.tb_pp_m_dept_authrt IS '대국민포털_부서권한기본 기본키2';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_dept_authrt OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_dept_authrt TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_authrt TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_authrt TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_authrt TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_authrt TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_authrt TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_authrt TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_authrt TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_authrt TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_authrt TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_authrt TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_authrt TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_authrt TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_authrt TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_authrt TO ca_dev;


-- kids_own.tb_pp_m_dept_info definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_dept_info;

CREATE TABLE kids_own.tb_pp_m_dept_info (
	dept_no varchar(20) NOT NULL, -- 부서번호
	dept_nm varchar(40) NULL, -- 부서명
	up_dept_no varchar(20) NULL, -- 상위부서번호
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_dept_info PRIMARY KEY (dept_no)
);
COMMENT ON TABLE kids_own.tb_pp_m_dept_info IS '대국민포털_KIDS부서정보기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_dept_info.dept_no IS '부서번호';
COMMENT ON COLUMN kids_own.tb_pp_m_dept_info.dept_nm IS '부서명';
COMMENT ON COLUMN kids_own.tb_pp_m_dept_info.up_dept_no IS '상위부서번호';
COMMENT ON COLUMN kids_own.tb_pp_m_dept_info.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dept_info.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_dept_info.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dept_info.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_dept_info ON kids_own.tb_pp_m_dept_info IS '대국민포털_KIDS부서정보기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_dept_info OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_dept_info TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_info TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_info TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_info TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_info TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_info TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_info TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_info TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_info TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_info TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_info TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_info TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_info TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_info TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dept_info TO ca_dev;


-- kids_own.tb_pp_m_dgstfn_exmn definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_dgstfn_exmn;

CREATE TABLE kids_own.tb_pp_m_dgstfn_exmn (
	dgstfn_exmn_sn numeric(22) NOT NULL, -- 만족도조사일련번호
	menu_sn numeric(22) NOT NULL, -- 메뉴일련번호
	dgstfn_scr numeric(2) NOT NULL, -- 만족도점수
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_dgstfn_exmn PRIMARY KEY (dgstfn_exmn_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_dgstfn_exmn IS '대국민포털_만족도조사기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_dgstfn_exmn.dgstfn_exmn_sn IS '만족도조사일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_dgstfn_exmn.menu_sn IS '메뉴일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_dgstfn_exmn.dgstfn_scr IS '만족도점수';
COMMENT ON COLUMN kids_own.tb_pp_m_dgstfn_exmn.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dgstfn_exmn.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_dgstfn_exmn.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dgstfn_exmn.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_dgstfn_exmn ON kids_own.tb_pp_m_dgstfn_exmn IS '대국민포털_만족도조사기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_dgstfn_exmn OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_dgstfn_exmn TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dgstfn_exmn TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dgstfn_exmn TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dgstfn_exmn TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dgstfn_exmn TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dgstfn_exmn TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dgstfn_exmn TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dgstfn_exmn TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dgstfn_exmn TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dgstfn_exmn TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dgstfn_exmn TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dgstfn_exmn TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dgstfn_exmn TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dgstfn_exmn TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dgstfn_exmn TO ca_dev;


-- kids_own.tb_pp_m_dmn definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_dmn;

CREATE TABLE kids_own.tb_pp_m_dmn (
	com_std_dmn_nm varchar(100) NOT NULL, -- 공통표준도메인명
	sys_se_nm varchar(40) NULL, -- 시스템구분명
	artcl_sou_nm varchar(40) NULL, -- 항목원천명
	com_std_dmn_clsf_nm varchar(40) NULL, -- 공통표준도메인분류명
	com_std_dmn_group_nm varchar(40) NULL, -- 공통표준도메인그룹명
	com_std_dmn_expln varchar(4000) NULL, -- 공통표준도메인설명
	dmn_type_nm varchar(40) NULL, -- 도메인유형명
	dmn_len numeric(10) NULL, -- 도메인길이
	dmn_dcpt_len numeric(10) NULL, -- 도메인소수점길이
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_dmn PRIMARY KEY (com_std_dmn_nm)
);
COMMENT ON TABLE kids_own.tb_pp_m_dmn IS '대국민포털_도메인기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_dmn.com_std_dmn_nm IS '공통표준도메인명';
COMMENT ON COLUMN kids_own.tb_pp_m_dmn.sys_se_nm IS '시스템구분명';
COMMENT ON COLUMN kids_own.tb_pp_m_dmn.artcl_sou_nm IS '항목원천명';
COMMENT ON COLUMN kids_own.tb_pp_m_dmn.com_std_dmn_clsf_nm IS '공통표준도메인분류명';
COMMENT ON COLUMN kids_own.tb_pp_m_dmn.com_std_dmn_group_nm IS '공통표준도메인그룹명';
COMMENT ON COLUMN kids_own.tb_pp_m_dmn.com_std_dmn_expln IS '공통표준도메인설명';
COMMENT ON COLUMN kids_own.tb_pp_m_dmn.dmn_type_nm IS '도메인유형명';
COMMENT ON COLUMN kids_own.tb_pp_m_dmn.dmn_len IS '도메인길이';
COMMENT ON COLUMN kids_own.tb_pp_m_dmn.dmn_dcpt_len IS '도메인소수점길이';
COMMENT ON COLUMN kids_own.tb_pp_m_dmn.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dmn.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_dmn.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dmn.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_dmn ON kids_own.tb_pp_m_dmn IS '대국민포털_도메인기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_dmn OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_dmn TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dmn TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dmn TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dmn TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dmn TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dmn TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dmn TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dmn TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dmn TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dmn TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dmn TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dmn TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dmn TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dmn TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dmn TO ca_dev;


-- kids_own.tb_pp_m_dshsty_dclr definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_dshsty_dclr;

CREATE TABLE kids_own.tb_pp_m_dshsty_dclr (
	dclr_sn numeric(10) NOT NULL, -- 신고일련번호
	link_info_idntf_id varchar(100) NOT NULL, -- 연계정보식별아이디
	encpt_mbr_flnm varchar(256) NOT NULL, -- 암호화회원성명
	encpt_mbr_telno varchar(256) NULL, -- 암호화회원전화번호
	encpt_mbr_eml_nm varchar(256) NULL, -- 암호화회원이메일명
	dclr_ttl_nm varchar(200) NOT NULL, -- 신고제목명
	dshsty_actr_flnm varchar(300) NOT NULL, -- 부정행위자성명
	dshsty_act_pip_cn varchar(1000) NOT NULL, -- 부정행위시점내용
	dshsty_act_plc_cn varchar(1000) NOT NULL, -- 부정행위장소내용
	dshsty_act_cn text NOT NULL, -- 부정행위내용
	add_idntf_idfr_nm varchar(300) NULL, -- 추가식별확인자명
	dclr_cn_idnty_mthd_cn varchar(4000) NULL, -- 신고내용확인방법내용
	dshsty_act_idntf_rsn_cn varchar(4000) NULL, -- 부정행위식별사유내용
	dshsty_act_prd_cn varchar(1000) NULL, -- 부정행위기간내용
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_dshsty_dclr PRIMARY KEY (dclr_sn, link_info_idntf_id)
);
COMMENT ON TABLE kids_own.tb_pp_m_dshsty_dclr IS '대국민포털_부정신고기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_dshsty_dclr.dclr_sn IS '신고일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_dshsty_dclr.link_info_idntf_id IS '연계정보식별아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dshsty_dclr.encpt_mbr_flnm IS '암호화회원성명';
COMMENT ON COLUMN kids_own.tb_pp_m_dshsty_dclr.encpt_mbr_telno IS '암호화회원전화번호';
COMMENT ON COLUMN kids_own.tb_pp_m_dshsty_dclr.encpt_mbr_eml_nm IS '암호화회원이메일명';
COMMENT ON COLUMN kids_own.tb_pp_m_dshsty_dclr.dclr_ttl_nm IS '신고제목명';
COMMENT ON COLUMN kids_own.tb_pp_m_dshsty_dclr.dshsty_actr_flnm IS '부정행위자성명';
COMMENT ON COLUMN kids_own.tb_pp_m_dshsty_dclr.dshsty_act_pip_cn IS '부정행위시점내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dshsty_dclr.dshsty_act_plc_cn IS '부정행위장소내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dshsty_dclr.dshsty_act_cn IS '부정행위내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dshsty_dclr.add_idntf_idfr_nm IS '추가식별확인자명';
COMMENT ON COLUMN kids_own.tb_pp_m_dshsty_dclr.dclr_cn_idnty_mthd_cn IS '신고내용확인방법내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dshsty_dclr.dshsty_act_idntf_rsn_cn IS '부정행위식별사유내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dshsty_dclr.dshsty_act_prd_cn IS '부정행위기간내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dshsty_dclr.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dshsty_dclr.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_dshsty_dclr.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dshsty_dclr.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_dshsty_dclr ON kids_own.tb_pp_m_dshsty_dclr IS '대국민포털_부정신고기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_dshsty_dclr OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_dshsty_dclr TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dshsty_dclr TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dshsty_dclr TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dshsty_dclr TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dshsty_dclr TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dshsty_dclr TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dshsty_dclr TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dshsty_dclr TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dshsty_dclr TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dshsty_dclr TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dshsty_dclr TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dshsty_dclr TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dshsty_dclr TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dshsty_dclr TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dshsty_dclr TO ca_dev;


-- kids_own.tb_pp_m_dur_age_bann definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_dur_age_bann;

CREATE TABLE kids_own.tb_pp_m_dur_age_bann (
	age_condi_sn varchar(50) NOT NULL, -- 연령금기일련번호
	igrd_nm varchar(1000) NOT NULL, -- 성분명
	igrd_cd varchar(20) NOT NULL, -- 성분코드
	prdct_cd bpchar(9) NOT NULL, -- 제품코드
	prdct_nm varchar(1000) NOT NULL, -- 제품명
	bzenty_nm varchar(100) NOT NULL, -- 업체명
	mfds_igrd_cd_cn varchar(1000) NULL, -- 식약처성분코드내용
	mfds_igrd_nm_cn varchar(2000) NULL, -- 식약처성분명내용
	mfds_prdct_nm varchar(1000) NULL, -- 식약처제품명
	rlvt_age numeric(3) NOT NULL, -- 해당연령
	rlvt_age_unit_nm varchar(20) NULL, -- 해당연령단위명
	age_prcs_cnd_nm varchar(20) NULL, -- 연령처리조건명
	ancmnt_no bpchar(8) NULL, -- 고시번호
	ancmnt_ymd bpchar(8) NULL, -- 고시일자
	dtl_info_cn varchar(4000) NULL, -- 상세정보내용
	slry_se_cd bpchar(1) NULL, -- 급여구분코드
	aplcn_ym bpchar(6) NULL, -- 적용연월
	oper_stts_cd bpchar(1) NULL, -- 운영상태코드
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_dur_age_bann PRIMARY KEY (age_condi_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_dur_age_bann IS '대국민포털_DUR연령금기기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_dur_age_bann.age_condi_sn IS '연령금기일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_age_bann.igrd_nm IS '성분명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_age_bann.igrd_cd IS '성분코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_age_bann.prdct_cd IS '제품코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_age_bann.prdct_nm IS '제품명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_age_bann.bzenty_nm IS '업체명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_age_bann.mfds_igrd_cd_cn IS '식약처성분코드내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_age_bann.mfds_igrd_nm_cn IS '식약처성분명내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_age_bann.mfds_prdct_nm IS '식약처제품명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_age_bann.rlvt_age IS '해당연령';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_age_bann.rlvt_age_unit_nm IS '해당연령단위명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_age_bann.age_prcs_cnd_nm IS '연령처리조건명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_age_bann.ancmnt_no IS '고시번호';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_age_bann.ancmnt_ymd IS '고시일자';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_age_bann.dtl_info_cn IS '상세정보내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_age_bann.slry_se_cd IS '급여구분코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_age_bann.aplcn_ym IS '적용연월';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_age_bann.oper_stts_cd IS '운영상태코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_age_bann.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_age_bann.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_age_bann.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_age_bann.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_dur_age_bann ON kids_own.tb_pp_m_dur_age_bann IS '대국민포털_DUR연령금기기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_dur_age_bann OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_dur_age_bann TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_age_bann TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_age_bann TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_age_bann TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_age_bann TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_age_bann TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_age_bann TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_age_bann TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_age_bann TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_age_bann TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_age_bann TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_age_bann TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_age_bann TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_age_bann TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_age_bann TO ca_dev;


-- kids_own.tb_pp_m_dur_conc_bann definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_dur_conc_bann;

CREATE TABLE kids_own.tb_pp_m_dur_conc_bann (
	cth_condi_sn varchar(50) NOT NULL, -- 병용금기일련번호
	igrd_nm_1 varchar(1000) NOT NULL, -- 성분명_1
	igrd_cd_1 varchar(20) NOT NULL, -- 성분코드_1
	prdct_cd_1 bpchar(9) NOT NULL, -- 제품코드_1
	prdct_nm_1 varchar(1000) NULL, -- 제품명_1
	bzenty_nm_1 varchar(100) NULL, -- 업체명_1
	slry_se_cd_1 bpchar(1) NULL, -- 급여구분코드_1
	igrd_nm_2 varchar(1000) NOT NULL, -- 성분명_2
	igrd_cd_2 varchar(20) NOT NULL, -- 성분코드_2
	prdct_cd_2 bpchar(9) NOT NULL, -- 제품코드_2
	prdct_nm_2 varchar(1000) NULL, -- 제품명_2
	bzenty_nm_2 varchar(100) NULL, -- 업체명_2
	mfds_igrd_cd_cn_1 varchar(1000) NULL, -- 식약처성분코드내용_1
	mfds_igrd_nm_cn_1 varchar(2000) NULL, -- 식약처성분명내용_1
	mfds_prdct_nm_1 varchar(1000) NULL, -- 식약처제품명_1
	mfds_igrd_cd_cn_2 varchar(1000) NULL, -- 삭약처성분코드내용
	mfds_igrd_nm_cn_2 varchar(2000) NULL, -- 식약처성분명내용_2
	mfds_prdct_nm_2 varchar(1000) NULL, -- 식약처제품명_2
	slry_se_cd_2 bpchar(1) NULL, -- 급여구분코드_2
	ancmnt_no bpchar(8) NULL, -- 고시번호
	ancmnt_aplcn_ymd bpchar(8) NULL, -- 고시적용일자
	condi_rsn varchar(2000) NULL, -- 금기사유
	rmrk_cn varchar(4000) NULL, -- 비고내용
	aplcn_ym bpchar(6) NULL, -- 적용연월
	oper_stts_cd bpchar(1) NULL, -- 운영상태코드
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_dur_conc_bann PRIMARY KEY (cth_condi_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_dur_conc_bann IS '대국민포털_DUR병용금기기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.cth_condi_sn IS '병용금기일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.igrd_nm_1 IS '성분명_1';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.igrd_cd_1 IS '성분코드_1';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.prdct_cd_1 IS '제품코드_1';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.prdct_nm_1 IS '제품명_1';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.bzenty_nm_1 IS '업체명_1';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.slry_se_cd_1 IS '급여구분코드_1';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.igrd_nm_2 IS '성분명_2';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.igrd_cd_2 IS '성분코드_2';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.prdct_cd_2 IS '제품코드_2';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.prdct_nm_2 IS '제품명_2';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.bzenty_nm_2 IS '업체명_2';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.mfds_igrd_cd_cn_1 IS '식약처성분코드내용_1';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.mfds_igrd_nm_cn_1 IS '식약처성분명내용_1';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.mfds_prdct_nm_1 IS '식약처제품명_1';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.mfds_igrd_cd_cn_2 IS '삭약처성분코드내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.mfds_igrd_nm_cn_2 IS '식약처성분명내용_2';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.mfds_prdct_nm_2 IS '식약처제품명_2';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.slry_se_cd_2 IS '급여구분코드_2';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.ancmnt_no IS '고시번호';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.ancmnt_aplcn_ymd IS '고시적용일자';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.condi_rsn IS '금기사유';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.rmrk_cn IS '비고내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.aplcn_ym IS '적용연월';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.oper_stts_cd IS '운영상태코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_conc_bann.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_dur_conc_bann ON kids_own.tb_pp_m_dur_conc_bann IS '대국민포털_DUR병용금기기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_dur_conc_bann OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_dur_conc_bann TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_conc_bann TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_conc_bann TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_conc_bann TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_conc_bann TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_conc_bann TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_conc_bann TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_conc_bann TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_conc_bann TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_conc_bann TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_conc_bann TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_conc_bann TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_conc_bann TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_conc_bann TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_conc_bann TO ca_dev;


-- kids_own.tb_pp_m_dur_cpct definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_dur_cpct;

CREATE TABLE kids_own.tb_pp_m_dur_cpct (
	cpct_cutn_sn varchar(50) NOT NULL, -- 용량주의일련번호
	mdcn_cd bpchar(9) NOT NULL, -- 약품코드
	mdcn_nm varchar(1000) NULL, -- 약품명
	gnrl_nm_cd bpchar(9) NOT NULL, -- 일반명코드
	gnrl_nm varchar(1000) NULL, -- 일반명
	day_max_admin_cpct_cn varchar(4000) NOT NULL, -- 일최대투여용량내용
	day_max_admin_crtr_cpct numeric(10, 3) NULL, -- 일최대투여기준용량
	chck_crtr_igrd_cpct numeric(10, 3) NULL, -- 점검기준성분용량
	mfds_igrd_cd_cn varchar(1000) NULL, -- 식약처성분코드내용
	mfds_igrd_nm_cn varchar(2000) NULL, -- 식약처성분명내용
	mfds_prdct_nm varchar(1000) NULL, -- 식약처제품명
	pbanc_ymd bpchar(8) NULL, -- 공고일자
	pbanc_no bpchar(8) NULL, -- 공고번호
	dtl_cn varchar(4000) NULL, -- 상세내용
	slry_se_cd bpchar(1) NULL, -- 급여구분코드
	aplcn_ym bpchar(6) NULL, -- 적용연월
	oper_stts_cd bpchar(1) NULL, -- 운영상태코드
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_dur_cpct PRIMARY KEY (cpct_cutn_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_dur_cpct IS '대국민포털_DUR용량주의기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_dur_cpct.cpct_cutn_sn IS '용량주의일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_cpct.mdcn_cd IS '약품코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_cpct.mdcn_nm IS '약품명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_cpct.gnrl_nm_cd IS '일반명코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_cpct.gnrl_nm IS '일반명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_cpct.day_max_admin_cpct_cn IS '일최대투여용량내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_cpct.day_max_admin_crtr_cpct IS '일최대투여기준용량';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_cpct.chck_crtr_igrd_cpct IS '점검기준성분용량';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_cpct.mfds_igrd_cd_cn IS '식약처성분코드내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_cpct.mfds_igrd_nm_cn IS '식약처성분명내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_cpct.mfds_prdct_nm IS '식약처제품명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_cpct.pbanc_ymd IS '공고일자';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_cpct.pbanc_no IS '공고번호';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_cpct.dtl_cn IS '상세내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_cpct.slry_se_cd IS '급여구분코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_cpct.aplcn_ym IS '적용연월';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_cpct.oper_stts_cd IS '운영상태코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_cpct.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_cpct.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_cpct.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_cpct.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_dur_cpct ON kids_own.tb_pp_m_dur_cpct IS '대국민포털_DUR용량주의기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_dur_cpct OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_dur_cpct TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_cpct TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_cpct TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_cpct TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_cpct TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_cpct TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_cpct TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_cpct TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_cpct TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_cpct TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_cpct TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_cpct TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_cpct TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_cpct TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_cpct TO ca_dev;


-- kids_own.tb_pp_m_dur_dosage definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_dur_dosage;

CREATE TABLE kids_own.tb_pp_m_dur_dosage (
	admin_prd_cutn_sn varchar(50) NOT NULL, -- 투여기간주의일련번호
	mdcn_cd bpchar(9) NOT NULL, -- 약품코드
	mdcn_nm varchar(1000) NULL, -- 약품명
	gnrl_nm_cd bpchar(9) NOT NULL, -- 일반명코드
	gnrl_nm varchar(1000) NULL, -- 일반명
	mfds_igrd_cd_cn varchar(1000) NULL, -- 식약처성분코드내용
	mfds_igrd_nm_cn varchar(2000) NULL, -- 식약처성분명내용
	mfds_prdct_nm varchar(1000) NULL, -- 식약처제품명
	max_admin_prd_day_cnt numeric(4) NOT NULL, -- 최대투여기간일수
	pbanc_ymd bpchar(8) NULL, -- 공고일자
	pbanc_no bpchar(8) NULL, -- 공고번호
	rmrk_cn varchar(4000) NULL, -- 비고내용
	slry_se_cd bpchar(1) NULL, -- 급여구분코드
	aplcn_ym bpchar(6) NULL, -- 적용연월
	oper_stts_cd bpchar(1) NULL, -- 운영상태코드
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_dur_dosage PRIMARY KEY (admin_prd_cutn_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_dur_dosage IS '대국민포털_DUR투여기간주의기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_dur_dosage.admin_prd_cutn_sn IS '투여기간주의일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_dosage.mdcn_cd IS '약품코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_dosage.mdcn_nm IS '약품명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_dosage.gnrl_nm_cd IS '일반명코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_dosage.gnrl_nm IS '일반명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_dosage.mfds_igrd_cd_cn IS '식약처성분코드내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_dosage.mfds_igrd_nm_cn IS '식약처성분명내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_dosage.mfds_prdct_nm IS '식약처제품명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_dosage.max_admin_prd_day_cnt IS '최대투여기간일수';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_dosage.pbanc_ymd IS '공고일자';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_dosage.pbanc_no IS '공고번호';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_dosage.rmrk_cn IS '비고내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_dosage.slry_se_cd IS '급여구분코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_dosage.aplcn_ym IS '적용연월';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_dosage.oper_stts_cd IS '운영상태코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_dosage.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_dosage.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_dosage.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_dosage.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_dur_dosage ON kids_own.tb_pp_m_dur_dosage IS '대국민포털_DUR투여기간주의기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_dur_dosage OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_dur_dosage TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_dosage TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_dosage TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_dosage TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_dosage TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_dosage TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_dosage TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_dosage TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_dosage TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_dosage TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_dosage TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_dosage TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_dosage TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_dosage TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_dosage TO ca_dev;


-- kids_own.tb_pp_m_dur_eftgrp definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_dur_eftgrp;

CREATE TABLE kids_own.tb_pp_m_dur_eftgrp (
	eff_group_dpcn_sn varchar(50) NOT NULL, -- 효능그룹중복일련번호
	eff_group_nm varchar(20) NOT NULL, -- 효능그룹명
	group_nm varchar(20) NOT NULL, -- 그룹명
	group_nm_1 varchar(20) NOT NULL, -- 그룹명_1
	gnrl_nm_cd bpchar(9) NULL, -- 일반명코드
	gnrl_nm varchar(1000) NULL, -- 일반명
	eff_group_dpcn_chck_cd bpchar(8) NOT NULL, -- 효능그룹중복점검코드
	mdcn_cd bpchar(9) NOT NULL, -- 약품코드
	item_nm varchar(1000) NULL, -- 품목명
	bzenty_nm varchar(100) NULL, -- 업체명
	mfds_igrd_cd_cn varchar(1000) NULL, -- 식약처성분코드내용
	mfds_igrd_nm_cn varchar(2000) NULL, -- 식약처성분명내용
	mfds_prdct_nm varchar(1000) NULL, -- 식약처제품명
	pbanc_ymd bpchar(8) NULL, -- 공고일자
	pbanc_no bpchar(8) NULL, -- 공고번호
	slry_se_cd bpchar(1) NULL, -- 급여구분코드
	aplcn_ym bpchar(6) NULL, -- 적용연월
	oper_stts_cd bpchar(1) NULL, -- 운영상태코드
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_dur_eftgrp PRIMARY KEY (eff_group_dpcn_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_dur_eftgrp IS '대국민포털_DUR효능군중복기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_dur_eftgrp.eff_group_dpcn_sn IS '효능그룹중복일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_eftgrp.eff_group_nm IS '효능그룹명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_eftgrp.group_nm IS '그룹명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_eftgrp.group_nm_1 IS '그룹명_1';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_eftgrp.gnrl_nm_cd IS '일반명코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_eftgrp.gnrl_nm IS '일반명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_eftgrp.eff_group_dpcn_chck_cd IS '효능그룹중복점검코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_eftgrp.mdcn_cd IS '약품코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_eftgrp.item_nm IS '품목명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_eftgrp.bzenty_nm IS '업체명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_eftgrp.mfds_igrd_cd_cn IS '식약처성분코드내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_eftgrp.mfds_igrd_nm_cn IS '식약처성분명내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_eftgrp.mfds_prdct_nm IS '식약처제품명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_eftgrp.pbanc_ymd IS '공고일자';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_eftgrp.pbanc_no IS '공고번호';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_eftgrp.slry_se_cd IS '급여구분코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_eftgrp.aplcn_ym IS '적용연월';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_eftgrp.oper_stts_cd IS '운영상태코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_eftgrp.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_eftgrp.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_eftgrp.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_eftgrp.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_dur_eftgrp ON kids_own.tb_pp_m_dur_eftgrp IS '대국민포털_DUR효능군중복기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_dur_eftgrp OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_dur_eftgrp TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_eftgrp TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_eftgrp TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_eftgrp TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_eftgrp TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_eftgrp TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_eftgrp TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_eftgrp TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_eftgrp TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_eftgrp TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_eftgrp TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_eftgrp TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_eftgrp TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_eftgrp TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_eftgrp TO ca_dev;


-- kids_own.tb_pp_m_dur_nursw definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_dur_nursw;

CREATE TABLE kids_own.tb_pp_m_dur_nursw (
	lacp_sn varchar(50) NOT NULL, -- 수유부주의일련번호
	prdct_cd bpchar(9) NOT NULL, -- 제품코드
	igrd_cd varchar(20) NOT NULL, -- 성분코드
	igrd_nm varchar(1000) NULL, -- 성분명
	prdct_nm varchar(1000) NULL, -- 제품명
	bzenty_nm varchar(100) NULL, -- 업체명
	mfds_igrd_cd_cn varchar(1000) NULL, -- 식약처성분코드내용
	mfds_igrd_nm_cn varchar(2000) NULL, -- 식약처성분명내용
	mfds_prdct_nm varchar(1000) NULL, -- 식약처제품명
	pbanc_ymd bpchar(8) NULL, -- 공고일자
	pbanc_no bpchar(8) NULL, -- 공고번호
	aplcn_ym bpchar(6) NULL, -- 적용연월
	rmrk_cn varchar(4000) NULL, -- 비고내용
	slry_se_cd bpchar(1) NULL, -- 급여구분코드
	oper_stts_cd bpchar(1) NULL, -- 운영상태코드
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_dur_nursw PRIMARY KEY (lacp_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_dur_nursw IS '대국민포털_DUR수유부주의기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_dur_nursw.lacp_sn IS '수유부주의일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_nursw.prdct_cd IS '제품코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_nursw.igrd_cd IS '성분코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_nursw.igrd_nm IS '성분명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_nursw.prdct_nm IS '제품명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_nursw.bzenty_nm IS '업체명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_nursw.mfds_igrd_cd_cn IS '식약처성분코드내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_nursw.mfds_igrd_nm_cn IS '식약처성분명내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_nursw.mfds_prdct_nm IS '식약처제품명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_nursw.pbanc_ymd IS '공고일자';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_nursw.pbanc_no IS '공고번호';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_nursw.aplcn_ym IS '적용연월';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_nursw.rmrk_cn IS '비고내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_nursw.slry_se_cd IS '급여구분코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_nursw.oper_stts_cd IS '운영상태코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_nursw.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_nursw.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_nursw.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_nursw.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_dur_nursw ON kids_own.tb_pp_m_dur_nursw IS '대국민포털_DUR수유부주의기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_dur_nursw OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_dur_nursw TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_nursw TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_nursw TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_nursw TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_nursw TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_nursw TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_nursw TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_nursw TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_nursw TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_nursw TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_nursw TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_nursw TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_nursw TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_nursw TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_nursw TO ca_dev;


-- kids_own.tb_pp_m_dur_prgnt_bann definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_dur_prgnt_bann;

CREATE TABLE kids_own.tb_pp_m_dur_prgnt_bann (
	pgw_condi_sn varchar(50) NOT NULL, -- 임부금기일련번호
	igrd_nm varchar(1000) NULL, -- 성분명
	igrd_cd varchar(20) NOT NULL, -- 성분코드
	prdct_cd bpchar(9) NOT NULL, -- 제품코드
	prdct_nm varchar(1000) NULL, -- 제품명
	bzenty_nm varchar(1000) NULL, -- 업체명
	mfds_igrd_cd_cn varchar(1000) NULL, -- 식약처성분코드내용
	mfds_igrd_nm_cn varchar(2000) NULL, -- 식약처성분명내용
	mfds_prdct_nm varchar(1000) NULL, -- 식약처제품명
	ancmnt_ymd bpchar(8) NULL, -- 고시일자
	ancmnt_no bpchar(8) NULL, -- 고시번호
	condi_grd_cd varchar(10) NULL, -- 금기등급코드
	dtl_info_cn varchar(4000) NULL, -- 상세정보내용
	slry_se_cd bpchar(1) NULL, -- 급여구분코드
	aplcn_ym bpchar(6) NULL, -- 적용연월
	oper_stts_cd bpchar(1) NULL, -- 운영상태코드
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_dur_prgnt_bann PRIMARY KEY (pgw_condi_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_dur_prgnt_bann IS '대국민포털_DUR임부금기기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_dur_prgnt_bann.pgw_condi_sn IS '임부금기일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_prgnt_bann.igrd_nm IS '성분명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_prgnt_bann.igrd_cd IS '성분코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_prgnt_bann.prdct_cd IS '제품코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_prgnt_bann.prdct_nm IS '제품명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_prgnt_bann.bzenty_nm IS '업체명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_prgnt_bann.mfds_igrd_cd_cn IS '식약처성분코드내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_prgnt_bann.mfds_igrd_nm_cn IS '식약처성분명내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_prgnt_bann.mfds_prdct_nm IS '식약처제품명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_prgnt_bann.ancmnt_ymd IS '고시일자';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_prgnt_bann.ancmnt_no IS '고시번호';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_prgnt_bann.condi_grd_cd IS '금기등급코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_prgnt_bann.dtl_info_cn IS '상세정보내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_prgnt_bann.slry_se_cd IS '급여구분코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_prgnt_bann.aplcn_ym IS '적용연월';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_prgnt_bann.oper_stts_cd IS '운영상태코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_prgnt_bann.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_prgnt_bann.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_prgnt_bann.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_prgnt_bann.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_dur_prgnt_bann ON kids_own.tb_pp_m_dur_prgnt_bann IS '대국민포털_DUR임부금기기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_dur_prgnt_bann OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_dur_prgnt_bann TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_prgnt_bann TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_prgnt_bann TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_prgnt_bann TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_prgnt_bann TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_prgnt_bann TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_prgnt_bann TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_prgnt_bann TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_prgnt_bann TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_prgnt_bann TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_prgnt_bann TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_prgnt_bann TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_prgnt_bann TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_prgnt_bann TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_prgnt_bann TO ca_dev;


-- kids_own.tb_pp_m_dur_snctz definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_dur_snctz;

CREATE TABLE kids_own.tb_pp_m_dur_snctz (
	snctz_cutn_sn varchar(50) NOT NULL, -- 노인주의일련번호
	prdct_cd bpchar(9) NOT NULL, -- 제품코드
	igrd_nm varchar(1000) NULL, -- 성분명
	igrd_cd varchar(20) NOT NULL, -- 성분코드
	prdct_nm varchar(1000) NULL, -- 제품명
	bzenty_nm varchar(100) NULL, -- 업체명
	mfds_igrd_cd_cn varchar(1000) NULL, -- 식약처성분코드내용
	mfds_igrd_nm_cn varchar(2000) NULL, -- 식약처성분명내용
	mfds_prdct_nm varchar(1000) NULL, -- 식약처제품명
	pbanc_ymd bpchar(8) NULL, -- 공고일자
	pbanc_no bpchar(8) NULL, -- 공고번호
	mdcn_dtl_cn varchar(4000) NULL, -- 약품상세내용
	aplcn_ym bpchar(6) NULL, -- 적용연월
	rmrk_cn varchar(4000) NULL, -- 비고내용
	oper_stts_cd bpchar(1) NULL, -- 운영상태코드
	slry_se_cd bpchar(1) NULL, -- 급여구분코드
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_dur_snctz PRIMARY KEY (snctz_cutn_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_dur_snctz IS '대국민포털_DUR노인주의기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_dur_snctz.snctz_cutn_sn IS '노인주의일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_snctz.prdct_cd IS '제품코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_snctz.igrd_nm IS '성분명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_snctz.igrd_cd IS '성분코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_snctz.prdct_nm IS '제품명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_snctz.bzenty_nm IS '업체명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_snctz.mfds_igrd_cd_cn IS '식약처성분코드내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_snctz.mfds_igrd_nm_cn IS '식약처성분명내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_snctz.mfds_prdct_nm IS '식약처제품명';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_snctz.pbanc_ymd IS '공고일자';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_snctz.pbanc_no IS '공고번호';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_snctz.mdcn_dtl_cn IS '약품상세내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_snctz.aplcn_ym IS '적용연월';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_snctz.rmrk_cn IS '비고내용';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_snctz.oper_stts_cd IS '운영상태코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_snctz.slry_se_cd IS '급여구분코드';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_snctz.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_snctz.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_snctz.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_dur_snctz.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_dur_snctz ON kids_own.tb_pp_m_dur_snctz IS '대국민포털_DUR노인주의기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_dur_snctz OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_dur_snctz TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_snctz TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_snctz TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_snctz TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_snctz TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_snctz TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_snctz TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_snctz TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_snctz TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_snctz TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_snctz TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_snctz TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_snctz TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_snctz TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_dur_snctz TO ca_dev;


-- kids_own.tb_pp_m_emp_info definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_emp_info;

CREATE TABLE kids_own.tb_pp_m_emp_info (
	emp_no varchar(20) NOT NULL, -- 직원번호
	emp_nm varchar(20) NULL, -- 직원명
	dept_no varchar(20) NULL, -- 부서번호
	jbgd_nm varchar(20) NULL, -- 직급명
	encpt_emp_telno varchar(256) NULL, -- 암호화직원전화번호
	encpt_emp_eml_nm varchar(256) NULL, -- 암호화직원이메일명
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_emp_info PRIMARY KEY (emp_no)
);
COMMENT ON TABLE kids_own.tb_pp_m_emp_info IS '대국민포털_KIDS직원정보기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_emp_info.emp_no IS '직원번호';
COMMENT ON COLUMN kids_own.tb_pp_m_emp_info.emp_nm IS '직원명';
COMMENT ON COLUMN kids_own.tb_pp_m_emp_info.dept_no IS '부서번호';
COMMENT ON COLUMN kids_own.tb_pp_m_emp_info.jbgd_nm IS '직급명';
COMMENT ON COLUMN kids_own.tb_pp_m_emp_info.encpt_emp_telno IS '암호화직원전화번호';
COMMENT ON COLUMN kids_own.tb_pp_m_emp_info.encpt_emp_eml_nm IS '암호화직원이메일명';
COMMENT ON COLUMN kids_own.tb_pp_m_emp_info.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_emp_info.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_emp_info.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_emp_info.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_emp_info ON kids_own.tb_pp_m_emp_info IS '대국민포털_KIDS직원정보기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_emp_info OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_emp_info TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_emp_info TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_emp_info TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_emp_info TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_emp_info TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_emp_info TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_emp_info TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_emp_info TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_emp_info TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_emp_info TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_emp_info TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_emp_info TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_emp_info TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_emp_info TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_emp_info TO ca_dev;


-- kids_own.tb_pp_m_exprt_authrt definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_exprt_authrt;

CREATE TABLE kids_own.tb_pp_m_exprt_authrt (
	mbr_no varchar(10) NOT NULL, -- 회원번호
	exprt_task_sn numeric(10) NULL, -- 전문가업무일련번호
	authrt_cd varchar(10) NOT NULL, -- 권한코드
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_exprt_authrt PRIMARY KEY (mbr_no, authrt_cd)
);
COMMENT ON TABLE kids_own.tb_pp_m_exprt_authrt IS '대국민포털_전문가권한기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_exprt_authrt.mbr_no IS '회원번호';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_authrt.exprt_task_sn IS '전문가업무일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_authrt.authrt_cd IS '권한코드';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_authrt.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_authrt.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_authrt.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_authrt.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_exprt_authrt ON kids_own.tb_pp_m_exprt_authrt IS '대국민포털_전문가권한기본 기본키2';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_exprt_authrt OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_exprt_authrt TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_authrt TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_authrt TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_authrt TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_authrt TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_authrt TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_authrt TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_authrt TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_authrt TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_authrt TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_authrt TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_authrt TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_authrt TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_authrt TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_authrt TO ca_dev;


-- kids_own.tb_pp_m_exprt_info definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_exprt_info;

CREATE TABLE kids_own.tb_pp_m_exprt_info (
	exprt_no varchar(20) NOT NULL, -- 전문가번호
	brno bpchar(10) NULL, -- 사업자등록번호
	mbr_no varchar(10) NOT NULL, -- 회원번호
	encpt_exprt_flnm varchar(256) NULL, -- 암호화전문가성명
	encpt_exprt_inst_eml_nm varchar(256) NULL, -- 암호화전문가기관이메일명
	exprt_hdof_yn bpchar(1) NOT NULL, -- 전문가재직여부
	aprv_stts_cd bpchar(1) NOT NULL, -- 승인상태코드
	aprv_prcs_dt timestamp NULL, -- 승인처리일시
	rjct_rsn varchar(4000) NULL, -- 반려사유
	atch_file_group_id varchar(40) NULL, -- 첨부파일그룹아이디
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_exprt_info PRIMARY KEY (exprt_no)
);
COMMENT ON TABLE kids_own.tb_pp_m_exprt_info IS '대국민포털_전문가정보기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_exprt_info.exprt_no IS '전문가번호';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_info.brno IS '사업자등록번호';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_info.mbr_no IS '회원번호';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_info.encpt_exprt_flnm IS '암호화전문가성명';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_info.encpt_exprt_inst_eml_nm IS '암호화전문가기관이메일명';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_info.exprt_hdof_yn IS '전문가재직여부';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_info.aprv_stts_cd IS '승인상태코드';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_info.aprv_prcs_dt IS '승인처리일시';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_info.rjct_rsn IS '반려사유';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_info.atch_file_group_id IS '첨부파일그룹아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_info.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_info.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_info.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_info.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_exprt_info ON kids_own.tb_pp_m_exprt_info IS '대국민포털_전문가정보기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_exprt_info OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_exprt_info TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_info TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_info TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_info TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_info TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_info TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_info TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_info TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_info TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_info TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_info TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_info TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_info TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_info TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_info TO ca_dev;


-- kids_own.tb_pp_m_exprt_task definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_exprt_task;

CREATE TABLE kids_own.tb_pp_m_exprt_task (
	exprt_task_sn numeric(10) NOT NULL, -- 전문가업무일련번호
	exprt_no varchar(20) NOT NULL, -- 전문가번호
	bzmn_task_mng_no varchar(20) NOT NULL, -- 사업자업무관리번호
	aprv_stts_cd bpchar(1) NOT NULL, -- 승인상태코드
	aprv_prcs_dt timestamp NULL, -- 승인처리일시
	rjct_rsn varchar(4000) NULL, -- 반려사유
	wrtr_dept_nm varchar(40) NULL, -- 작성자부서명
	mdfr_dept_nm varchar(40) NULL, -- 수정자부서명
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_exprt_task PRIMARY KEY (exprt_task_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_exprt_task IS '대국민포털_전문가업무기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_exprt_task.exprt_task_sn IS '전문가업무일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_task.exprt_no IS '전문가번호';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_task.bzmn_task_mng_no IS '사업자업무관리번호';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_task.aprv_stts_cd IS '승인상태코드';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_task.aprv_prcs_dt IS '승인처리일시';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_task.rjct_rsn IS '반려사유';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_task.wrtr_dept_nm IS '작성자부서명';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_task.mdfr_dept_nm IS '수정자부서명';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_task.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_task.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_task.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_exprt_task.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_exprt_task ON kids_own.tb_pp_m_exprt_task IS '대국민포털_전문가업무기본 기본키2';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_exprt_task OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_exprt_task TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_task TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_task TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_task TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_task TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_task TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_task TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_task TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_task TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_task TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_task TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_task TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_task TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_task TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_exprt_task TO ca_dev;


-- kids_own.tb_pp_m_faq definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_faq;

CREATE TABLE kids_own.tb_pp_m_faq (
	faq_sn numeric(10) NOT NULL, -- FAQ일련번호
	task_se_cd varchar(10) NOT NULL, -- 업무구분코드
	faq_clsf_nm varchar(80) NULL, -- FAQ분류명
	faq_ttl varchar(256) NULL, -- FAQ제목
	faq_seq numeric(10) NOT NULL, -- FAQ순서
	use_yn bpchar(1) NOT NULL, -- 사용여부
	lang_se_cd bpchar(3) NOT NULL, -- 언어구분코드
	faq_ans_cn varchar(4000) NULL, -- FAQ답변내용
	atch_file_group_id varchar(40) NULL, -- 첨부파일그룹아이디
	wrtr_dept_nm varchar(40) NULL, -- 작성자부서명
	mdfr_dept_nm varchar(40) NULL, -- 수정자부서명
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_faq PRIMARY KEY (faq_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_faq IS '대국민포털_FAQ기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_faq.faq_sn IS 'FAQ일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_faq.task_se_cd IS '업무구분코드';
COMMENT ON COLUMN kids_own.tb_pp_m_faq.faq_clsf_nm IS 'FAQ분류명';
COMMENT ON COLUMN kids_own.tb_pp_m_faq.faq_ttl IS 'FAQ제목';
COMMENT ON COLUMN kids_own.tb_pp_m_faq.faq_seq IS 'FAQ순서';
COMMENT ON COLUMN kids_own.tb_pp_m_faq.use_yn IS '사용여부';
COMMENT ON COLUMN kids_own.tb_pp_m_faq.lang_se_cd IS '언어구분코드';
COMMENT ON COLUMN kids_own.tb_pp_m_faq.faq_ans_cn IS 'FAQ답변내용';
COMMENT ON COLUMN kids_own.tb_pp_m_faq.atch_file_group_id IS '첨부파일그룹아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_faq.wrtr_dept_nm IS '작성자부서명';
COMMENT ON COLUMN kids_own.tb_pp_m_faq.mdfr_dept_nm IS '수정자부서명';
COMMENT ON COLUMN kids_own.tb_pp_m_faq.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_faq.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_faq.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_faq.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_faq ON kids_own.tb_pp_m_faq IS '대국민포털_FAQ기본 기본키2';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_faq OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_faq TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_faq TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_faq TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_faq TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_faq TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_faq TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_faq TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_faq TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_faq TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_faq TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_faq TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_faq TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_faq TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_faq TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_faq TO ca_dev;


-- kids_own.tb_pp_m_file definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_file;

CREATE TABLE kids_own.tb_pp_m_file (
	file_sn numeric(10) NOT NULL, -- 파일일련번호
	atch_file_id varchar(40) NULL, -- 첨부파일아이디
	file_type_cd bpchar(1) NULL, -- 파일유형코드
	file_knd_cd varchar(20) NULL, -- 파일종류코드
	file_ttl_nm varchar(200) NULL, -- 파일제목명
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_file PRIMARY KEY (file_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_file IS '대국민포털_파일기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_file.file_sn IS '파일일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_file.atch_file_id IS '첨부파일아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_file.file_type_cd IS '파일유형코드';
COMMENT ON COLUMN kids_own.tb_pp_m_file.file_knd_cd IS '파일종류코드';
COMMENT ON COLUMN kids_own.tb_pp_m_file.file_ttl_nm IS '파일제목명';
COMMENT ON COLUMN kids_own.tb_pp_m_file.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_file.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_file.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_file.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_file ON kids_own.tb_pp_m_file IS '대국민포털_파일기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_file OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_file TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_file TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_file TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_file TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_file TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_file TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_file TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_file TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_file TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_file TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_file TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_file TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_file TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_file TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_file TO ca_dev;


-- kids_own.tb_pp_m_form definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_form;

CREATE TABLE kids_own.tb_pp_m_form (
	form_sn numeric(22) NOT NULL, -- 양식일련번호
	task_cd varchar(20) NULL, -- 업무코드
	form_nm varchar(40) NULL, -- 양식명
	form_path_nm varchar(256) NULL, -- 양식경로명
	use_yn bpchar(1) NOT NULL, -- 사용여부
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_form PRIMARY KEY (form_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_form IS '대국민포털_양식기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_form.form_sn IS '양식일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_form.task_cd IS '업무코드';
COMMENT ON COLUMN kids_own.tb_pp_m_form.form_nm IS '양식명';
COMMENT ON COLUMN kids_own.tb_pp_m_form.form_path_nm IS '양식경로명';
COMMENT ON COLUMN kids_own.tb_pp_m_form.use_yn IS '사용여부';
COMMENT ON COLUMN kids_own.tb_pp_m_form.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_form.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_form.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_form.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_form ON kids_own.tb_pp_m_form IS '대국민포털_양식기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_form OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_form TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_form TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_form TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_form TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_form TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_form TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_form TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_form TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_form TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_form TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_form TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_form TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_form TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_form TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_form TO ca_dev;


-- kids_own.tb_pp_m_inst definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_inst;

CREATE TABLE kids_own.tb_pp_m_inst (
	brno bpchar(10) NOT NULL, -- 사업자등록번호
	inst_nm varchar(200) NOT NULL, -- 기관명
	del_yn bpchar(1) NOT NULL, -- 삭제여부
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_inst PRIMARY KEY (brno)
);
COMMENT ON TABLE kids_own.tb_pp_m_inst IS '대국민포털_기관정보기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_inst.brno IS '사업자등록번호';
COMMENT ON COLUMN kids_own.tb_pp_m_inst.inst_nm IS '기관명';
COMMENT ON COLUMN kids_own.tb_pp_m_inst.del_yn IS '삭제여부';
COMMENT ON COLUMN kids_own.tb_pp_m_inst.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_inst.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_inst.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_inst.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_inst ON kids_own.tb_pp_m_inst IS '대국민포털_기관정보기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_inst OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_inst TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst TO ca_dev;


-- kids_own.tb_pp_m_inst_task definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_inst_task;

CREATE TABLE kids_own.tb_pp_m_inst_task (
	bzmn_task_mng_no varchar(20) NOT NULL, -- 사업자업무관리번호
	brno bpchar(10) NOT NULL, -- 사업자등록번호
	task_se_cd varchar(10) NOT NULL, -- 업무구분코드
	tkcg_exprt_no varchar(20) NULL, -- 담당전문가번호
	use_yn bpchar(1) NOT NULL, -- 사용여부
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_inst_task PRIMARY KEY (bzmn_task_mng_no)
);
COMMENT ON TABLE kids_own.tb_pp_m_inst_task IS '대국민포털_기관업무기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_inst_task.bzmn_task_mng_no IS '사업자업무관리번호';
COMMENT ON COLUMN kids_own.tb_pp_m_inst_task.brno IS '사업자등록번호';
COMMENT ON COLUMN kids_own.tb_pp_m_inst_task.task_se_cd IS '업무구분코드';
COMMENT ON COLUMN kids_own.tb_pp_m_inst_task.tkcg_exprt_no IS '담당전문가번호';
COMMENT ON COLUMN kids_own.tb_pp_m_inst_task.use_yn IS '사용여부';
COMMENT ON COLUMN kids_own.tb_pp_m_inst_task.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_inst_task.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_inst_task.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_inst_task.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_inst_task ON kids_own.tb_pp_m_inst_task IS '대국민포털_기관업무기본 기본키2';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_inst_task OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_inst_task TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst_task TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst_task TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst_task TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst_task TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst_task TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst_task TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst_task TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst_task TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst_task TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst_task TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst_task TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst_task TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst_task TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_inst_task TO ca_dev;


-- kids_own.tb_pp_m_mbr_info definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_mbr_info;

CREATE TABLE kids_own.tb_pp_m_mbr_info (
	mbr_no varchar(10) NOT NULL, -- 회원번호
	mbr_id varchar(40) NOT NULL, -- 회원아이디
	encpt_mbr_flnm varchar(256) NOT NULL, -- 암호화회원성명
	encpt_mbr_eml_nm varchar(256) NULL, -- 암호화회원이메일명
	encpt_mbr_pswd varchar(256) NOT NULL, -- 암호화회원비밀번호
	encpt_mbr_telno varchar(256) NULL, -- 암호화회원전화번호
	mbr_type_cd bpchar(1) NOT NULL, -- 회원유형코드
	mbr_join_stts_cd bpchar(1) NOT NULL, -- 회원가입상태코드
	mbr_join_dt timestamp NOT NULL, -- 회원가입일시
	mbr_whdwl_rsn varchar(4000) NULL, -- 회원탈퇴사유
	mbr_whdwl_dt timestamp NULL, -- 회원탈퇴일시
	cnstn_mbcmt_yn bpchar(1) NULL, -- 자문위원여부
	encpt_bfr_pswd varchar(256) NULL, -- 이전암호화비밀번호
	pswd_chg_dt timestamp NULL, -- 비밀번호변경일시
	pswd_err_nmtm numeric(2) NULL, -- 비밀번호오류횟수
	link_info_idntf_id varchar(100) NULL, -- 연계정보식별아이디
	cert_token_vl varchar(40) NULL, -- 인증토큰값
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_mbr_info PRIMARY KEY (mbr_no)
);
COMMENT ON TABLE kids_own.tb_pp_m_mbr_info IS '대국민포털_회원정보기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_mbr_info.mbr_no IS '회원번호';
COMMENT ON COLUMN kids_own.tb_pp_m_mbr_info.mbr_id IS '회원아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_mbr_info.encpt_mbr_flnm IS '암호화회원성명';
COMMENT ON COLUMN kids_own.tb_pp_m_mbr_info.encpt_mbr_eml_nm IS '암호화회원이메일명';
COMMENT ON COLUMN kids_own.tb_pp_m_mbr_info.encpt_mbr_pswd IS '암호화회원비밀번호';
COMMENT ON COLUMN kids_own.tb_pp_m_mbr_info.encpt_mbr_telno IS '암호화회원전화번호';
COMMENT ON COLUMN kids_own.tb_pp_m_mbr_info.mbr_type_cd IS '회원유형코드';
COMMENT ON COLUMN kids_own.tb_pp_m_mbr_info.mbr_join_stts_cd IS '회원가입상태코드';
COMMENT ON COLUMN kids_own.tb_pp_m_mbr_info.mbr_join_dt IS '회원가입일시';
COMMENT ON COLUMN kids_own.tb_pp_m_mbr_info.mbr_whdwl_rsn IS '회원탈퇴사유';
COMMENT ON COLUMN kids_own.tb_pp_m_mbr_info.mbr_whdwl_dt IS '회원탈퇴일시';
COMMENT ON COLUMN kids_own.tb_pp_m_mbr_info.cnstn_mbcmt_yn IS '자문위원여부';
COMMENT ON COLUMN kids_own.tb_pp_m_mbr_info.encpt_bfr_pswd IS '이전암호화비밀번호';
COMMENT ON COLUMN kids_own.tb_pp_m_mbr_info.pswd_chg_dt IS '비밀번호변경일시';
COMMENT ON COLUMN kids_own.tb_pp_m_mbr_info.pswd_err_nmtm IS '비밀번호오류횟수';
COMMENT ON COLUMN kids_own.tb_pp_m_mbr_info.link_info_idntf_id IS '연계정보식별아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_mbr_info.cert_token_vl IS '인증토큰값';
COMMENT ON COLUMN kids_own.tb_pp_m_mbr_info.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_mbr_info.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_mbr_info.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_mbr_info.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_mbr_info ON kids_own.tb_pp_m_mbr_info IS '대국민포털_회원정보기본 기본키2';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_mbr_info OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_mbr_info TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mbr_info TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mbr_info TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mbr_info TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mbr_info TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mbr_info TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mbr_info TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mbr_info TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mbr_info TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mbr_info TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mbr_info TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mbr_info TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mbr_info TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mbr_info TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mbr_info TO ca_dev;


-- kids_own.tb_pp_m_menu definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_menu;

CREATE TABLE kids_own.tb_pp_m_menu (
	menu_sn numeric(22) NOT NULL, -- 메뉴일련번호
	menu_nm varchar(100) NULL, -- 메뉴명
	up_menu_sn numeric(22) NULL, -- 상위메뉴일련번호
	task_se_cd varchar(10) NOT NULL, -- 업무구분코드
	menu_type_cd varchar(20) NOT NULL, -- 메뉴유형코드
	lang_se_cd bpchar(3) NOT NULL, -- 언어구분코드
	menu_seq numeric(10) NOT NULL, -- 메뉴순서
	menu_expln varchar(4000) NULL, -- 메뉴설명
	pic_dept_nm varchar(40) NULL, -- 담당자부서명
	pic_flnm varchar(20) NULL, -- 담당자성명
	use_yn bpchar(1) NOT NULL, -- 사용여부
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_menu PRIMARY KEY (menu_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_menu IS '대국민포털_메뉴기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_menu.menu_sn IS '메뉴일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_menu.menu_nm IS '메뉴명';
COMMENT ON COLUMN kids_own.tb_pp_m_menu.up_menu_sn IS '상위메뉴일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_menu.task_se_cd IS '업무구분코드';
COMMENT ON COLUMN kids_own.tb_pp_m_menu.menu_type_cd IS '메뉴유형코드';
COMMENT ON COLUMN kids_own.tb_pp_m_menu.lang_se_cd IS '언어구분코드';
COMMENT ON COLUMN kids_own.tb_pp_m_menu.menu_seq IS '메뉴순서';
COMMENT ON COLUMN kids_own.tb_pp_m_menu.menu_expln IS '메뉴설명';
COMMENT ON COLUMN kids_own.tb_pp_m_menu.pic_dept_nm IS '담당자부서명';
COMMENT ON COLUMN kids_own.tb_pp_m_menu.pic_flnm IS '담당자성명';
COMMENT ON COLUMN kids_own.tb_pp_m_menu.use_yn IS '사용여부';
COMMENT ON COLUMN kids_own.tb_pp_m_menu.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_menu.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_menu.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_menu.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_menu ON kids_own.tb_pp_m_menu IS '대국민포털_메뉴기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_menu OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_menu TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_menu TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_menu TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_menu TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_menu TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_menu TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_menu TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_menu TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_menu TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_menu TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_menu TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_menu TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_menu TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_menu TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_menu TO ca_dev;


-- kids_own.tb_pp_m_mngr_info definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_mngr_info;

CREATE TABLE kids_own.tb_pp_m_mngr_info (
	emp_no varchar(20) NOT NULL, -- 직원번호
	encpt_mngr_pswd varchar(256) NULL, -- 암호화관리자비밀번호
	tmpr_pswd_yn bpchar(1) NOT NULL, -- 임시비밀번호여부
	pswd_err_nmtm numeric(2) NOT NULL, -- 비밀번호오류횟수
	encpt_bfr_pswd varchar(256) NULL, -- 암호화이전비밀번호
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_mngr_info PRIMARY KEY (emp_no)
);
COMMENT ON TABLE kids_own.tb_pp_m_mngr_info IS '대국민포털_관리자정보기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_mngr_info.emp_no IS '직원번호';
COMMENT ON COLUMN kids_own.tb_pp_m_mngr_info.encpt_mngr_pswd IS '암호화관리자비밀번호';
COMMENT ON COLUMN kids_own.tb_pp_m_mngr_info.tmpr_pswd_yn IS '임시비밀번호여부';
COMMENT ON COLUMN kids_own.tb_pp_m_mngr_info.pswd_err_nmtm IS '비밀번호오류횟수';
COMMENT ON COLUMN kids_own.tb_pp_m_mngr_info.encpt_bfr_pswd IS '암호화이전비밀번호';
COMMENT ON COLUMN kids_own.tb_pp_m_mngr_info.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_mngr_info.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_mngr_info.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_mngr_info.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_mngr_info ON kids_own.tb_pp_m_mngr_info IS '대국민포털_관리자정보기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_mngr_info OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_mngr_info TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mngr_info TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mngr_info TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mngr_info TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mngr_info TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mngr_info TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mngr_info TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mngr_info TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mngr_info TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mngr_info TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mngr_info TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mngr_info TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mngr_info TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mngr_info TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_mngr_info TO ca_dev;


-- kids_own.tb_pp_m_opnn definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_opnn;

CREATE TABLE kids_own.tb_pp_m_opnn (
	opnn_sn numeric(22) NOT NULL, -- 의견일련번호
	encpt_wrtr_flnm varchar(256) NULL, -- 암호화작성자성명
	encpt_wrtr_telno varchar(256) NULL, -- 암호화작성자전화번호
	encpt_mbr_eml_nm varchar(256) NULL, -- 암호화회원이메일명
	wrt_se_cd bpchar(3) NOT NULL, -- 작성구분코드
	pbpt_cn varchar(4000) NULL, -- 문제점내용
	dmnd_mttr_cn varchar(4000) NULL, -- 요청사항내용
	dmnd_mttr_dtl_cn text NULL, -- 요청사항상세내용
	ref_mttr_cn varchar(4000) NULL, -- 참고사항내용
	insd_ref_mttr_cn text NULL, -- 내부참고사항내용
	atch_file_group_id varchar(40) NULL, -- 첨부파일그룹아이디
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_opnn PRIMARY KEY (opnn_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_opnn IS '대국민포털_의견제안기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_opnn.opnn_sn IS '의견일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_opnn.encpt_wrtr_flnm IS '암호화작성자성명';
COMMENT ON COLUMN kids_own.tb_pp_m_opnn.encpt_wrtr_telno IS '암호화작성자전화번호';
COMMENT ON COLUMN kids_own.tb_pp_m_opnn.encpt_mbr_eml_nm IS '암호화회원이메일명';
COMMENT ON COLUMN kids_own.tb_pp_m_opnn.wrt_se_cd IS '작성구분코드';
COMMENT ON COLUMN kids_own.tb_pp_m_opnn.pbpt_cn IS '문제점내용';
COMMENT ON COLUMN kids_own.tb_pp_m_opnn.dmnd_mttr_cn IS '요청사항내용';
COMMENT ON COLUMN kids_own.tb_pp_m_opnn.dmnd_mttr_dtl_cn IS '요청사항상세내용';
COMMENT ON COLUMN kids_own.tb_pp_m_opnn.ref_mttr_cn IS '참고사항내용';
COMMENT ON COLUMN kids_own.tb_pp_m_opnn.insd_ref_mttr_cn IS '내부참고사항내용';
COMMENT ON COLUMN kids_own.tb_pp_m_opnn.atch_file_group_id IS '첨부파일그룹아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_opnn.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_opnn.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_opnn.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_opnn.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_opnn ON kids_own.tb_pp_m_opnn IS '대국민포털_의견제안기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_opnn OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_opnn TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_opnn TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_opnn TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_opnn TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_opnn TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_opnn TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_opnn TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_opnn TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_opnn TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_opnn TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_opnn TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_opnn TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_opnn TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_opnn TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_opnn TO ca_dev;


-- kids_own.tb_pp_m_pic_authrt definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_pic_authrt;

CREATE TABLE kids_own.tb_pp_m_pic_authrt (
	emp_no varchar(20) NOT NULL, -- 직원번호
	authrt_cd varchar(10) NOT NULL, -- 권한코드
	pic_authrt_rmrk_cn varchar(1000) NULL, -- 담당자권한비고내용
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_pic_authrt PRIMARY KEY (emp_no, authrt_cd)
);
COMMENT ON TABLE kids_own.tb_pp_m_pic_authrt IS '대국민포털_담당자권한기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_pic_authrt.emp_no IS '직원번호';
COMMENT ON COLUMN kids_own.tb_pp_m_pic_authrt.authrt_cd IS '권한코드';
COMMENT ON COLUMN kids_own.tb_pp_m_pic_authrt.pic_authrt_rmrk_cn IS '담당자권한비고내용';
COMMENT ON COLUMN kids_own.tb_pp_m_pic_authrt.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_pic_authrt.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_pic_authrt.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_pic_authrt.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_pic_authrt ON kids_own.tb_pp_m_pic_authrt IS '대국민포털_담당자권한기본 기본키2';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_pic_authrt OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_pic_authrt TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pic_authrt TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pic_authrt TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pic_authrt TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pic_authrt TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pic_authrt TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pic_authrt TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pic_authrt TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pic_authrt TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pic_authrt TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pic_authrt TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pic_authrt TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pic_authrt TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pic_authrt TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pic_authrt TO ca_dev;


-- kids_own.tb_pp_m_popup definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_popup;

CREATE TABLE kids_own.tb_pp_m_popup (
	popup_sn numeric(10) NOT NULL, -- 팝업일련번호
	popup_ttl varchar(100) NULL, -- 팝업제목
	popup_pstg_bgng_dt timestamp NOT NULL, -- 팝업게시시작일시
	popup_pstg_end_dt timestamp NOT NULL, -- 팝업게시종료일시
	popup_lnkg_addr varchar(320) NULL, -- 팝업연결주소
	popup_seq numeric(10) NOT NULL, -- 팝업순서
	popup_pstg_yn bpchar(1) NOT NULL, -- 팝업게시여부
	popup_npag_yn bpchar(1) NOT NULL, -- 팝업새창여부
	popup_expln varchar(4000) NULL, -- 팝업설명
	atch_file_group_id varchar(40) NULL, -- 첨부파일그룹아이디
	wrtr_dept_nm varchar(40) NULL, -- 작성자부서명
	mdfr_dept_nm varchar(40) NULL, -- 수정자부서명
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_popup PRIMARY KEY (popup_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_popup IS '대국민포털_팝업기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_popup.popup_sn IS '팝업일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_popup.popup_ttl IS '팝업제목';
COMMENT ON COLUMN kids_own.tb_pp_m_popup.popup_pstg_bgng_dt IS '팝업게시시작일시';
COMMENT ON COLUMN kids_own.tb_pp_m_popup.popup_pstg_end_dt IS '팝업게시종료일시';
COMMENT ON COLUMN kids_own.tb_pp_m_popup.popup_lnkg_addr IS '팝업연결주소';
COMMENT ON COLUMN kids_own.tb_pp_m_popup.popup_seq IS '팝업순서';
COMMENT ON COLUMN kids_own.tb_pp_m_popup.popup_pstg_yn IS '팝업게시여부';
COMMENT ON COLUMN kids_own.tb_pp_m_popup.popup_npag_yn IS '팝업새창여부';
COMMENT ON COLUMN kids_own.tb_pp_m_popup.popup_expln IS '팝업설명';
COMMENT ON COLUMN kids_own.tb_pp_m_popup.atch_file_group_id IS '첨부파일그룹아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_popup.wrtr_dept_nm IS '작성자부서명';
COMMENT ON COLUMN kids_own.tb_pp_m_popup.mdfr_dept_nm IS '수정자부서명';
COMMENT ON COLUMN kids_own.tb_pp_m_popup.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_popup.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_popup.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_popup.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_popup ON kids_own.tb_pp_m_popup IS '대국민포털_팝업기본 기본키2';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_popup OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_popup TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_popup TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_popup TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_popup TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_popup TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_popup TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_popup TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_popup TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_popup TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_popup TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_popup TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_popup TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_popup TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_popup TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_popup TO ca_dev;


-- kids_own.tb_pp_m_prvc_acs_hstry definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_prvc_acs_hstry;

CREATE TABLE kids_own.tb_pp_m_prvc_acs_hstry (
	prvc_acs_sn numeric(10) NOT NULL, -- 개인정보접근일련번호
	inq_crtr_dt timestamp NOT NULL, -- 조회기준일시
	srvc_cd bpchar(2) NOT NULL, -- 서비스코드
	menu_sn numeric(22) NULL, -- 메뉴일련번호
	메소드명 varchar(100) NOT NULL, -- 메소드명
	inq_info_cn varchar(1000) NOT NULL, -- 조회정보내용
	rqstr_id varchar(40) NOT NULL, -- 요청자아이디
	rqstr_ip_addr varchar(255) NULL, -- 요청자IP주소
	inq_cnd_cn varchar(4000) NOT NULL, -- 조회조건내용
	inq_telgm_cn text NOT NULL, -- 조회전문내용
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_prvc_acs_hstry PRIMARY KEY (prvc_acs_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_prvc_acs_hstry IS '대국민포털_개인정보접근이력기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_prvc_acs_hstry.prvc_acs_sn IS '개인정보접근일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_prvc_acs_hstry.inq_crtr_dt IS '조회기준일시';
COMMENT ON COLUMN kids_own.tb_pp_m_prvc_acs_hstry.srvc_cd IS '서비스코드';
COMMENT ON COLUMN kids_own.tb_pp_m_prvc_acs_hstry.menu_sn IS '메뉴일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_prvc_acs_hstry.메소드명 IS '메소드명';
COMMENT ON COLUMN kids_own.tb_pp_m_prvc_acs_hstry.inq_info_cn IS '조회정보내용';
COMMENT ON COLUMN kids_own.tb_pp_m_prvc_acs_hstry.rqstr_id IS '요청자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_prvc_acs_hstry.rqstr_ip_addr IS '요청자IP주소';
COMMENT ON COLUMN kids_own.tb_pp_m_prvc_acs_hstry.inq_cnd_cn IS '조회조건내용';
COMMENT ON COLUMN kids_own.tb_pp_m_prvc_acs_hstry.inq_telgm_cn IS '조회전문내용';
COMMENT ON COLUMN kids_own.tb_pp_m_prvc_acs_hstry.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_prvc_acs_hstry.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_prvc_acs_hstry.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_prvc_acs_hstry.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_prvc_acs_hstry ON kids_own.tb_pp_m_prvc_acs_hstry IS '대국민포털_개인정보접근이력기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_prvc_acs_hstry OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_prvc_acs_hstry TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_prvc_acs_hstry TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_prvc_acs_hstry TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_prvc_acs_hstry TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_prvc_acs_hstry TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_prvc_acs_hstry TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_prvc_acs_hstry TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_prvc_acs_hstry TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_prvc_acs_hstry TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_prvc_acs_hstry TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_prvc_acs_hstry TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_prvc_acs_hstry TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_prvc_acs_hstry TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_prvc_acs_hstry TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_prvc_acs_hstry TO ca_dev;


-- kids_own.tb_pp_m_pst definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_pst;

CREATE TABLE kids_own.tb_pp_m_pst (
	pst_sn numeric(22) NOT NULL, -- 게시물일련번호
	bbs_id varchar(20) NOT NULL, -- 게시판아이디
	pst_ttl varchar(100) NULL, -- 게시물제목
	pst_cn text NULL, -- 게시물내용
	pst_inq_cnt numeric(10) NOT NULL, -- 게시물조회수
	pst_kogl_cprgt_type_cd bpchar(1) NULL, -- 게시물공공누리저작권유형코드
	atch_file_group_id varchar(40) NULL, -- 첨부파일그룹아이디
	thmb_id varchar(40) NULL, -- 썸네일아이디
	fix_yn bpchar(1) NOT NULL, -- 고정여부
	fix_bgng_ymd bpchar(8) NULL, -- 고정시작일자
	fix_end_ymd bpchar(8) NULL, -- 고정종료일자
	vdo_url_addr varchar(200) NULL, -- 동영상URL주소
	expsr_yn bpchar(1) NOT NULL, -- 노출여부
	wrtr_dept_nm varchar(80) NULL, -- 작성자부서명
	mdfr_dept_nm varchar(80) NULL, -- 수정자부서명
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_pst PRIMARY KEY (pst_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_pst IS '대국민포털_게시물기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_pst.pst_sn IS '게시물일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_pst.bbs_id IS '게시판아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_pst.pst_ttl IS '게시물제목';
COMMENT ON COLUMN kids_own.tb_pp_m_pst.pst_cn IS '게시물내용';
COMMENT ON COLUMN kids_own.tb_pp_m_pst.pst_inq_cnt IS '게시물조회수';
COMMENT ON COLUMN kids_own.tb_pp_m_pst.pst_kogl_cprgt_type_cd IS '게시물공공누리저작권유형코드';
COMMENT ON COLUMN kids_own.tb_pp_m_pst.atch_file_group_id IS '첨부파일그룹아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_pst.thmb_id IS '썸네일아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_pst.fix_yn IS '고정여부';
COMMENT ON COLUMN kids_own.tb_pp_m_pst.fix_bgng_ymd IS '고정시작일자';
COMMENT ON COLUMN kids_own.tb_pp_m_pst.fix_end_ymd IS '고정종료일자';
COMMENT ON COLUMN kids_own.tb_pp_m_pst.vdo_url_addr IS '동영상URL주소';
COMMENT ON COLUMN kids_own.tb_pp_m_pst.expsr_yn IS '노출여부';
COMMENT ON COLUMN kids_own.tb_pp_m_pst.wrtr_dept_nm IS '작성자부서명';
COMMENT ON COLUMN kids_own.tb_pp_m_pst.mdfr_dept_nm IS '수정자부서명';
COMMENT ON COLUMN kids_own.tb_pp_m_pst.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_pst.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_pst.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_pst.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_pst ON kids_own.tb_pp_m_pst IS '대국민포털_게시물기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_pst OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_pst TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pst TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pst TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pst TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pst TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pst TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pst TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pst TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pst TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pst TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pst TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pst TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pst TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pst TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_pst TO ca_dev;


-- kids_own.tb_pp_m_role definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_role;

CREATE TABLE kids_own.tb_pp_m_role (
	role_cd varchar(20) NOT NULL, -- 역할코드
	role_nm varchar(40) NULL, -- 역할명
	role_type_cd varchar(20) NULL, -- 역할유형코드
	role_expln_cn varchar(4000) NULL, -- 역할설명내용
	use_yn bpchar(1) NOT NULL, -- 사용여부
	wrtr_dept_nm varchar(40) NULL, -- 작성자부서명
	mdfr_dept_nm varchar(40) NULL, -- 수정자부서명
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_role PRIMARY KEY (role_cd)
);
COMMENT ON TABLE kids_own.tb_pp_m_role IS '대국민포털_역할기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_role.role_cd IS '역할코드';
COMMENT ON COLUMN kids_own.tb_pp_m_role.role_nm IS '역할명';
COMMENT ON COLUMN kids_own.tb_pp_m_role.role_type_cd IS '역할유형코드';
COMMENT ON COLUMN kids_own.tb_pp_m_role.role_expln_cn IS '역할설명내용';
COMMENT ON COLUMN kids_own.tb_pp_m_role.use_yn IS '사용여부';
COMMENT ON COLUMN kids_own.tb_pp_m_role.wrtr_dept_nm IS '작성자부서명';
COMMENT ON COLUMN kids_own.tb_pp_m_role.mdfr_dept_nm IS '수정자부서명';
COMMENT ON COLUMN kids_own.tb_pp_m_role.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_role.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_role.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_role.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_role ON kids_own.tb_pp_m_role IS '대국민포털_역할기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_role OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_role TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_role TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_role TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_role TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_role TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_role TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_role TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_role TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_role TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_role TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_role TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_role TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_role TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_role TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_role TO ca_dev;


-- kids_own.tb_pp_m_stty_agt_info definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_stty_agt_info;

CREATE TABLE kids_own.tb_pp_m_stty_agt_info (
	mbr_no varchar(10) NOT NULL, -- 회원번호
	stty_agt_nm varchar(20) NULL, -- 법정대리인명
	encpt_stty_agt_telno varchar(256) NULL, -- 암호화법정대리인전화번호
	stty_agt_rel_nm varchar(20) NULL, -- 법정대리인관계명
	link_info_idntf_id varchar(100) NULL, -- 연계정보식별아이디
	cert_token_vl varchar(40) NULL, -- 인증토큰값
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_stty_agt_info PRIMARY KEY (mbr_no)
);
COMMENT ON TABLE kids_own.tb_pp_m_stty_agt_info IS '대국민포털_법정대리인정보기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_stty_agt_info.mbr_no IS '회원번호';
COMMENT ON COLUMN kids_own.tb_pp_m_stty_agt_info.stty_agt_nm IS '법정대리인명';
COMMENT ON COLUMN kids_own.tb_pp_m_stty_agt_info.encpt_stty_agt_telno IS '암호화법정대리인전화번호';
COMMENT ON COLUMN kids_own.tb_pp_m_stty_agt_info.stty_agt_rel_nm IS '법정대리인관계명';
COMMENT ON COLUMN kids_own.tb_pp_m_stty_agt_info.link_info_idntf_id IS '연계정보식별아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_stty_agt_info.cert_token_vl IS '인증토큰값';
COMMENT ON COLUMN kids_own.tb_pp_m_stty_agt_info.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_stty_agt_info.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_stty_agt_info.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_stty_agt_info.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_stty_agt_info ON kids_own.tb_pp_m_stty_agt_info IS '대국민포털_법정대리인정보기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_stty_agt_info OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_stty_agt_info TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_stty_agt_info TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_stty_agt_info TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_stty_agt_info TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_stty_agt_info TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_stty_agt_info TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_stty_agt_info TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_stty_agt_info TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_stty_agt_info TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_stty_agt_info TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_stty_agt_info TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_stty_agt_info TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_stty_agt_info TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_stty_agt_info TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_stty_agt_info TO ca_dev;


-- kids_own.tb_pp_m_task_cd definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_task_cd;

CREATE TABLE kids_own.tb_pp_m_task_cd (
	task_cd varchar(20) NOT NULL, -- 업무코드
	task_cd_nm varchar(200) NULL, -- 업무코드명
	up_task_cd varchar(20) NULL, -- 상위업무코드
	task_cd_vl varchar(100) NULL, -- 업무코드값
	task_cd_expln varchar(4000) NULL, -- 업무코드설명
	use_yn bpchar(1) NOT NULL, -- 사용여부
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_task_cd PRIMARY KEY (task_cd)
);
COMMENT ON TABLE kids_own.tb_pp_m_task_cd IS '대국민포털_업무코드기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_task_cd.task_cd IS '업무코드';
COMMENT ON COLUMN kids_own.tb_pp_m_task_cd.task_cd_nm IS '업무코드명';
COMMENT ON COLUMN kids_own.tb_pp_m_task_cd.up_task_cd IS '상위업무코드';
COMMENT ON COLUMN kids_own.tb_pp_m_task_cd.task_cd_vl IS '업무코드값';
COMMENT ON COLUMN kids_own.tb_pp_m_task_cd.task_cd_expln IS '업무코드설명';
COMMENT ON COLUMN kids_own.tb_pp_m_task_cd.use_yn IS '사용여부';
COMMENT ON COLUMN kids_own.tb_pp_m_task_cd.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_task_cd.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_task_cd.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_task_cd.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_task_cd ON kids_own.tb_pp_m_task_cd IS '대국민포털_업무코드기본 기본키2';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_task_cd OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_task_cd TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_task_cd TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_task_cd TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_task_cd TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_task_cd TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_task_cd TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_task_cd TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_task_cd TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_task_cd TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_task_cd TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_task_cd TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_task_cd TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_task_cd TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_task_cd TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_task_cd TO ca_dev;


-- kids_own.tb_pp_m_trm definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_trm;

CREATE TABLE kids_own.tb_pp_m_trm (
	std_trm_nm varchar(100) NOT NULL, -- 표준용어명
	sys_se_nm varchar(40) NULL, -- 시스템구분명
	artcl_sou_nm varchar(40) NULL, -- 항목원천명
	std_trm_eng_abbr_nm varchar(40) NULL, -- 표준용어영문약어명
	atrb_type_nm varchar(40) NULL, -- 속성유형명
	com_std_dmn_nm varchar(100) NULL, -- 공통표준도메인명
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_trm PRIMARY KEY (std_trm_nm)
);
COMMENT ON TABLE kids_own.tb_pp_m_trm IS '대국민포털_용어기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_trm.std_trm_nm IS '표준용어명';
COMMENT ON COLUMN kids_own.tb_pp_m_trm.sys_se_nm IS '시스템구분명';
COMMENT ON COLUMN kids_own.tb_pp_m_trm.artcl_sou_nm IS '항목원천명';
COMMENT ON COLUMN kids_own.tb_pp_m_trm.std_trm_eng_abbr_nm IS '표준용어영문약어명';
COMMENT ON COLUMN kids_own.tb_pp_m_trm.atrb_type_nm IS '속성유형명';
COMMENT ON COLUMN kids_own.tb_pp_m_trm.com_std_dmn_nm IS '공통표준도메인명';
COMMENT ON COLUMN kids_own.tb_pp_m_trm.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_trm.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_trm.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_trm.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_trm ON kids_own.tb_pp_m_trm IS '대국민포털_용어기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_trm OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_trm TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trm TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trm TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trm TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trm TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trm TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trm TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trm TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trm TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trm TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trm TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trm TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trm TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trm TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trm TO ca_dev;


-- kids_own.tb_pp_m_trms_stt definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_trms_stt;

CREATE TABLE kids_own.tb_pp_m_trms_stt (
	trms_stt_sn numeric(10) NOT NULL, -- 약관법령일련번호
	trms_stt_cd varchar(20) NOT NULL, -- 약관법령코드
	trms_stt_aplcn_ymd bpchar(8) NOT NULL, -- 약관법령적용일자
	trms_stt_end_ymd bpchar(8) NULL, -- 약관법령종료일자
	trms_stt_cn text NULL, -- 약관법령내용
	atch_file_group_id varchar(40) NULL, -- 첨부파일그룹아이디
	wrtr_dept_nm varchar(40) NULL, -- 작성자부서명
	mdfr_dept_nm varchar(40) NULL, -- 수정자부서명
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_trms_stt PRIMARY KEY (trms_stt_sn)
);
COMMENT ON TABLE kids_own.tb_pp_m_trms_stt IS '대국민포털_약관법령기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_trms_stt.trms_stt_sn IS '약관법령일련번호';
COMMENT ON COLUMN kids_own.tb_pp_m_trms_stt.trms_stt_cd IS '약관법령코드';
COMMENT ON COLUMN kids_own.tb_pp_m_trms_stt.trms_stt_aplcn_ymd IS '약관법령적용일자';
COMMENT ON COLUMN kids_own.tb_pp_m_trms_stt.trms_stt_end_ymd IS '약관법령종료일자';
COMMENT ON COLUMN kids_own.tb_pp_m_trms_stt.trms_stt_cn IS '약관법령내용';
COMMENT ON COLUMN kids_own.tb_pp_m_trms_stt.atch_file_group_id IS '첨부파일그룹아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_trms_stt.wrtr_dept_nm IS '작성자부서명';
COMMENT ON COLUMN kids_own.tb_pp_m_trms_stt.mdfr_dept_nm IS '수정자부서명';
COMMENT ON COLUMN kids_own.tb_pp_m_trms_stt.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_trms_stt.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_trms_stt.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_trms_stt.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_trms_stt ON kids_own.tb_pp_m_trms_stt IS '대국민포털_약관법령기본 기본키2';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_trms_stt OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_trms_stt TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trms_stt TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trms_stt TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trms_stt TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trms_stt TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trms_stt TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trms_stt TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trms_stt TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trms_stt TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trms_stt TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trms_stt TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trms_stt TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trms_stt TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trms_stt TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_trms_stt TO ca_dev;


-- kids_own.tb_pp_m_word definition

-- Drop table

-- DROP TABLE kids_own.tb_pp_m_word;

CREATE TABLE kids_own.tb_pp_m_word (
	com_std_word_nm varchar(100) NOT NULL, -- 공통표준단어명
	sys_se_nm varchar(40) NULL, -- 시스템구분명
	artcl_sou_nm varchar(40) NULL, -- 항목원천명
	com_std_word_eng_abbr_nm varchar(40) NULL, -- 공통표준단어영문약어명
	com_std_word_eng_nm varchar(256) NULL, -- 공통표준단어영문명
	com_std_word_expln varchar(4000) NULL, -- 공통표준단어설명
	frm_word_yn bpchar(1) NULL, -- 형식단어여부
	rgtr_id varchar(40) NOT NULL, -- 등록자아이디
	reg_dt timestamp NOT NULL, -- 등록일시
	mdfr_id varchar(40) NOT NULL, -- 수정자아이디
	mdfcn_dt timestamp NOT NULL, -- 수정일시
	CONSTRAINT pk_tb_pp_m_word PRIMARY KEY (com_std_word_nm)
);
COMMENT ON TABLE kids_own.tb_pp_m_word IS '대국민포털_단어기본';

-- Column comments

COMMENT ON COLUMN kids_own.tb_pp_m_word.com_std_word_nm IS '공통표준단어명';
COMMENT ON COLUMN kids_own.tb_pp_m_word.sys_se_nm IS '시스템구분명';
COMMENT ON COLUMN kids_own.tb_pp_m_word.artcl_sou_nm IS '항목원천명';
COMMENT ON COLUMN kids_own.tb_pp_m_word.com_std_word_eng_abbr_nm IS '공통표준단어영문약어명';
COMMENT ON COLUMN kids_own.tb_pp_m_word.com_std_word_eng_nm IS '공통표준단어영문명';
COMMENT ON COLUMN kids_own.tb_pp_m_word.com_std_word_expln IS '공통표준단어설명';
COMMENT ON COLUMN kids_own.tb_pp_m_word.frm_word_yn IS '형식단어여부';
COMMENT ON COLUMN kids_own.tb_pp_m_word.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_word.reg_dt IS '등록일시';
COMMENT ON COLUMN kids_own.tb_pp_m_word.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN kids_own.tb_pp_m_word.mdfcn_dt IS '수정일시';

-- Constraint comments

COMMENT ON CONSTRAINT pk_tb_pp_m_word ON kids_own.tb_pp_m_word IS '대국민포털_단어기본 기본키';

-- Permissions

ALTER TABLE kids_own.tb_pp_m_word OWNER TO kids_own;
GRANT ALL ON TABLE kids_own.tb_pp_m_word TO kids_own;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_word TO bo_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_word TO bo_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_word TO cm_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_word TO cm_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_word TO cr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_word TO cr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_word TO dr_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_word TO dr_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_word TO ex_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_word TO ex_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_word TO pp_dev;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_word TO pp_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_word TO ca_app;
GRANT DELETE, UPDATE, SELECT, INSERT ON TABLE kids_own.tb_pp_m_word TO ca_dev;
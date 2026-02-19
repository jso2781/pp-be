/*
tb_ca_m_mbr_token

칼럼명 변경(칼럼명칭 변경)에 따른 소스 변경(mapper, xml , java)

app_id --> prgrm_id
AppId --> PrgrmId
appId --> prgrmId
애플리케이션ID --> 프로그램아이디
앱ID --> 프로그램아이디

refresh_token --> updt_token_cn
RefreshToken --> UpdtTokenCn
refreshToken --> updtTokenCn
리프레시 토큰 --> 갱신토큰내용

access_token --> acs_token_cn
AccessToken --> AcsTokenCn
accessToken --> acsTokenCn
액세스토큰 --> 접근토큰내용

APP_ID --> PRGRM_ID
.env
.env.development
.env.localout
.env.production
README.md
shared/utils/https.ts
src/pages/ko/auth/Login.tsx


*/
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
GRANT DELETE, UPDATE, INSERT, SELECT ON TABLE kids_own.tb_ca_m_mbr_token TO ca_app;
GRANT DELETE, UPDATE, INSERT, SELECT ON TABLE kids_own.tb_ca_m_mbr_token TO ca_dev;
GRANT DELETE, UPDATE, INSERT, SELECT ON TABLE kids_own.tb_ca_m_mbr_token TO bo_app;
GRANT DELETE, UPDATE, INSERT, SELECT ON TABLE kids_own.tb_ca_m_mbr_token TO bo_dev;
GRANT DELETE, UPDATE, INSERT, SELECT ON TABLE kids_own.tb_ca_m_mbr_token TO cm_app;
GRANT DELETE, UPDATE, INSERT, SELECT ON TABLE kids_own.tb_ca_m_mbr_token TO cm_dev;
GRANT DELETE, UPDATE, INSERT, SELECT ON TABLE kids_own.tb_ca_m_mbr_token TO cr_app;
GRANT DELETE, UPDATE, INSERT, SELECT ON TABLE kids_own.tb_ca_m_mbr_token TO cr_dev;
GRANT DELETE, UPDATE, INSERT, SELECT ON TABLE kids_own.tb_ca_m_mbr_token TO dr_app;
GRANT DELETE, UPDATE, INSERT, SELECT ON TABLE kids_own.tb_ca_m_mbr_token TO dr_dev;
GRANT DELETE, UPDATE, INSERT, SELECT ON TABLE kids_own.tb_ca_m_mbr_token TO ex_app;
GRANT DELETE, UPDATE, INSERT, SELECT ON TABLE kids_own.tb_ca_m_mbr_token TO ex_dev;
GRANT DELETE, UPDATE, INSERT, SELECT ON TABLE kids_own.tb_ca_m_mbr_token TO pp_dev;
GRANT DELETE, UPDATE, INSERT, SELECT ON TABLE kids_own.tb_ca_m_mbr_token TO pp_app;
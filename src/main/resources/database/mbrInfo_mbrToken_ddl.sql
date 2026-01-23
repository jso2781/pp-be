-- 대국민포털_회원정보기본
CREATE TABLE "TB_PP_M_MBR_INFO"
(
	"mbr_no"             VARCHAR(10)   NOT NULL, -- 회원번호
	"mbr_id"             VARCHAR(20)   NOT NULL, -- 회원아이디
	"encpt_mbr_flnm"     VARCHAR(20)   NOT NULL, -- 회원암호화성명
	"encpt_mbr_eml_nm"      VARCHAR(100)  NULL,     -- 회원암호화이메일
	"encpt_mbr_pswd"         VARCHAR(100)  NOT NULL, -- 회원암호화비밀번호
	"encpt_mbr_telno"    VARCHAR(11)   NULL,     -- 회원암호화전화번호
	"mbr_type_cd"        CHAR(1)       NOT NULL, -- 회원유형코드
	"mbr_join_stts_cd"      CHAR(1)       NOT NULL, -- 회원가입상태
	"mbr_join_dt"        TIMESTAMP     NOT NULL, -- 회원가입일시
	"mbr_whdwl_rsn"      VARCHAR(4000) NULL,     -- 회원탈퇴사유
	"mbr_whdwl_dt"       TIMESTAMP     NULL,     -- 회원탈퇴일시
	"bfr_enpswd"         VARCHAR(100)  NULL,     -- 이전암호화비밀번호
	"pswd_chg_dt"        TIMESTAMP     NULL,     -- 비밀번호변경일시
	"pswd_err_nmtm"      NUMERIC(2,0)  NULL,     -- 비밀번호오류횟수
	"link_info_idntf_id" VARCHAR(100)  NULL,     -- 연계정보식별아이디
	"cert_token_vl"         VARCHAR(40)   NULL,     -- 인증토큰
	"rgtr_id"            VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"             TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"       VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"            VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"           TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id"     VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_회원정보기본
COMMENT ON TABLE "TB_PP_M_MBR_INFO" IS '대국민포털_회원정보기본';

-- 회원번호
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."mbr_no" IS '회원번호';

-- 회원아이디
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."mbr_id" IS '회원아이디';

-- 회원암호화성명
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."encpt_mbr_flnm" IS '회원암호화성명';

-- 회원암호화이메일
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."encpt_mbr_eml_nm" IS '회원암호화이메일';

-- 회원암호화비밀번호
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."encpt_mbr_pswd" IS '회원암호화비밀번호';

-- 회원암호화전화번호
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."encpt_mbr_telno" IS '회원암호화전화번호';

-- 회원유형코드
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."mbr_type_cd" IS '회원유형코드';

-- 회원가입상태
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."mbr_join_stts_cd" IS '회원가입상태';

-- 회원가입일시
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."mbr_join_dt" IS '회원가입일시';

-- 회원탈퇴사유
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."mbr_whdwl_rsn" IS '회원탈퇴사유';

-- 회원탈퇴일시
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."mbr_whdwl_dt" IS '회원탈퇴일시';

-- 이전암호화비밀번호
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."bfr_enpswd" IS '이전암호화비밀번호';

-- 비밀번호변경일시
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."pswd_chg_dt" IS '비밀번호변경일시';

-- 비밀번호오류횟수
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."pswd_err_nmtm" IS '비밀번호오류횟수';

-- 연계정보식별아이디
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."link_info_idntf_id" IS '연계정보식별아이디';

-- 인증토큰
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."cert_token_vl" IS '인증토큰';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_회원정보기본 기본키2
CREATE UNIQUE INDEX "PK_TB_PP_M_MBR_INFO"
	ON "TB_PP_M_MBR_INFO"
	( -- 대국민포털_회원정보기본
		"mbr_no" ASC NULLS LAST -- 회원번호
	);

-- 대국민포털_회원정보기본 기본키2
COMMENT ON INDEX "PK_TB_PP_M_MBR_INFO" IS '대국민포털_회원정보기본 기본키2';

-- 대국민포털_회원정보기본
ALTER TABLE "TB_PP_M_MBR_INFO"
	ADD CONSTRAINT "PK_TB_PP_M_MBR_INFO"
		-- 대국민포털_회원정보기본 기본키2
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_MBR_INFO"
	NOT DEFERRABLE;

-- 대국민포털_회원정보기본 기본키2
COMMENT ON CONSTRAINT "PK_TB_PP_M_MBR_INFO" ON "TB_PP_M_MBR_INFO" IS '대국민포털_회원정보기본 기본키2';



/* ========================================================================================================================= */

CREATE SEQUENCE "TB_PP_M_MBR_TOKEN_SEQ" 
   INCREMENT 1 
   START 1 
   MINVALUE 1 
   MAXVALUE 9223372036854775807 
   CACHE 1;

CREATE TABLE "KIDS_OWN"."TB_PP_M_MBR_TOKEN" (
    token_id numeric(19,0) NOT NULL,
    mbr_id varchar(20) NOT NULL,
    app_id varchar(50) NULL,
    refresh_token text NULL,
    access_token text NULL,
    rgtr_id varchar(20) NULL,
    reg_dt timestamp NULL,
    reg_prgrm_id varchar(100) NULL,
    mdfr_id varchar(20) NULL,
    mdfcn_dt timestamp NULL,
    mdfcn_prgrm_id varchar(100) NULL,
    CONSTRAINT "PK_TB_PP_M_MBR_TOKEN" PRIMARY KEY (token_id)
);

COMMENT ON TABLE "KIDS_OWN"."TB_PP_M_MBR_TOKEN" IS '대국민포털_회원_TOKEN';
COMMENT ON COLUMN "KIDS_OWN"."TB_PP_M_MBR_TOKEN".token_id IS 'JWT토큰ID';
COMMENT ON COLUMN "KIDS_OWN"."TB_PP_M_MBR_TOKEN".mbr_id IS '회원아이디';
COMMENT ON COLUMN "KIDS_OWN"."TB_PP_M_MBR_TOKEN".app_id IS '애플리케이션ID';
COMMENT ON COLUMN "KIDS_OWN"."TB_PP_M_MBR_TOKEN".refresh_token IS 'JWT_Refresh_Token';
COMMENT ON COLUMN "KIDS_OWN"."TB_PP_M_MBR_TOKEN".access_token IS 'JWT_Access_Token';
COMMENT ON COLUMN "KIDS_OWN"."TB_PP_M_MBR_TOKEN".rgtr_id IS '등록자아이디';
COMMENT ON COLUMN "KIDS_OWN"."TB_PP_M_MBR_TOKEN".reg_dt IS '등록일시';
COMMENT ON COLUMN "KIDS_OWN"."TB_PP_M_MBR_TOKEN".reg_prgrm_id IS '등록프로그램아이디';
COMMENT ON COLUMN "KIDS_OWN"."TB_PP_M_MBR_TOKEN".mdfr_id IS '수정자아이디';
COMMENT ON COLUMN "KIDS_OWN"."TB_PP_M_MBR_TOKEN".mdfcn_dt IS '수정일시';
COMMENT ON COLUMN "KIDS_OWN"."TB_PP_M_MBR_TOKEN".mdfcn_prgrm_id IS '수정프로그램아이디';

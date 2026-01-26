DROP TABLE "KIDS_OWN"."TB_CA_M_ATCH" CASCADE;
DROP TABLE "KIDS_OWN"."TB_CA_M_COM_CD" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_DUR_AGE_BANN" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_D_MENU" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_AUTHRT" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_AUTHRT_CHG_HSTRY" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_AUTHRT_MENU" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_AUTHRT_MENU_ROLE" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_BBS" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_BBS_AUTHRT" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_CMNT" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_CONC_BANN" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_DEPT_AUTHRT" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_DGSTFN_EXMN" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_DMN" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_DUR_CPCT" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_DUR_DOSAGE" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_DUR_EFTGRP_IGRD" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_DUR_EFTGRP_ITEM" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_DUR_NURSW" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_DUR_PRGNT_IGRD" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_DUR_PRGNT_ITEM" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_DUR_SNCTZ" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_DUR_SNCTZ_MED" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_EMP" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_EXPRT_AUTHRT" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_EXPRT_INFO" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_EXPRT_TASK" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_FAQ" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_FORM" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_INST" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_INST_TASK" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_MBR_INFO" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_MBR_NO_SEQ" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_MBR_TOKEN" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_MENU" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_OPNN" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_ORGCHT" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_PIC_AUTHRT" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_POPUP" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_PRVC_ACS_HSTRY" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_PST" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_ROLE" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_STTY_AGT_INFO" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_TASK_CD" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_TRM" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_TRMS_STT" CASCADE;
DROP TABLE "KIDS_OWN"."TB_PP_M_WORD" CASCADE;

DROP SEQUENCE "KIDS_OWN"."TB_CA_M_ATCH_SEQ";
DROP SEQUENCE "KIDS_OWN"."TB_PP_M_MBR_TOKEN_SEQ";
DROP SEQUENCE "KIDS_OWN"."TB_PP_M_TRMS_STT_SEQ";

CREATE SEQUENCE public.TB_CA_M_ATCH_SEQ
   INCREMENT 1 
   START 1 
   MINVALUE 1 
   MAXVALUE 9223372036854775807 
   CACHE 1;

CREATE SEQUENCE public.TB_PP_M_MBR_TOKEN_SEQ 
   INCREMENT 1 
   START 1 
   MINVALUE 1 
   MAXVALUE 9223372036854775807 
   CACHE 1;

CREATE SEQUENCE public.TB_PP_M_TRMS_STT_SEQ
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
    CACHE 1
    NO CYCLE;

-- 공통_파일그룹전송내역
CREATE TABLE public.TB_CA_E_FILE_GROUP_TRSM
(
	atch_file_group_id VARCHAR(40) NOT NULL, -- 첨부파일그룹아이디
	task_se_cd         VARCHAR(10) NULL,     -- 업무구분코드
	task_se_trgt_id    VARCHAR(40) NULL,     -- 업무구분대상아이디
	use_yn             CHAR(1)     NULL,     -- 사용여부
	reg_dt             TIMESTAMP   NULL,     -- 등록일시
	rgtr_id            VARCHAR(40) NULL,     -- 등록자아이디
	mdfcn_dt           TIMESTAMP   NULL,     -- 수정일시
	mdfr_id            VARCHAR(40) NULL      -- 수정자아이디
);

-- 공통_파일그룹전송내역 기본키
CREATE UNIQUE INDEX PK_TB_CA_E_FILE_GROUP_TRSM
	ON public.TB_CA_E_FILE_GROUP_TRSM
	( -- 공통_파일그룹전송내역
		atch_file_group_id ASC NULLS LAST -- 첨부파일그룹아이디
	);

-- 공통_파일그룹전송내역
ALTER TABLE public.TB_CA_E_FILE_GROUP_TRSM
	ADD CONSTRAINT PK_TB_CA_E_FILE_GROUP_TRSM
		-- 공통_파일그룹전송내역 기본키
	PRIMARY KEY
	USING INDEX PK_TB_CA_E_FILE_GROUP_TRSM
	NOT DEFERRABLE;

-- 공통_파일전송내역
CREATE TABLE public.TB_CA_E_FILE_TRSM
(
	atch_file_id         VARCHAR(40)   NOT NULL, -- 첨부파일아이디
	atch_file_group_id   VARCHAR(40)   NULL,     -- 첨부파일그룹아이디
	file_seq             NUMERIC(10,0) NOT NULL, -- 파일순서
	file_strg_path_dsctn VARCHAR(1000) NULL,     -- 파일저장경로내역
	encpt_file_nm         VARCHAR(300)  NULL,    -- 인코딩파일명
	prvc_incl_yn         CHAR(1)       NULL,     -- 개인정보포함여부
	file_nm              VARCHAR(300)  NULL,     -- 파일명
	file_extn_nm         VARCHAR(20)   NULL,     -- 파일확장자명
	file_cn              TEXT          NULL,     -- 파일내용
	file_sz              NUMERIC(10,0) NULL,     -- 파일크기
	crt_dt               CHAR(14)      NULL,     -- 생성일시
	use_yn               CHAR(1)       NULL,     -- 사용여부
	reg_dt               TIMESTAMP     NULL,     -- 등록일시
	rgtr_id              VARCHAR(40)   NULL,     -- 등록자아이디
	mdfcn_dt             TIMESTAMP     NULL,     -- 수정일시
	mdfr_id              VARCHAR(40)   NULL      -- 수정자아이디
);

-- 공통_파일전송내역 기본키
CREATE UNIQUE INDEX PK_TB_CA_E_FILE_TRSM
	ON public.TB_CA_E_FILE_TRSM
	( -- 공통_파일전송내역
		atch_file_id ASC NULLS LAST -- 첨부파일아이디
	);

-- 공통_파일전송내역
ALTER TABLE public.TB_CA_E_FILE_TRSM
	ADD CONSTRAINT PK_TB_CA_E_FILE_TRSM
		-- 공통_파일전송내역 기본키
	PRIMARY KEY
	USING INDEX PK_TB_CA_E_FILE_TRSM
	NOT DEFERRABLE;

-- 대국민포털_DUR노인주의기본
CREATE TABLE public.TB_PP_M_DUR_SNCTZ
(
	snctz_cutn_sn VARCHAR(50)   NOT NULL, -- 노인주의일련번호
	prdct_cd      CHAR(9)       NOT NULL, -- 제품코드
	igrd_nm       VARCHAR(100)  NULL,     -- 성분명
	igrd_cd       VARCHAR(20)   NOT NULL, -- 성분코드
	prdct_nm      VARCHAR(256)  NULL,     -- 제품명
	bzenty_nm     VARCHAR(100)  NULL,     -- 업체명
	pbanc_ymd     CHAR(8)       NULL,     -- 공고일자
	pbanc_no      CHAR(8)       NULL,     -- 공고번호
	mdcn_dtl_cn   VARCHAR(4000) NULL,     -- 약품상세내용
	aplcn_ym      CHAR(6)       NULL,     -- 적용연월
	rmrk_cn       VARCHAR(4000) NULL,     -- 비고내용
	oper_stts_cd  CHAR(1)       NULL,     -- 운영상태코드
	slry_se_cd    CHAR(1)       NULL,     -- 급여구분코드
	rgtr_id       VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt        TIMESTAMP     NULL,     -- 등록일시
	mdfr_id       VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt      TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_DUR노인주의기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_DUR_SNCTZ
	ON public.TB_PP_M_DUR_SNCTZ
	( -- 대국민포털_DUR노인주의기본
		snctz_cutn_sn ASC NULLS LAST -- 노인주의일련번호
	);

-- 대국민포털_DUR노인주의기본
ALTER TABLE public.TB_PP_M_DUR_SNCTZ
	ADD CONSTRAINT PK_TB_PP_M_DUR_SNCTZ
		-- 대국민포털_DUR노인주의기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_DUR_SNCTZ
	NOT DEFERRABLE;

--drop table public.TB_PP_M_DUR_CONC_BANN cascade;

-- 대국민포털_DUR병용금기기본
CREATE TABLE public.TB_PP_M_DUR_CONC_BANN
(
	conc_bann_sn	 VARCHAR(50)   NOT NULL, -- 병용금기일련번호
	igrd_nm_1        VARCHAR(100)  NOT NULL, -- 성분명_1
	igrd_cd_1        VARCHAR(20)   NOT NULL, -- 성분코드_1
	prdct_cd_1       CHAR(9)       NOT NULL, -- 제품코드_1
	prdct_nm_1       VARCHAR(256)  NULL,     -- 제품명_1
	bzenty_nm_1      VARCHAR(100)  NULL,     -- 업체명_1
	slry_se_cd_1     CHAR(1)       NULL,     -- 급여구분코드_1
	igrd_nm_2        VARCHAR(100)  NOT NULL, -- 성분명_2
	igrd_cd_2        VARCHAR(20)   NOT NULL, -- 성분코드_2
	prdct_cd_2       CHAR(9)       NOT NULL, -- 제품코드_2
	prdct_nm_2       VARCHAR(256)  NULL,     -- 제품명_2
	bzenty_nm_2      VARCHAR(100)  NULL,     -- 업체명_2
	slry_se_cd_2     CHAR(1)       NULL,     -- 급여구분코드_2
	ancmnt_no        CHAR(8)       NULL,     -- 고시번호
	ancmnt_aplcn_ymd CHAR(8)       NULL,     -- 고시적용일자
	bannRsn          VARCHAR(2000) NULL,     -- 금기사유
	rmrk_cn          VARCHAR(4000) NULL,     -- 비고내용
	aplcn_ym         CHAR(6)       NULL,     -- 적용연월
	oper_stts_cd     CHAR(1)       NULL,     -- 운영상태코드
	rgtr_id          VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt           TIMESTAMP     NULL,     -- 등록일시
	mdfr_id          VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt         TIMESTAMP     NULL      -- 수정일시
);

-- 급여구분코드_1
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.slry_se_cd_1 IS '1:급여, 2:비급여';

-- 급여구분코드_2
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.slry_se_cd_2 IS '1:급여, 2:비급여';

-- 운영상태코드
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.oper_stts_cd IS 'O:운영,W:적용대기,E:오류';

-- 대국민포털_DUR병용금기기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_DUR_CONC_BANN
	ON public.TB_PP_M_DUR_CONC_BANN
	( -- 대국민포털_DUR병용금기기본
		conc_bann_sn ASC NULLS LAST -- 병용금기일련번호
	);

-- 대국민포털_DUR병용금기기본
ALTER TABLE public.TB_PP_M_DUR_CONC_BANN
	ADD CONSTRAINT PK_TB_PP_M_DUR_CONC_BANN
		-- 대국민포털_DUR병용금기기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_DUR_CONC_BANN
	NOT DEFERRABLE;

-- 대국민포털_DUR수유부주의기본
CREATE TABLE public.TB_PP_M_DUR_NURSW
(
	nursw_cutn_sn VARCHAR(50)   NOT NULL, -- 수유부주의일련번호
	prdct_cd           CHAR(9)       NOT NULL, -- 제품코드
	igrd_cd            VARCHAR(20)   NOT NULL, -- 성분코드
	igrd_nm            VARCHAR(100)  NULL,     -- 성분명
	prdct_nm           VARCHAR(256)  NULL,     -- 제품명
	bzenty_nm          VARCHAR(100)  NULL,     -- 업체명
	pbanc_ymd          CHAR(8)       NULL,     -- 공고일자
	pbanc_no           CHAR(8)       NULL,     -- 공고번호
	aplcn_ym           CHAR(6)       NULL,     -- 적용연월
	rmrk_cn            VARCHAR(4000) NULL,     -- 비고내용
	slry_se_cd         CHAR(1)       NULL,     -- 급여구분코드
	oper_stts_cd       CHAR(1)       NULL,     -- 운영상태코드
	rgtr_id            VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt             TIMESTAMP     NULL,     -- 등록일시
	mdfr_id            VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt           TIMESTAMP     NULL      -- 수정일시
);

-- 급여구분코드
COMMENT ON COLUMN public.TB_PP_M_DUR_NURSW.slry_se_cd IS '품목(I), 성분(C)';

-- 대국민포털_DUR수유부주의기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_DUR_NURSW
	ON public.TB_PP_M_DUR_NURSW
	( -- 대국민포털_DUR수유부주의기본
		nursw_cutn_sn ASC NULLS LAST -- 수유부주의일련번호
	);

-- 대국민포털_DUR수유부주의기본
ALTER TABLE public.TB_PP_M_DUR_NURSW
	ADD CONSTRAINT PK_TB_PP_M_DUR_NURSW
		-- 대국민포털_DUR수유부주의기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_DUR_NURSW
	NOT DEFERRABLE;

-- 대국민포털_DUR용량주의기본
CREATE TABLE public.TB_PP_M_DUR_CPCT
(
	cpct_cutn_sn            VARCHAR(50)   NOT NULL, -- 용량주의일련번호
	mdcn_cd                 CHAR(9)       NOT NULL, -- 약품코드
	mdcn_nm                 VARCHAR(256)  NULL,     -- 약품명
	gnrl_nm_cd              CHAR(9)       NOT NULL, -- 일반명코드
	gnrl_nm                 VARCHAR(100)  NULL,     -- 일반명
	day_max_admin_cpct_cn   VARCHAR(4000) NOT NULL, -- 일최대투여용량내용
	day_max_admin_crtr_cpct NUMERIC(10,3) NULL,     -- 일최대투여기준용량
	chck_crtr_igrd_cpct     NUMERIC(10,3) NULL,     -- 점검기준성분용량
	pbanc_ymd               CHAR(8)       NULL,     -- 공고일자
	pbanc_no                CHAR(8)       NULL,     -- 공고번호
	dtl_cn                  VARCHAR(4000) NULL,     -- 상세내용
	slry_se_cd              CHAR(1)       NULL,     -- 급여구분코드
	aplcn_ym                CHAR(6)       NULL,     -- 적용연월
	oper_stts_cd            CHAR(1)       NULL,     -- 운영상태코드
	rgtr_id                 VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt                  TIMESTAMP     NULL,     -- 등록일시
	mdfr_id                 VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt                TIMESTAMP     NULL      -- 수정일시
);

-- 급여구분코드
COMMENT ON COLUMN public.TB_PP_M_DUR_CPCT.slry_se_cd IS '1:급여, 2:비급여';

-- 운영상태코드
COMMENT ON COLUMN public.TB_PP_M_DUR_CPCT.oper_stts_cd IS 'O:운영,W:적용대기,E:오류';

-- 대국민포털_DUR용량주의기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_DUR_CPCT
	ON public.TB_PP_M_DUR_CPCT
	( -- 대국민포털_DUR용량주의기본
		cpct_cutn_sn ASC NULLS LAST -- 용량주의일련번호
	);

-- 대국민포털_DUR용량주의기본
ALTER TABLE public.TB_PP_M_DUR_CPCT
	ADD CONSTRAINT PK_TB_PP_M_DUR_CPCT
		-- 대국민포털_DUR용량주의기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_DUR_CPCT
	NOT DEFERRABLE;

--drop table public.TB_PP_M_DUR_PRGNT_BANN cascade;

-- 대국민포털_DUR임부금기기본
CREATE TABLE public.TB_PP_M_DUR_PRGNT_BANN
(
	prgnt_bann_sn 	 VARCHAR(50)   NOT NULL, -- 임부금기일련번호
	igrd_nm          VARCHAR(100)  NULL,     -- 성분명
	igrd_cd          VARCHAR(20)   NOT NULL, -- 성분코드
	prdct_cd         CHAR(9)       NOT NULL, -- 제품코드
	prdct_nm         VARCHAR(256)  NULL,     -- 제품명
	bzenty_nm        VARCHAR(100)  NULL,     -- 업체명
	ancmnt_ymd       CHAR(8)       NULL,     -- 고시일자
	ancmnt_no        CHAR(8)       NULL,     -- 고시번호
	bann_grd       	 NUMERIC(2,0)  NULL,     -- 금기등급수
	dtl_info_cn      VARCHAR(4000) NULL,     -- 상세정보내용
	slry_se_cd       CHAR(1)       NULL,     -- 급여구분코드
	aplcn_ym         CHAR(6)       NULL,     -- 적용연월
	oper_stts_cd     CHAR(1)       NULL,     -- 운영상태코드
	rgtr_id          VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt           TIMESTAMP     NULL,     -- 등록일시
	mdfr_id          VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt         TIMESTAMP     NULL      -- 수정일시
);

-- 급여구분코드
COMMENT ON COLUMN public.TB_PP_M_DUR_PRGNT_BANN.slry_se_cd IS '1:급여, 2:비급여';

-- 운영상태코드
COMMENT ON COLUMN public.TB_PP_M_DUR_PRGNT_BANN.oper_stts_cd IS 'O:운영,W:적용대기,E:오류';

-- 대국민포털_DUR임부금기기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_DUR_PRGNT_BANN
	ON public.TB_PP_M_DUR_PRGNT_BANN
	( -- 대국민포털_DUR임부금기기본
		prgnt_bann_sn ASC NULLS LAST -- 임부금기일련번호
	);

-- 대국민포털_DUR임부금기기본
ALTER TABLE public.TB_PP_M_DUR_PRGNT_BANN
	ADD CONSTRAINT PK_TB_PP_M_DUR_PRGNT_BANN
		-- 대국민포털_DUR임부금기기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_DUR_PRGNT_BANN
	NOT DEFERRABLE;

-- 대국민포털_DUR투여기간주의기본
CREATE TABLE public.TB_PP_M_DUR_DOSAGE
(
	admin_prd_cutn_sn     VARCHAR(50)   NOT NULL, -- 투여기간주의일련번호
	mdcn_cd               CHAR(9)       NOT NULL, -- 약품코드
	mdcn_nm               VARCHAR(256)  NULL,     -- 약품명
	gnrl_nm_cd            CHAR(9)       NOT NULL, -- 일반명코드
	gnrl_nm               VARCHAR(100)  NULL,     -- 일반명
	max_admin_prd_day_cnt NUMERIC(4,0)  NOT NULL, -- 최대투여기간일수
	pbanc_ymd             CHAR(8)       NULL,     -- 공고일자
	pbanc_no              CHAR(8)       NULL,     -- 공고번호
	rmrk_cn               VARCHAR(4000) NULL,     -- 비고내용
	slry_se_cd            CHAR(1)       NULL,     -- 급여구분코드
	aplcn_ym              CHAR(6)       NULL,     -- 적용연월
	oper_stts_cd          CHAR(1)       NULL,     -- 운영상태코드
	rgtr_id               VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt                TIMESTAMP     NULL,     -- 등록일시
	mdfr_id               VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt              TIMESTAMP     NULL      -- 수정일시
);

-- 급여구분코드
COMMENT ON COLUMN public.TB_PP_M_DUR_DOSAGE.slry_se_cd IS '1:급여, 2:비급여';

-- 운영상태코드
COMMENT ON COLUMN public.TB_PP_M_DUR_DOSAGE.oper_stts_cd IS 'O:운영,W:적용대기,E:오류';

-- 대국민포털_DUR투여기간주의기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_DUR_DOSAGE
	ON public.TB_PP_M_DUR_DOSAGE
	( -- 대국민포털_DUR투여기간주의기본
		admin_prd_cutn_sn ASC NULLS LAST -- 투여기간주의일련번호
	);

-- 대국민포털_DUR투여기간주의기본
ALTER TABLE public.TB_PP_M_DUR_DOSAGE
	ADD CONSTRAINT PK_TB_PP_M_DUR_DOSAGE
		-- 대국민포털_DUR투여기간주의기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_DUR_DOSAGE
	NOT DEFERRABLE;

--drop table public.TB_PP_M_DUR_EFTGRP cascade;

-- 대국민포털_DUR효능군중복기본
CREATE TABLE public.TB_PP_M_DUR_EFTGRP
(
	eftgrp_dpcn_sn VARCHAR(50)  NOT NULL, -- 효능군중복일련번호
	eftgrp_nm         VARCHAR(20)  NOT NULL, -- 효능그룹명
	group_nm           VARCHAR(20)  NOT NULL, -- 그룹명
	group_nm_1         VARCHAR(20)  NOT NULL, -- 그룹명_1
	gnrl_nm_cd         CHAR(9)      NULL,     -- 일반명코드
	gnrl_nm            VARCHAR(100) NULL,     -- 일반명
	eftgrp_dpcn_chck_cd CHAR(8)      NOT NULL, -- 효능군중복점검코드
	mdcn_cd            CHAR(9)      NOT NULL, -- 약품코드
	item_nm            VARCHAR(300) NULL,     -- 품목명
	bzenty_nm          VARCHAR(100) NULL,     -- 업체명
	pbanc_ymd          CHAR(8)      NULL,     -- 공고일자
	pbanc_no           CHAR(8)      NULL,     -- 공고번호
	slry_se_cd         CHAR(1)      NULL,     -- 급여구분코드
	aplcn_ym           CHAR(6)      NULL,     -- 적용연월
	oper_stts_cd       CHAR(1)      NULL,     -- 운영상태코드
	rgtr_id            VARCHAR(40)  NULL,     -- 등록자아이디
	reg_dt             TIMESTAMP    NULL,     -- 등록일시
	mdfr_id            VARCHAR(40)  NULL,     -- 수정자아이디
	mdfcn_dt           TIMESTAMP    NULL      -- 수정일시
);

-- 급여구분코드
COMMENT ON COLUMN public.TB_PP_M_DUR_EFTGRP.slry_se_cd IS '1:급여, 2:비급여';

-- 운영상태코드
COMMENT ON COLUMN public.TB_PP_M_DUR_EFTGRP.oper_stts_cd IS 'O:운영,W:적용대기,E:오류';

-- 대국민포털_DUR효능군중복기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_DUR_EFTGRP
	ON public.TB_PP_M_DUR_EFTGRP
	( -- 대국민포털_DUR효능군중복기본
		eftgrp_dpcn_sn ASC NULLS LAST -- 효능군중복일련번호
	);

-- 대국민포털_DUR효능군중복기본
ALTER TABLE public.TB_PP_M_DUR_EFTGRP
	ADD CONSTRAINT PK_TB_PP_M_DUR_EFTGRP
		-- 대국민포털_DUR효능군중복기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_DUR_EFTGRP
	NOT DEFERRABLE;

--drop table public.TB_PP_M_DUR_AGE_BANN cascade;

-- 대국민포털_DUR연령금기기본
CREATE TABLE public.TB_PP_M_DUR_AGE_BANN
(
	age_bann_sn		 VARCHAR(50)   NOT NULL, -- 연령금기일련번호
	igrd_nm          VARCHAR(100)  NOT NULL, -- 성분명
	igrd_cd          VARCHAR(20)   NOT NULL, -- 성분코드
	prdct_cd         CHAR(9)       NOT NULL, -- 제품코드
	prdct_nm         VARCHAR(256)  NOT NULL, -- 제품명
	bzenty_nm        VARCHAR(100)  NOT NULL, -- 업체명
	rlvt_age         NUMERIC(3,0)  NOT NULL, -- 해당연령
	rlvt_age_unit_nm VARCHAR(20)   NULL,     -- 해당연령단위명
	age_prcs_cnd_nm  VARCHAR(20)   NULL,     -- 연령처리조건명
	ancmnt_no        CHAR(8)       NULL,     -- 고시번호
	ancmnt_ymd       CHAR(8)       NULL,     -- 고시일자
	dtl_info_cn      VARCHAR(4000) NULL,     -- 상세정보내용
	slry_se_cd       CHAR(1)       NULL,     -- 급여구분코드
	aplcn_ym         CHAR(6)       NULL,     -- 적용연월
	oper_stts_cd     CHAR(1)       NULL,     -- 운영상태코드
	rgtr_id          VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt           TIMESTAMP     NULL,     -- 등록일시
	mdfr_id          VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt         TIMESTAMP     NULL      -- 수정일시
);

-- 급여구분코드
COMMENT ON COLUMN public.TB_PP_M_DUR_AGE_BANN.slry_se_cd IS '1:급여, 2:비급여';

-- 운영상태코드
COMMENT ON COLUMN public.TB_PP_M_DUR_AGE_BANN.oper_stts_cd IS 'O:운영,W:적용대기,E:오류';

-- 대국민포털_DUR연령금기기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_DUR_AGE_BANN
	ON public.TB_PP_M_DUR_AGE_BANN
	( -- 대국민포털_DUR연령금기기본
		age_bann_sn ASC NULLS LAST -- 연령금기일련번호
	);

-- 대국민포털_DUR연령금기기본
ALTER TABLE public.TB_PP_M_DUR_AGE_BANN
	ADD CONSTRAINT PK_TB_PP_M_DUR_AGE_BANN
		-- 대국민포털_DUR연령금기기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_DUR_AGE_BANN
	NOT DEFERRABLE;

-- 대국민포털_FAQ기본
CREATE TABLE public.TB_PP_M_FAQ
(
	faq_sn             NUMERIC(10,0) NOT NULL, -- FAQ일련번호
	task_se_cd         CHAR(3)       NOT NULL, -- 업무구분코드
	faq_clsf_nm        VARCHAR(80)   NULL,     -- FAQ분류명
	faq_ttl            VARCHAR(256)  NULL,     -- FAQ제목
	faq_seq            NUMERIC(10,0) NOT NULL, -- FAQ순서
	use_yn             CHAR(1)       NOT NULL, -- 사용여부
	lang_se_cd         CHAR(2)       NOT NULL, -- 언어구분코드
	faq_ans_cn         VARCHAR(4000) NULL,     -- FAQ답변내용
	atch_file_group_id VARCHAR(40)   NULL,     -- 첨부파일그룹아이디
	wrtr_dept_nm       VARCHAR(40)   NULL,     -- 작성자부서명
	mdfr_dept_nm       VARCHAR(40)   NULL,     -- 수정자부서명
	rgtr_id            VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt             TIMESTAMP     NULL,     -- 등록일시
	mdfr_id            VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt           TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_FAQ기본 기본키2
CREATE UNIQUE INDEX PK_TB_PP_M_FAQ
	ON public.TB_PP_M_FAQ
	( -- 대국민포털_FAQ기본
		faq_sn ASC NULLS LAST -- FAQ일련번호
	);

-- 대국민포털_FAQ기본
ALTER TABLE public.TB_PP_M_FAQ
	ADD CONSTRAINT PK_TB_PP_M_FAQ
		-- 대국민포털_FAQ기본 기본키2
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_FAQ
	NOT DEFERRABLE;

-- 대국민포털_KIDS직원정보기본
CREATE TABLE public.TB_PP_M_EMP_INFO
(
	emp_no           VARCHAR(20)  NOT NULL, -- 직원번호
	emp_nm           VARCHAR(20)  NULL,     -- 직원명
	dept_no          VARCHAR(20)  NULL,     -- 부서번호
	jbgd_nm          VARCHAR(20)  NULL,     -- 직급명
	encpt_emp_telno  VARCHAR(256) NULL,     -- 암호화직원전화번호
	encpt_emp_eml_nm VARCHAR(256) NULL,     -- 암호화직원이메일명
	rgtr_id          VARCHAR(40)  NULL,     -- 등록자아이디
	reg_dt           TIMESTAMP    NULL,     -- 등록일시
	mdfr_id          VARCHAR(40)  NULL,     -- 수정자아이디
	mdfcn_dt         TIMESTAMP    NULL      -- 수정일시
);

-- 대국민포털_KIDS직원정보기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_EMP_INFO
	ON public.TB_PP_M_EMP_INFO
	( -- 대국민포털_KIDS직원정보기본
		emp_no ASC NULLS LAST -- 직원번호
	);

-- 대국민포털_KIDS직원정보기본
ALTER TABLE public.TB_PP_M_EMP_INFO
	ADD CONSTRAINT PK_TB_PP_M_EMP_INFO
		-- 대국민포털_KIDS직원정보기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_EMP_INFO
	NOT DEFERRABLE;

-- 대국민포털_KIDS조직도기본
CREATE TABLE public.TB_PP_M_ORGCHT
(
    emp_no  VARCHAR(20) NOT NULL, -- 직원번호
    dept_no VARCHAR(20) NULL,     -- 부서번호
    dept_nm VARCHAR(40) NULL,     -- 부서명
    emp_nm  VARCHAR(20) NULL      -- 직원명
);

-- 대국민포털_KIDS조직도기본
COMMENT ON TABLE public.TB_PP_M_ORGCHT IS '대국민포털_KIDS조직도기본';

-- 직원번호
COMMENT ON COLUMN public.TB_PP_M_ORGCHT.emp_no IS '직원번호';

-- 부서번호
COMMENT ON COLUMN public.TB_PP_M_ORGCHT.dept_no IS '부서번호';

-- 부서명
COMMENT ON COLUMN public.TB_PP_M_ORGCHT.dept_nm IS '부서명';

-- 직원명
COMMENT ON COLUMN public.TB_PP_M_ORGCHT.emp_nm IS '직원명';

-- 대국민포털_KIDS조직도기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_ORGCHT
    ON public.TB_PP_M_ORGCHT
    ( -- 대국민포털_KIDS조직도기본
        emp_no ASC NULLS LAST -- 직원번호
    );

-- 대국민포털_KIDS조직도기본 기본키
COMMENT ON INDEX PK_TB_PP_M_ORGCHT IS '대국민포털_KIDS조직도기본 기본키';

-- 대국민포털_KIDS조직도기본
ALTER TABLE public.TB_PP_M_ORGCHT
    ADD CONSTRAINT PK_TB_PP_M_ORGCHT
        -- 대국민포털_KIDS조직도기본 기본키
    PRIMARY KEY
    USING INDEX PK_TB_PP_M_ORGCHT
    NOT DEFERRABLE;

-- 대국민포털_KIDS조직도기본 기본키
COMMENT ON CONSTRAINT PK_TB_PP_M_ORGCHT ON public.TB_PP_M_ORGCHT IS '대국민포털_KIDS조직도기본 기본키';


-- 대국민포털_게시물기본
CREATE TABLE public.TB_PP_M_PST
(
	pst_sn                 NUMERIC(22,0) NOT NULL, -- 게시물일련번호
	bbs_id                 VARCHAR(20)   NOT NULL, -- 게시판아이디
	pst_ttl                VARCHAR(100)  NULL,     -- 게시물제목
	pst_cn                 TEXT          NULL,     -- 게시물내용
	pst_inq_cnt            NUMERIC(10,0) NOT NULL, -- 게시물조회수
	pst_kogl_cprgt_type_cd CHAR(1)       NULL,     -- 게시물공공누리저작권유형코드
	atch_file_group_id     VARCHAR(40)   NULL,     -- 첨부파일그룹아이디
	thmb_id                VARCHAR(40)   NULL,     -- 썸네일아이디
	fix_yn                 CHAR(1)       NOT NULL, -- 고정여부
	fix_bgng_ymd           CHAR(8)       NULL,     -- 고정시작일자
	fix_end_ymd            CHAR(8)       NULL,     -- 고정종료일자
	vdo_url_addr           VARCHAR(200)  NULL,     -- 동영상URL주소
	expsr_yn               CHAR(1)       NOT NULL, -- 노출여부
	wrtr_dept_nm           VARCHAR(80)   NULL,     -- 작성자부서명
	mdfr_dept_nm           VARCHAR(80)   NULL,     -- 수정자부서명
	rgtr_id                VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt                 TIMESTAMP     NULL,     -- 등록일시
	mdfr_id                VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt               TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_게시물기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_PST
	ON public.TB_PP_M_PST
	( -- 대국민포털_게시물기본
		pst_sn ASC NULLS LAST -- 게시물일련번호
	);

-- 대국민포털_게시물기본
ALTER TABLE public.TB_PP_M_PST
	ADD CONSTRAINT PK_TB_PP_M_PST
		-- 대국민포털_게시물기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_PST
	NOT DEFERRABLE;

-- 대국민포털_게시판기본
CREATE TABLE public.TB_PP_M_BBS
(
	bbs_id               VARCHAR(20)   NOT NULL, -- 게시판아이디
	bbs_nm               VARCHAR(300)  NULL,     -- 게시판명
	bbs_atrb_cd          CHAR(3)       NOT NULL, -- 게시판속성코드
	bbs_expln            VARCHAR(4000) NULL,     -- 게시판설명
	bbs_smry_cn          VARCHAR(4000) NULL,     -- 게시판요약내용
	cmnt_use_yn          CHAR(1)       NOT NULL, -- 댓글사용여부
	inq_cnt_expsr_yn     CHAR(1)       NOT NULL, -- 조회수노출여부
	dept_expsr_yn        CHAR(1)       NOT NULL, -- 부서노출여부
	file_atch_yn         CHAR(1)       NOT NULL, -- 파일첨부여부
	atch_psblty_file_cnt NUMERIC(2,0)  NULL,     -- 첨부가능파일수
	lang_se_cd           CHAR(3)       NOT NULL, -- 언어구분코드
	use_yn               CHAR(1)       NOT NULL, -- 사용여부
	rgtr_id              VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt               TIMESTAMP     NULL,     -- 등록일시
	mdfr_id              VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt             TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_게시판기본 기본키2
CREATE UNIQUE INDEX PK_TB_PP_M_BBS
	ON public.TB_PP_M_BBS
	( -- 대국민포털_게시판기본
		bbs_id ASC NULLS LAST -- 게시판아이디
	);

-- 대국민포털_게시판기본
ALTER TABLE public.TB_PP_M_BBS
	ADD CONSTRAINT PK_TB_PP_M_BBS
		-- 대국민포털_게시판기본 기본키2
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_BBS
	NOT DEFERRABLE;

-- 대국민포털_관리자정보기본
CREATE TABLE public.TB_PP_M_MNGR_INFO
(
	emp_no          VARCHAR(20)  NOT NULL, -- 직원번호
	encpt_mngr_pswd VARCHAR(256) NULL,     -- 암호화관리자비밀번호
	tmpr_pswd_yn    CHAR(1)      NOT NULL, -- 임시비밀번호여부
	pswd_err_nmtm   NUMERIC(2,0) NOT NULL, -- 비밀번호오류횟수
	encpt_bfr_pswd  VARCHAR(256) NULL,     -- 암호화이전비밀번호
	rgtr_id         VARCHAR(40)  NULL,     -- 등록자아이디
	reg_dt          TIMESTAMP    NULL,     -- 등록일시
	mdfr_id         VARCHAR(40)  NULL,     -- 수정자아이디
	mdfcn_dt        TIMESTAMP    NULL      -- 수정일시
);

-- 대국민포털_관리자정보기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_MNGR_INFO
	ON public.TB_PP_M_MNGR_INFO
	( -- 대국민포털_관리자정보기본
		emp_no ASC NULLS LAST -- 직원번호
	);

-- 대국민포털_관리자정보기본
ALTER TABLE public.TB_PP_M_MNGR_INFO
	ADD CONSTRAINT PK_TB_PP_M_MNGR_INFO
		-- 대국민포털_관리자정보기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_MNGR_INFO
	NOT DEFERRABLE;

-- 대국민포털_관리자정보기본
CREATE TABLE public.TB_PP_M_EMP
(
    emp_no         VARCHAR(20)  NOT NULL, -- 직원번호
    mngr_enpswd    VARCHAR(256) NULL,     -- 관리자암호화비밀번호
    tmpr_pswd_yn   CHAR(1)      NOT NULL, -- 임시비밀번호여부
    pswd_err_nmtm  NUMERIC(2,0) NOT NULL, -- 비밀번호오류횟수
    bfr_enpswd     VARCHAR(100) NULL,     -- 이전암호화비밀번호
    rgtr_id        VARCHAR(20)  NULL,     -- 등록자아이디
    reg_dt         TIMESTAMP    NULL,     -- 등록일시
    reg_prgrm_id   VARCHAR(100) NULL,     -- 등록프로그램아이디
    mdfr_id        VARCHAR(20)  NULL,     -- 수정자아이디
    mdfcn_dt       TIMESTAMP    NULL,     -- 수정일시
    mdfcn_prgrm_id VARCHAR(100) NULL      -- 수정프로그램아이디
);

-- 대국민포털_관리자정보기본
COMMENT ON TABLE public.TB_PP_M_EMP IS '대국민포털_관리자정보기본';

-- 직원번호
COMMENT ON COLUMN public.TB_PP_M_EMP.emp_no IS '직원번호';

-- 관리자암호화비밀번호
COMMENT ON COLUMN public.TB_PP_M_EMP.mngr_enpswd IS '관리자암호화비밀번호';

-- 임시비밀번호여부
COMMENT ON COLUMN public.TB_PP_M_EMP.tmpr_pswd_yn IS '임시비밀번호여부';

-- 비밀번호오류횟수
COMMENT ON COLUMN public.TB_PP_M_EMP.pswd_err_nmtm IS '비밀번호오류횟수';

-- 이전암호화비밀번호
COMMENT ON COLUMN public.TB_PP_M_EMP.bfr_enpswd IS '이전암호화비밀번호';

-- 등록자아이디
COMMENT ON COLUMN public.TB_PP_M_EMP.rgtr_id IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN public.TB_PP_M_EMP.reg_dt IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN public.TB_PP_M_EMP.reg_prgrm_id IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN public.TB_PP_M_EMP.mdfr_id IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN public.TB_PP_M_EMP.mdfcn_dt IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN public.TB_PP_M_EMP.mdfcn_prgrm_id IS '수정프로그램아이디';

-- 대국민포털_관리자정보기본 기본키2
CREATE UNIQUE INDEX PK_TB_PP_M_EMP
    ON public.TB_PP_M_EMP
    ( -- 대국민포털_관리자정보기본
        emp_no ASC NULLS LAST -- 직원번호
    );

-- 대국민포털_관리자정보기본 기본키2
COMMENT ON INDEX PK_TB_PP_M_EMP IS '대국민포털_관리자정보기본 기본키2';

-- 대국민포털_권한기본
CREATE TABLE public.TB_PP_M_AUTHRT
(
	authrt_cd      VARCHAR(10)   NOT NULL, -- 권한코드
	up_authrt_cd   VARCHAR(20)   NOT NULL, -- 상위권한코드
	task_se_cd     VARCHAR(20)   NULL,     -- 업무구분코드
	authrt_nm      VARCHAR(20)   NULL,     -- 권한명
	authrt_type_cd VARCHAR(20)   NULL,     -- 권한유형코드
	authrt_expln   VARCHAR(4000) NULL,     -- 권한설명
	use_yn         CHAR(1)       NOT NULL, -- 사용여부
	wrtr_dept_nm   VARCHAR(40)   NULL,     -- 작성자부서명
	mdfr_dept_nm   VARCHAR(40)   NULL,     -- 수정자부서명
	rgtr_id        VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt         TIMESTAMP     NULL,     -- 등록일시
	mdfr_id        VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt       TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_권한기본 기본키2
CREATE UNIQUE INDEX PK_TB_PP_M_AUTHRT
	ON public.TB_PP_M_AUTHRT
	( -- 대국민포털_권한기본
		authrt_cd ASC NULLS LAST -- 권한코드
	);

-- 대국민포털_권한기본
ALTER TABLE public.TB_PP_M_AUTHRT
	ADD CONSTRAINT PK_TB_PP_M_AUTHRT
		-- 대국민포털_권한기본 기본키2
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_AUTHRT
	NOT DEFERRABLE;

-- 대국민포털_권한메뉴기본
CREATE TABLE public.TB_PP_M_AUTHRT_MENU
(
	authrt_cd                VARCHAR(10)   NOT NULL, -- 권한코드
	menu_sn                  VARCHAR(20)   NOT NULL, -- 메뉴일련번호
	authrt_menu_role_rmrk_cn VARCHAR(1000) NULL,     -- 권한메뉴역할비고내용
	rgtr_id                  VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt                   TIMESTAMP     NULL,     -- 등록일시
	mdfr_id                  VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt                 TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_권한메뉴기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_AUTHRT_MENU
	ON public.TB_PP_M_AUTHRT_MENU
	( -- 대국민포털_권한메뉴기본
		authrt_cd ASC NULLS LAST, -- 권한코드
		menu_sn ASC NULLS LAST -- 메뉴일련번호
	);

-- 대국민포털_권한메뉴기본
ALTER TABLE public.TB_PP_M_AUTHRT_MENU
	ADD CONSTRAINT PK_TB_PP_M_AUTHRT_MENU
		-- 대국민포털_권한메뉴기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_AUTHRT_MENU
	NOT DEFERRABLE;

-- 대국민포털_기관업무기본
CREATE TABLE public.TB_PP_M_INST_TASK
(
	brno       CHAR(10)    NOT NULL, -- 사업자등록번호
	task_se_cd VARCHAR(10) NOT NULL, -- 업무구분코드
	mbr_no     VARCHAR(10) NULL,     -- 회원번호
	use_yn     CHAR(1)     NOT NULL, -- 사용여부
	rgtr_id    VARCHAR(40) NULL,     -- 등록자아이디
	reg_dt     TIMESTAMP   NULL,     -- 등록일시
	mdfr_id    VARCHAR(40) NULL,     -- 수정자아이디
	mdfcn_dt   TIMESTAMP   NULL      -- 수정일시
);

-- 대국민포털_기관업무기본 기본키2
CREATE UNIQUE INDEX PK_TB_PP_M_INST_TASK
	ON public.TB_PP_M_INST_TASK
	( -- 대국민포털_기관업무기본
		brno ASC NULLS LAST, -- 사업자등록번호
		task_se_cd ASC NULLS LAST -- 업무구분코드
	);

-- 대국민포털_기관업무기본
ALTER TABLE public.TB_PP_M_INST_TASK
	ADD CONSTRAINT PK_TB_PP_M_INST_TASK
		-- 대국민포털_기관업무기본 기본키2
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_INST_TASK
	NOT DEFERRABLE;

-- 대국민포털_담당자권한기본
CREATE TABLE public.TB_PP_M_PIC_AUTHRT
(
	emp_no             VARCHAR(20)   NOT NULL, -- 직원번호
	authrt_cd          VARCHAR(10)   NOT NULL, -- 권한코드
	pic_authrt_rmrk_cn VARCHAR(1000) NULL,     -- 담당자권한비고내용
	rgtr_id            VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt             TIMESTAMP     NULL,     -- 등록일시
	mdfr_id            VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt           TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_담당자권한기본 기본키2
CREATE UNIQUE INDEX PK_TB_PP_M_PIC_AUTHRT
	ON public.TB_PP_M_PIC_AUTHRT
	( -- 대국민포털_담당자권한기본
		emp_no ASC NULLS LAST, -- 직원번호
		authrt_cd ASC NULLS LAST -- 권한코드
	);

-- 대국민포털_담당자권한기본
ALTER TABLE public.TB_PP_M_PIC_AUTHRT
	ADD CONSTRAINT PK_TB_PP_M_PIC_AUTHRT
		-- 대국민포털_담당자권한기본 기본키2
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_PIC_AUTHRT
	NOT DEFERRABLE;

-- 대국민포털_댓글기본
CREATE TABLE public.TB_PP_M_CMNT
(
	cmnt_sn         NUMERIC(22,0) NOT NULL, -- 댓글일련번호
	pst_sn          NUMERIC(22,0) NOT NULL, -- 게시물일련번호
	cmnt_cn         VARCHAR(4000) NULL,     -- 댓글내용
	encpt_cmnt_pswd VARCHAR(256)  NULL,     -- 암호화댓글비밀번호
	use_yn          CHAR(1)       NOT NULL, -- 사용여부
	rgtr_id         VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt          TIMESTAMP     NULL,     -- 등록일시
	mdfr_id         VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt        TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_댓글기본 기본키2
CREATE UNIQUE INDEX PK_TB_PP_M_CMNT
	ON public.TB_PP_M_CMNT
	( -- 대국민포털_댓글기본
		cmnt_sn ASC NULLS LAST -- 댓글일련번호
	);

-- 대국민포털_댓글기본
ALTER TABLE public.TB_PP_M_CMNT
	ADD CONSTRAINT PK_TB_PP_M_CMNT
		-- 대국민포털_댓글기본 기본키2
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_CMNT
	NOT DEFERRABLE;

-- 대국민포털_메뉴기본
CREATE TABLE public.TB_PP_M_MENU
(
	menu_sn      VARCHAR(20)   NOT NULL, -- 메뉴일련번호
	menu_nm      VARCHAR(100)  NULL,     -- 메뉴명
	up_menu_sn   VARCHAR(20)   NULL,     -- 상위메뉴일련번호
	task_se_cd   VARCHAR(10)   NOT NULL, -- 업무구분코드
	menu_type_cd VARCHAR(20)   NOT NULL, -- 메뉴유형코드
	lang_se_cd   CHAR(3)       NOT NULL, -- 언어구분코드
	menu_seq     NUMERIC(10,0) NOT NULL, -- 메뉴순서
	menu_expln   VARCHAR(4000) NULL,     -- 메뉴설명
	pic_dept_nm  VARCHAR(40)   NULL,     -- 담당자부서명
	pic_flnm     VARCHAR(20)   NULL,     -- 담당자성명
	use_yn       CHAR(1)       NOT NULL, -- 사용여부
	rgtr_id      VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt       TIMESTAMP     NULL,     -- 등록일시
	mdfr_id      VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt     TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_메뉴기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_MENU
	ON public.TB_PP_M_MENU
	( -- 대국민포털_메뉴기본
		menu_sn ASC NULLS LAST -- 메뉴일련번호
	);

-- 대국민포털_메뉴기본
ALTER TABLE public.TB_PP_M_MENU
	ADD CONSTRAINT PK_TB_PP_M_MENU
		-- 대국민포털_메뉴기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_MENU
	NOT DEFERRABLE;

-- 대국민포털_메뉴상세
CREATE TABLE public.TB_PP_D_MENU
(
	menu_sn                 VARCHAR(20)  NOT NULL, -- 메뉴일련번호
	menu_url_addr           VARCHAR(320) NULL,     -- 메뉴URL주소
	menu_npag_nm            VARCHAR(20)  NULL,     -- 메뉴새창명
	prvc_incl_yn            CHAR(1)      NOT NULL, -- 개인정보포함여부
	dgstfn_exmn_yn          CHAR(1)      NOT NULL, -- 만족도조사여부
	menu_expsr_yn           CHAR(1)      NOT NULL, -- 메뉴노출여부
	dept_info_expsr_yn      CHAR(1)      NOT NULL, -- 부서정보노출여부
	pic_info_expsr_yn       CHAR(1)      NOT NULL, -- 담당자정보노출여부
	mobl_aplcn_yn           CHAR(1)      NOT NULL, -- 모바일적용여부
	lgn_yn                  CHAR(1)      NULL,     -- 로그인여부
	encpt_pic_telno         VARCHAR(256) NULL,     -- 암호화담당자전화번호
	menu_kogl_cprgt_type_cd CHAR(1)      NULL,     -- 메뉴공공누리저작권유형코드
	menu_pic_id             VARCHAR(40)  NOT NULL, -- 메뉴담당자아이디
	menu_tkcg_dept_no       VARCHAR(100) NULL,     -- 메뉴담당부서번호
	rgtr_id                 VARCHAR(40)  NULL,     -- 등록자아이디
	reg_dt                  TIMESTAMP    NULL,     -- 등록일시
	mdfr_id                 VARCHAR(40)  NULL,     -- 수정자아이디
	mdfcn_dt                TIMESTAMP    NULL      -- 수정일시
);

-- 메뉴노출여부
COMMENT ON COLUMN public.TB_PP_D_MENU.menu_expsr_yn IS 'default: Y';

-- 대국민포털_메뉴상세 기본키
CREATE UNIQUE INDEX PK_TB_PP_D_MENU
	ON public.TB_PP_D_MENU
	( -- 대국민포털_메뉴상세
		menu_sn ASC NULLS LAST -- 메뉴일련번호
	);

-- 대국민포털_메뉴상세
ALTER TABLE public.TB_PP_D_MENU
	ADD CONSTRAINT PK_TB_PP_D_MENU
		-- 대국민포털_메뉴상세 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_D_MENU
	NOT DEFERRABLE;

-- 대국민포털_권한메뉴롤기본
CREATE TABLE public.TB_PP_M_AUTHRT_MENU_ROLE
(
	authrt_cd VARCHAR(10) NOT NULL, -- 권한코드
	role_cd   VARCHAR(20) NOT NULL, -- 역할코드
	menu_sn   VARCHAR(20) NOT NULL, -- 메뉴일련번호
	rgtr_id   VARCHAR(40) NULL,     -- 등록자아이디
	reg_dt    TIMESTAMP   NULL,     -- 등록일시
	mdfr_id   VARCHAR(40) NULL,     -- 수정자아이디
	mdfcn_dt  TIMESTAMP   NULL      -- 수정일시
);

-- 대국민포털_권한메뉴롤기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_AUTHRT_MENU_ROLE
	ON public.TB_PP_M_AUTHRT_MENU_ROLE
	( -- 대국민포털_권한메뉴롤기본
		authrt_cd ASC NULLS LAST, -- 권한코드
		role_cd ASC NULLS LAST, -- 역할코드
		menu_sn ASC NULLS LAST -- 메뉴일련번호
	);

-- 대국민포털_권한메뉴롤기본
ALTER TABLE public.TB_PP_M_AUTHRT_MENU_ROLE
	ADD CONSTRAINT PK_TB_PP_M_AUTHRT_MENU_ROLE
		-- 대국민포털_권한메뉴롤기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_AUTHRT_MENU_ROLE
	NOT DEFERRABLE;

-- 대국민포털_부서권한기본
CREATE TABLE public.TB_PP_M_DEPT_AUTHRT
(
	dept_no             VARCHAR(20)   NOT NULL, -- 부서번호
	authrt_cd           VARCHAR(10)   NOT NULL, -- 권한코드
	dept_authrt_rmrk_cn VARCHAR(1000) NULL,     -- 부서권한비고내용
	rgtr_id             VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt              TIMESTAMP     NULL,     -- 등록일시
	mdfr_id             VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt            TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_부서권한기본 기본키2
CREATE UNIQUE INDEX PK_TB_PP_M_DEPT_AUTHRT
	ON public.TB_PP_M_DEPT_AUTHRT
	( -- 대국민포털_부서권한기본
		dept_no ASC NULLS LAST, -- 부서번호
		authrt_cd ASC NULLS LAST -- 권한코드
	);

-- 대국민포털_부서권한기본
ALTER TABLE public.TB_PP_M_DEPT_AUTHRT
	ADD CONSTRAINT PK_TB_PP_M_DEPT_AUTHRT
		-- 대국민포털_부서권한기본 기본키2
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_DEPT_AUTHRT
	NOT DEFERRABLE;

-- 대국민포털_약관법령기본
CREATE TABLE public.TB_PP_M_TRMS_STT
(
	trms_stt_sn        NUMERIC(10,0) NOT NULL, -- 약관법령일련번호
	trms_stt_cd        VARCHAR(20)   NOT NULL, -- 약관법령코드
	trms_stt_aplcn_ymd CHAR(8)       NOT NULL, -- 약관법령적용일자
	trms_stt_end_ymd   CHAR(8)       NULL,     -- 약관법령종료일자
	trms_stt_cn        VARCHAR(4000) NULL,     -- 약관법령내용
	atch_file_group_id VARCHAR(40)   NULL,     -- 첨부파일그룹아이디
	wrtr_dept_nm       VARCHAR(40)   NULL,     -- 작성자부서명
	mdfr_dept_nm       VARCHAR(40)   NULL,     -- 수정자부서명
	rgtr_id            VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt             TIMESTAMP     NULL,     -- 등록일시
	mdfr_id            VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt           TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_약관법령기본 기본키2
CREATE UNIQUE INDEX PK_TB_PP_M_TRMS_STT
	ON public.TB_PP_M_TRMS_STT
	( -- 대국민포털_약관법령기본
		trms_stt_sn ASC NULLS LAST -- 약관법령일련번호
	);

-- 대국민포털_약관법령기본
ALTER TABLE public.TB_PP_M_TRMS_STT
	ADD CONSTRAINT PK_TB_PP_M_TRMS_STT
		-- 대국민포털_약관법령기본 기본키2
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_TRMS_STT
	NOT DEFERRABLE;

-- 대국민포털_업무코드기본
CREATE TABLE public.TB_PP_M_TASK_CD
(
	task_cd       VARCHAR(20)   NOT NULL, -- 업무코드
	task_cd_nm    VARCHAR(200)  NULL,     -- 업무코드명
	up_task_cd    VARCHAR(20)   NULL,     -- 상위업무코드
	task_cd_vl    VARCHAR(100)  NULL,     -- 업무코드값
	task_cd_expln VARCHAR(4000) NULL,     -- 업무코드설명
	use_yn        CHAR(1)       NOT NULL, -- 사용여부
	rgtr_id       VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt        TIMESTAMP     NULL,     -- 등록일시
	mdfr_id       VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt      TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_업무코드기본 기본키2
CREATE UNIQUE INDEX PK_TB_PP_M_TASK_CD
	ON public.TB_PP_M_TASK_CD
	( -- 대국민포털_업무코드기본
		task_cd ASC NULLS LAST -- 업무코드
	);

-- 대국민포털_업무코드기본
ALTER TABLE public.TB_PP_M_TASK_CD
	ADD CONSTRAINT PK_TB_PP_M_TASK_CD
		-- 대국민포털_업무코드기본 기본키2
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_TASK_CD
	NOT DEFERRABLE;

-- 대국민포털_역할기본
CREATE TABLE public.TB_PP_M_ROLE
(
	role_cd       VARCHAR(20)   NOT NULL, -- 역할코드
	role_nm       VARCHAR(40)   NULL,     -- 역할명
	role_type_cd  VARCHAR(20)   NULL,     -- 역할유형코드
	role_expln_cn VARCHAR(4000) NULL,     -- 역할설명내용
	use_yn        CHAR(1)       NOT NULL, -- 사용여부
	wrtr_dept_nm  VARCHAR(40)   NULL,     -- 작성자부서명
	mdfr_dept_nm  VARCHAR(40)   NULL,     -- 수정자부서명
	rgtr_id       VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt        TIMESTAMP     NULL,     -- 등록일시
	mdfr_id       VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt      TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_역할기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_ROLE
	ON public.TB_PP_M_ROLE
	( -- 대국민포털_역할기본
		role_cd ASC NULLS LAST -- 역할코드
	);

-- 대국민포털_역할기본
ALTER TABLE public.TB_PP_M_ROLE
	ADD CONSTRAINT PK_TB_PP_M_ROLE
		-- 대국민포털_역할기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_ROLE
	NOT DEFERRABLE;

-- 대국민포털_전문가권한기본
CREATE TABLE public.TB_PP_M_EXPRT_AUTHRT
(
	mbr_no        VARCHAR(10)   NOT NULL, -- 회원번호
	exprt_task_sn NUMERIC(10,0) NULL,     -- 전문가업무일련번호
	authrt_cd     VARCHAR(10)   NOT NULL, -- 권한코드
	rgtr_id       VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt        TIMESTAMP     NULL,     -- 등록일시
	mdfr_id       VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt      TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_전문가권한기본 기본키2
CREATE UNIQUE INDEX PK_TB_PP_M_EXPRT_AUTHRT
	ON public.TB_PP_M_EXPRT_AUTHRT
	( -- 대국민포털_전문가권한기본
		mbr_no ASC NULLS LAST, -- 회원번호
		authrt_cd ASC NULLS LAST -- 권한코드
	);

-- 대국민포털_전문가권한기본
ALTER TABLE public.TB_PP_M_EXPRT_AUTHRT
	ADD CONSTRAINT PK_TB_PP_M_EXPRT_AUTHRT
		-- 대국민포털_전문가권한기본 기본키2
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_EXPRT_AUTHRT
	NOT DEFERRABLE;

-- 대국민포털_전문가업무기본
CREATE TABLE public.TB_PP_M_EXPRT_TASK
(
	exprt_task_sn      NUMERIC(10,0) NOT NULL, -- 전문가업무일련번호
	mbr_no             VARCHAR(10)   NULL,     -- 회원번호
	brno               CHAR(10)      NOT NULL, -- 사업자등록번호
	task_se_cd         VARCHAR(10)   NOT NULL, -- 업무구분코드
	exprt_aprv_stts_yn CHAR(1)       NOT NULL, -- 전문가승인상태여부
	aprv_prcs_dt       TIMESTAMP     NULL,     -- 승인처리일시
	rjct_rsn           VARCHAR(4000) NULL,     -- 반려사유
	wrtr_dept_nm       VARCHAR(40)   NULL,     -- 작성자부서명
	mdfr_dept_nm       VARCHAR(40)   NULL,     -- 수정자부서명
	rgtr_id            VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt             TIMESTAMP     NULL,     -- 등록일시
	mdfr_id            VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt           TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_전문가업무기본 기본키2
CREATE UNIQUE INDEX PK_TB_PP_M_EXPRT_TASK
	ON public.TB_PP_M_EXPRT_TASK
	( -- 대국민포털_전문가업무기본
		exprt_task_sn ASC NULLS LAST -- 전문가업무일련번호
	);

-- 대국민포털_전문가업무기본
ALTER TABLE public.TB_PP_M_EXPRT_TASK
	ADD CONSTRAINT PK_TB_PP_M_EXPRT_TASK
		-- 대국민포털_전문가업무기본 기본키2
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_EXPRT_TASK
	NOT DEFERRABLE;

-- EXT_공통_첨부파일기본
CREATE TABLE public.TB_CA_M_ATCH
(
	atch_file_sn      NUMERIC(10,0) NOT NULL, -- 첨부파일일련번호
	menu_sn           NUMERIC(22,0) NOT NULL, -- 메뉴일련번호
	menu_type         VARCHAR(20)   NULL,     -- 메뉴유형
	atch_file_uld_hr  TIMESTAMP     NOT NULL, -- 첨부파일업로드시간
	atch_file_use_yn  CHAR(1)       NOT NULL, -- 첨부파일사용여부
	atch_file_path    VARCHAR(1000) NULL,     -- 첨부파일경로
	atch_file_nm      VARCHAR(100)  NULL,     -- 첨부파일명
	atch_file_extn_nm VARCHAR(5)    NULL,     -- 첨부파일확장자명
	atch_file_cn      VARCHAR(1000) NULL,     -- 첨부파일내용
	atch_file_sz      NUMERIC(14,0) NULL,     -- 첨부파일크기
	rgtr_id           VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt            TIMESTAMP     NULL,     -- 등록일시
	mdfr_id           VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt          TIMESTAMP     NULL      -- 수정일시
);

-- EXT_공통_첨부파일기본 기본키
CREATE UNIQUE INDEX PK_TB_CA_M_ATCH
	ON public.TB_CA_M_ATCH
	( -- EXT_공통_첨부파일기본
		atch_file_sn ASC NULLS LAST -- 첨부파일일련번호
	);

-- EXT_공통_첨부파일기본
ALTER TABLE public.TB_CA_M_ATCH
	ADD CONSTRAINT PK_TB_CA_M_ATCH
		-- EXT_공통_첨부파일기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_CA_M_ATCH
	NOT DEFERRABLE;

-- 대국민포털_양식기본
CREATE TABLE public.TB_PP_M_FORM
(
	form_sn      NUMERIC(22,0) NOT NULL, -- 양식일련번호
	task_cd      VARCHAR(20)   NULL,     -- 업무코드
	form_nm      VARCHAR(40)   NULL,     -- 양식명
	form_path_nm VARCHAR(256)  NULL,     -- 양식경로명
	use_yn       CHAR(1)       NOT NULL, -- 사용여부
	rgtr_id      VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt       TIMESTAMP     NULL,     -- 등록일시
	mdfr_id      VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt     TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_양식기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_FORM
	ON public.TB_PP_M_FORM
	( -- 대국민포털_양식기본
		form_sn ASC NULLS LAST -- 양식일련번호
	);

-- 대국민포털_양식기본
ALTER TABLE public.TB_PP_M_FORM
	ADD CONSTRAINT PK_TB_PP_M_FORM
		-- 대국민포털_양식기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_FORM
	NOT DEFERRABLE;

-- 대국민포털_팝업기본
CREATE TABLE public.TB_PP_M_POPUP
(
	popup_sn           NUMERIC(10,0) NOT NULL, -- 팝업일련번호
	popup_ttl          VARCHAR(100)  NULL,     -- 팝업제목
	popup_pstg_bgng_dt TIMESTAMP     NOT NULL, -- 팝업게시시작일시
	popup_pstg_end_dt  TIMESTAMP     NOT NULL, -- 팝업게시종료일시
	popup_lnkg_addr    VARCHAR(320)  NULL,     -- 팝업연결주소
	popup_seq          NUMERIC(10,0) NOT NULL, -- 팝업순서
	popup_pstg_yn      CHAR(1)       NOT NULL, -- 팝업게시여부
	popup_npag_yn      CHAR(1)       NOT NULL, -- 팝업새창여부
	popup_expln        VARCHAR(4000) NULL,     -- 팝업설명
	atch_file_group_id VARCHAR(40)   NULL,     -- 첨부파일그룹아이디
	wrtr_dept_nm       VARCHAR(40)   NULL,     -- 작성자부서명
	mdfr_dept_nm       VARCHAR(40)   NULL,     -- 수정자부서명
	rgtr_id            VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt             TIMESTAMP     NULL,     -- 등록일시
	mdfr_id            VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt           TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_팝업기본 기본키2
CREATE UNIQUE INDEX PK_TB_PP_M_POPUP
	ON public.TB_PP_M_POPUP
	( -- 대국민포털_팝업기본
		popup_sn ASC NULLS LAST -- 팝업일련번호
	);

-- 대국민포털_팝업기본
ALTER TABLE public.TB_PP_M_POPUP
	ADD CONSTRAINT PK_TB_PP_M_POPUP
		-- 대국민포털_팝업기본 기본키2
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_POPUP
	NOT DEFERRABLE;

CREATE TABLE public.TB_PP_M_MBR_TOKEN (
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
    CONSTRAINT PK_TB_PP_M_MBR_TOKEN PRIMARY KEY (token_id)
);

COMMENT ON TABLE public.TB_PP_M_MBR_TOKEN IS '대국민포털_회원_TOKEN';
COMMENT ON COLUMN public.TB_PP_M_MBR_TOKEN.token_id IS 'JWT토큰ID';
COMMENT ON COLUMN public.TB_PP_M_MBR_TOKEN.mbr_id IS '회원아이디';
COMMENT ON COLUMN public.TB_PP_M_MBR_TOKEN.app_id IS '애플리케이션ID';
COMMENT ON COLUMN public.TB_PP_M_MBR_TOKEN.refresh_token IS 'JWT_Refresh_Token';
COMMENT ON COLUMN public.TB_PP_M_MBR_TOKEN.access_token IS 'JWT_Access_Token';
COMMENT ON COLUMN public.TB_PP_M_MBR_TOKEN.rgtr_id IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_MBR_TOKEN.reg_dt IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_MBR_TOKEN.reg_prgrm_id IS '등록프로그램아이디';
COMMENT ON COLUMN public.TB_PP_M_MBR_TOKEN.mdfr_id IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_MBR_TOKEN.mdfcn_dt IS '수정일시';
COMMENT ON COLUMN public.TB_PP_M_MBR_TOKEN.mdfcn_prgrm_id IS '수정프로그램아이디';

CREATE TABLE IF NOT EXISTS public.TB_PP_M_MBR_NO_SEQ (
  yyyy     char(4) PRIMARY KEY,
  last_seq integer NOT NULL
);

-- 대국민포털_회원정보기본
CREATE TABLE public.TB_PP_M_MBR_INFO
(
	mbr_no             VARCHAR(10)   NOT NULL, -- 회원번호
	mbr_id             VARCHAR(40)   NOT NULL, -- 회원아이디
	encpt_mbr_flnm     VARCHAR(256)  NOT NULL, -- 암호화회원성명
	encpt_mbr_eml_nm   VARCHAR(256)  NULL,     -- 암호화회원이메일명
	encpt_mbr_pswd     VARCHAR(256)  NOT NULL, -- 암호화회원비밀번호
	encpt_mbr_telno    VARCHAR(256)  NULL,     -- 암호화회원전화번호
	mbr_type_cd        CHAR(1)       NOT NULL, -- 회원유형코드
	mbr_join_stts_cd   CHAR(1)       NOT NULL, -- 회원가입상태코드
	mbr_join_dt        TIMESTAMP     NOT NULL, -- 회원가입일시
	mbr_whdwl_rsn      VARCHAR(4000) NULL,     -- 회원탈퇴사유
	mbr_whdwl_dt       TIMESTAMP     NULL,     -- 회원탈퇴일시
	cnstn_mbcmt_yn     CHAR(1)       NULL,     -- 자문위원여부
	bfr_enpswd         VARCHAR(256)  NULL,     -- 이전암호화비밀번호  >>> 변경 누락이 된 것 같네요. 암호화이전비밀번호(encpt_bfr_pswd)로 DA에게 수정 요청하겠습니다.
	pswd_chg_dt        TIMESTAMP     NULL,     -- 비밀번호변경일시
	pswd_err_nmtm      NUMERIC(2,0)  NULL,     -- 비밀번호오류횟수
	link_info_idntf_id VARCHAR(100)  NULL,     -- 연계정보식별아이디
	cert_token_vl      VARCHAR(40)   NULL,     -- 인증토큰값
	rgtr_id            VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt             TIMESTAMP     NULL,     -- 등록일시
	mdfr_id            VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt           TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_회원정보기본 기본키2
CREATE UNIQUE INDEX PK_TB_PP_M_MBR_INFO
	ON public.TB_PP_M_MBR_INFO
	( -- 대국민포털_회원정보기본
		mbr_no ASC NULLS LAST -- 회원번호
	);

-- 대국민포털_회원정보기본
ALTER TABLE public.TB_PP_M_MBR_INFO
	ADD CONSTRAINT PK_TB_PP_M_MBR_INFO
		-- 대국민포털_회원정보기본 기본키2
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_MBR_INFO
	NOT DEFERRABLE;

-- 대국민포털_게시판권한기본
CREATE TABLE public.TB_PP_M_BBS_AUTHRT
(
	bbs_id    VARCHAR(20) NOT NULL, -- 게시판아이디
	authrt_cd VARCHAR(10) NOT NULL, -- 권한코드
	rgtr_id   VARCHAR(40) NULL,     -- 등록자아이디
	reg_dt    TIMESTAMP   NULL,     -- 등록일시
	mdfr_id   VARCHAR(40) NULL,     -- 수정자아이디
	mdfcn_dt  TIMESTAMP   NULL      -- 수정일시
);

-- 대국민포털_게시판권한기본 기본키2
CREATE UNIQUE INDEX PK_TB_PP_M_BBS_AUTHRT
	ON public.TB_PP_M_BBS_AUTHRT
	( -- 대국민포털_게시판권한기본
		bbs_id ASC NULLS LAST, -- 게시판아이디
		authrt_cd ASC NULLS LAST -- 권한코드
	);

-- 대국민포털_게시판권한기본
ALTER TABLE public.TB_PP_M_BBS_AUTHRT
	ADD CONSTRAINT PK_TB_PP_M_BBS_AUTHRT
		-- 대국민포털_게시판권한기본 기본키2
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_BBS_AUTHRT
	NOT DEFERRABLE;

-- 대국민포털_법정대리인정보기본
CREATE TABLE public.TB_PP_M_STTY_AGT_INFO
(
	mbr_no               VARCHAR(10)  NOT NULL, -- 회원번호
	stty_agt_nm          VARCHAR(20)  NULL,     -- 법정대리인명
	encpt_stty_agt_telno VARCHAR(256) NULL,     -- 암호화법정대리인전화번호
	stty_agt_rel_nm      VARCHAR(20)  NULL,     -- 법정대리인관계명
	link_info_idntf_id   VARCHAR(100) NULL,     -- 연계정보식별아이디
	cert_token_vl        VARCHAR(40)  NULL,     -- 인증토큰값
	rgtr_id              VARCHAR(40)  NULL,     -- 등록자아이디
	reg_dt               TIMESTAMP    NULL,     -- 등록일시
	mdfr_id              VARCHAR(40)  NULL,     -- 수정자아이디
	mdfcn_dt             TIMESTAMP    NULL      -- 수정일시
);

-- 대국민포털_법정대리인정보기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_STTY_AGT_INFO
	ON public.TB_PP_M_STTY_AGT_INFO
	( -- 대국민포털_법정대리인정보기본
		mbr_no ASC NULLS LAST -- 회원번호
	);

-- 대국민포털_법정대리인정보기본
ALTER TABLE public.TB_PP_M_STTY_AGT_INFO
	ADD CONSTRAINT PK_TB_PP_M_STTY_AGT_INFO
		-- 대국민포털_법정대리인정보기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_STTY_AGT_INFO
	NOT DEFERRABLE;

-- 대국민포털_전문가정보기본
CREATE TABLE public.TB_PP_M_EXPRT_INFO
(
	mbr_no                  VARCHAR(10)   NOT NULL, -- 회원번호
	brno                    CHAR(10)      NOT NULL, -- 사업자등록번호
	task_se_cd              VARCHAR(10)   NULL,     -- 업무구분코드
	encpt_exprt_inst_eml_nm VARCHAR(256)  NULL,     -- 암호화전문가기관이메일명
	exprt_hdof_yn           CHAR(1)       NOT NULL, -- 전문가재직여부
	exprt_aprv_stts_yn      CHAR(1)       NOT NULL, -- 전문가승인상태여부
	aprv_prcs_dt            TIMESTAMP     NULL,     -- 승인처리일시
	rjct_rsn                VARCHAR(4000) NULL,     -- 반려사유
	atch_file_group_id      VARCHAR(40)   NULL,     -- 첨부파일그룹아이디
	rgtr_id                 VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt                  TIMESTAMP     NULL,     -- 등록일시
	mdfr_id                 VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt                TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_전문가정보기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_EXPRT_INFO
	ON public.TB_PP_M_EXPRT_INFO
	( -- 대국민포털_전문가정보기본
		mbr_no ASC NULLS LAST -- 회원번호
	);

-- 대국민포털_전문가정보기본
ALTER TABLE public.TB_PP_M_EXPRT_INFO
	ADD CONSTRAINT PK_TB_PP_M_EXPRT_INFO
		-- 대국민포털_전문가정보기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_EXPRT_INFO
	NOT DEFERRABLE;

-- 대국민포털_기관정보기본
CREATE TABLE public.TB_PP_M_INST
(
	brno     CHAR(10)     NOT NULL, -- 사업자등록번호
	inst_nm  VARCHAR(200) NOT NULL, -- 기관명
	del_yn   CHAR(1)      NOT NULL, -- 삭제여부
	rgtr_id  VARCHAR(40)  NULL,     -- 등록자아이디
	reg_dt   TIMESTAMP    NULL,     -- 등록일시
	mdfr_id  VARCHAR(40)  NULL,     -- 수정자아이디
	mdfcn_dt TIMESTAMP    NULL      -- 수정일시
);

-- 대국민포털_기관정보기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_INST
	ON public.TB_PP_M_INST
	( -- 대국민포털_기관정보기본
		brno ASC NULLS LAST -- 사업자등록번호
	);

-- 대국민포털_기관정보기본
ALTER TABLE public.TB_PP_M_INST
	ADD CONSTRAINT PK_TB_PP_M_INST
		-- 대국민포털_기관정보기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_INST
	NOT DEFERRABLE;

-- 대국민포털_만족도조사기본
CREATE TABLE public.TB_PP_M_DGSTFN_EXMN
(
	dgstfn_exmn_sn NUMERIC(22,0) NOT NULL, -- 만족도조사일련번호
	menu_sn        VARCHAR(20)   NOT NULL, -- 메뉴일련번호
	dgstfn_scr     NUMERIC(2,0)  NOT NULL, -- 만족도점수
	rgtr_id        VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt         TIMESTAMP     NULL,     -- 등록일시
	mdfr_id        VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt       TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_만족도조사기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_DGSTFN_EXMN
	ON public.TB_PP_M_DGSTFN_EXMN
	( -- 대국민포털_만족도조사기본
		dgstfn_exmn_sn ASC NULLS LAST -- 만족도조사일련번호
	);

-- 대국민포털_만족도조사기본
ALTER TABLE public.TB_PP_M_DGSTFN_EXMN
	ADD CONSTRAINT PK_TB_PP_M_DGSTFN_EXMN
		-- 대국민포털_만족도조사기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_DGSTFN_EXMN
	NOT DEFERRABLE;

-- 대국민포털_의견제안기본
CREATE TABLE public.TB_PP_M_OPNN
(
	opnn_sn            NUMERIC(22,0) NOT NULL, -- 의견일련번호
	encpt_wrtr_flnm    VARCHAR(256)  NULL,     -- 암호화작성자성명
	encpt_wrtr_telno   VARCHAR(256)  NULL,     -- 암호화작성자전화번호
	encpt_mbr_eml_nm   VARCHAR(256)  NULL,     -- 암호화회원이메일명
	wrt_se_cd          CHAR(3)       NOT NULL, -- 작성구분코드
	pbpt_cn            VARCHAR(4000) NULL,     -- 문제점내용
	dmnd_mttr_cn       VARCHAR(4000) NULL,     -- 요청사항내용
	dmnd_mttr_dtl_cn   TEXT          NULL,     -- 요청사항상세내용
	ref_mttr_cn        VARCHAR(4000) NULL,     -- 참고사항내용
	insd_ref_mttr_cn   TEXT          NULL,     -- 내부참고사항내용
	atch_file_group_id VARCHAR(40)   NULL,     -- 첨부파일그룹아이디
	rgtr_id            VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt             TIMESTAMP     NULL,     -- 등록일시
	mdfr_id            VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt           TIMESTAMP     NULL      -- 수정일시
);

-- 작성구분코드
COMMENT ON COLUMN public.TB_PP_M_OPNN.wrt_se_cd IS '의사,약사,간호사,소비자,기타';

-- 대국민포털_의견제안기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_OPNN
	ON public.TB_PP_M_OPNN
	( -- 대국민포털_의견제안기본
		opnn_sn ASC NULLS LAST -- 의견일련번호
	);

-- 대국민포털_의견제안기본
ALTER TABLE public.TB_PP_M_OPNN
	ADD CONSTRAINT PK_TB_PP_M_OPNN
		-- 대국민포털_의견제안기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_OPNN
	NOT DEFERRABLE;

-- 대국민포털_개인정보접근이력기본
CREATE TABLE public.TB_PP_M_PRVC_ACS_HSTRY
(
	prvc_acs_sn   NUMERIC(10,0) NOT NULL, -- 개인정보접근일련번호
	inq_crtr_dt   TIMESTAMP     NOT NULL, -- 조회기준일시
	srvc_cd       CHAR(2)       NOT NULL, -- 서비스코드
	menu_sn       VARCHAR(20)   NULL,     -- 메뉴일련번호
	메소드명      VARCHAR(100)  NOT NULL, -- 메소드명
	inq_info_cn   VARCHAR(1000) NOT NULL, -- 조회정보내용
	rqstr_id      VARCHAR(40)   NOT NULL, -- 요청자아이디
	rqstr_ip_addr VARCHAR(255)  NULL,     -- 요청자IP주소
	inq_cnd_cn    VARCHAR(4000) NOT NULL, -- 조회조건내용
	inq_telgm_cn  TEXT          NOT NULL, -- 조회전문내용
	rgtr_id       VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt        TIMESTAMP     NULL,     -- 등록일시
	mdfr_id       VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt      TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_개인정보접근이력기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_PRVC_ACS_HSTRY
	ON public.TB_PP_M_PRVC_ACS_HSTRY
	( -- 대국민포털_개인정보접근이력기본
		prvc_acs_sn ASC NULLS LAST -- 개인정보접근일련번호
	);

-- 대국민포털_개인정보접근이력기본
ALTER TABLE public.TB_PP_M_PRVC_ACS_HSTRY
	ADD CONSTRAINT PK_TB_PP_M_PRVC_ACS_HSTRY
		-- 대국민포털_개인정보접근이력기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_PRVC_ACS_HSTRY
	NOT DEFERRABLE;

-- 대국민포털_권한변경이력기본
CREATE TABLE public.TB_PP_M_AUTHRT_CHG_HSTRY
(
	authrt_chg_sn      NUMERIC(10,0) NOT NULL, -- 권한변경일련번호
	authrt_cd          VARCHAR(10)   NOT NULL, -- 권한코드
	menu_sn            VARCHAR(20)   NULL,     -- 메뉴일련번호
	aplcn_trgt_type_cd CHAR(5)       NOT NULL, -- 적용대상유형코드
	chg_role_list_cn   VARCHAR(4000) NULL,     -- 변경역할목록내용
	aplcn_trgt_nm      VARCHAR(20)   NULL,     -- 적용대상명
	chg_type_cd        VARCHAR(20)   NOT NULL, -- 변경유형코드
	authrt_chg_rmrk_cn VARCHAR(1000) NOT NULL, -- 권한변경비고내용
	rgtr_id            VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt             TIMESTAMP     NULL,     -- 등록일시
	mdfr_id            VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt           TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_권한변경이력기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_AUTHRT_CHG_HSTRY
	ON public.TB_PP_M_AUTHRT_CHG_HSTRY
	( -- 대국민포털_권한변경이력기본
		authrt_chg_sn ASC NULLS LAST -- 권한변경일련번호
	);

-- 대국민포털_권한변경이력기본
ALTER TABLE public.TB_PP_M_AUTHRT_CHG_HSTRY
	ADD CONSTRAINT PK_TB_PP_M_AUTHRT_CHG_HSTRY
		-- 대국민포털_권한변경이력기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_AUTHRT_CHG_HSTRY
	NOT DEFERRABLE;

-- 대국민포털_도메인기본
CREATE TABLE public.TB_PP_M_DMN
(
	com_std_dmn_nm       VARCHAR(100)  NOT NULL, -- 공통표준도메인명
	sys_se_nm            VARCHAR(40)   NULL,     -- 시스템구분명
	artcl_sou_nm         VARCHAR(40)   NULL,     -- 항목원천명
	com_std_dmn_clsf_nm  VARCHAR(40)   NULL,     -- 공통표준도메인분류명
	com_std_dmn_group_nm VARCHAR(40)   NULL,     -- 공통표준도메인그룹명
	com_std_dmn_expln    VARCHAR(4000) NULL,     -- 공통표준도메인설명
	dmn_type_nm          VARCHAR(40)   NULL,     -- 도메인유형명
	dmn_len              NUMERIC(10,0) NULL,     -- 도메인길이
	dmn_dcpt_len         NUMERIC(10,0) NULL,     -- 도메인소수점길이
	rgtr_id              VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt               TIMESTAMP     NULL,     -- 등록일시
	mdfr_id              VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt             TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_도메인기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_DMN
	ON public.TB_PP_M_DMN
	( -- 대국민포털_도메인기본
		com_std_dmn_nm ASC NULLS LAST -- 공통표준도메인명
	);

-- 대국민포털_도메인기본
ALTER TABLE public.TB_PP_M_DMN
	ADD CONSTRAINT PK_TB_PP_M_DMN
		-- 대국민포털_도메인기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_DMN
	NOT DEFERRABLE;

-- 대국민포털_단어기본
CREATE TABLE public.TB_PP_M_WORD
(
	com_std_word_nm          VARCHAR(100)  NOT NULL, -- 공통표준단어명
	sys_se_nm                VARCHAR(40)   NULL,     -- 시스템구분명
	artcl_sou_nm             VARCHAR(40)   NULL,     -- 항목원천명
	com_std_word_eng_abbr_nm VARCHAR(40)   NULL,     -- 공통표준단어영문약어명
	com_std_word_eng_nm      VARCHAR(256)  NULL,     -- 공통표준단어영문명
	com_std_word_expln       VARCHAR(4000) NULL,     -- 공통표준단어설명
	frm_word_yn              CHAR(1)       NULL,     -- 형식단어여부
	rgtr_id                  VARCHAR(40)   NULL,     -- 등록자아이디
	reg_dt                   TIMESTAMP     NULL,     -- 등록일시
	mdfr_id                  VARCHAR(40)   NULL,     -- 수정자아이디
	mdfcn_dt                 TIMESTAMP     NULL      -- 수정일시
);

-- 대국민포털_단어기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_WORD
	ON public.TB_PP_M_WORD
	( -- 대국민포털_단어기본
		com_std_word_nm ASC NULLS LAST -- 공통표준단어명
	);

-- 대국민포털_단어기본
ALTER TABLE public.TB_PP_M_WORD
	ADD CONSTRAINT PK_TB_PP_M_WORD
		-- 대국민포털_단어기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_WORD
	NOT DEFERRABLE;

-- 대국민포털_용어기본
CREATE TABLE public.TB_PP_M_TRM
(
	std_trm_nm          VARCHAR(100) NOT NULL, -- 표준용어명
	sys_se_nm           VARCHAR(40)  NULL,     -- 시스템구분명
	artcl_sou_nm        VARCHAR(40)  NULL,     -- 항목원천명
	std_trm_eng_abbr_nm VARCHAR(40)  NULL,     -- 표준용어영문약어명
	atrb_type_nm        VARCHAR(40)  NULL,     -- 속성유형명
	com_std_dmn_nm      VARCHAR(100) NULL,     -- 공통표준도메인명
	rgtr_id             VARCHAR(40)  NULL,     -- 등록자아이디
	reg_dt              TIMESTAMP    NULL,     -- 등록일시
	mdfr_id             VARCHAR(40)  NULL,     -- 수정자아이디
	mdfcn_dt            TIMESTAMP    NULL      -- 수정일시
);

-- 대국민포털_용어기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_TRM
	ON public.TB_PP_M_TRM
	( -- 대국민포털_용어기본
		std_trm_nm ASC NULLS LAST -- 표준용어명
	);

-- 대국민포털_용어기본
ALTER TABLE public.TB_PP_M_TRM
	ADD CONSTRAINT PK_TB_PP_M_TRM
		-- 대국민포털_용어기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_TRM
	NOT DEFERRABLE;

-- 대국민포털_KIDS부서정보기본
CREATE TABLE public.TB_PP_M_DEPT_INFO
(
	dept_no    VARCHAR(20) NOT NULL, -- 부서번호
	dept_nm    VARCHAR(80) NULL,     -- 부서명
	up_dept_no VARCHAR(20) NULL,     -- 상위부서번호
	rgtr_id    VARCHAR(40) NULL,     -- 등록자아이디
	reg_dt     TIMESTAMP   NULL,     -- 등록일시
	mdfr_id    VARCHAR(40) NULL,     -- 수정자아이디
	mdfcn_dt   TIMESTAMP   NULL      -- 수정일시
);

-- 대국민포털_KIDS부서정보기본 기본키
CREATE UNIQUE INDEX PK_TB_PP_M_DEPT_INFO
	ON public.TB_PP_M_DEPT_INFO
	( -- 대국민포털_KIDS부서정보기본
		dept_no ASC NULLS LAST -- 부서번호
	);

-- 대국민포털_KIDS부서정보기본
ALTER TABLE public.TB_PP_M_DEPT_INFO
	ADD CONSTRAINT PK_TB_PP_M_DEPT_INFO
		-- 대국민포털_KIDS부서정보기본 기본키
	PRIMARY KEY
	USING INDEX PK_TB_PP_M_DEPT_INFO
	NOT DEFERRABLE;

--------------------------------------------------------------------------- Table Foreign Key 생성 시작 --------------------------------------------------------------------
-- 대국민포털_게시물기본
ALTER TABLE public.TB_PP_M_PST
    ADD CONSTRAINT FK_TB_PP_M_BBS_TO_TB_PP_M_PST
     -- 대국민포털_게시판기본 -> 대국민포털_게시물기본
        FOREIGN KEY (
            bbs_id -- 게시판아이디
        )
        REFERENCES public.TB_PP_M_BBS ( -- 대국민포털_게시판기본
            bbs_id -- 게시판아이디
        );

-- 대국민포털_게시판기본 -> 대국민포털_게시물기본
COMMENT ON CONSTRAINT FK_TB_PP_M_BBS_TO_TB_PP_M_PST ON public.TB_PP_M_PST IS '대국민포털_게시판기본 -> 대국민포털_게시물기본';

-- 대국민포털_관리자정보기본
ALTER TABLE public.TB_PP_M_EMP
    ADD CONSTRAINT FK_TB_PP_M_ORGCHT_TO_TB_PP_M_EMP
     -- 대국민포털_KIDS조직도기본 -> 대국민포털_관리자정보기본
        FOREIGN KEY (
            emp_no -- 직원번호
        )
        REFERENCES public.TB_PP_M_ORGCHT ( -- 대국민포털_KIDS조직도기본
            emp_no -- 직원번호
        );

-- 대국민포털_KIDS조직도기본 -> 대국민포털_관리자정보기본
COMMENT ON CONSTRAINT FK_TB_PP_M_ORGCHT_TO_TB_PP_M_EMP ON public.TB_PP_M_EMP IS '대국민포털_KIDS조직도기본 -> 대국민포털_관리자정보기본';

-- 대국민포털_권한메뉴기본
ALTER TABLE public.TB_PP_M_AUTHRT_MENU
    ADD CONSTRAINT FK_TB_PP_M_AUTHRT_TO_TB_PP_M_AUTHRT_MENU
     -- 대국민포털_권한기본 -> 대국민포털_권한메뉴기본
        FOREIGN KEY (
            authrt_cd -- 권한코드
        )
        REFERENCES public.TB_PP_M_AUTHRT ( -- 대국민포털_권한기본
            authrt_cd -- 권한코드
        );

-- 대국민포털_권한기본 -> 대국민포털_권한메뉴기본
COMMENT ON CONSTRAINT FK_TB_PP_M_AUTHRT_TO_TB_PP_M_AUTHRT_MENU ON public.TB_PP_M_AUTHRT_MENU IS '대국민포털_권한기본 -> 대국민포털_권한메뉴기본';

-- 대국민포털_권한메뉴기본
ALTER TABLE public.TB_PP_M_AUTHRT_MENU
    ADD CONSTRAINT FK_TB_PP_M_MENU_TO_TB_PP_M_AUTHRT_MENU
     -- 대국민포털_메뉴기본 -> 대국민포털_권한메뉴기본
        FOREIGN KEY (
            menu_sn -- 메뉴일련번호
        )
        REFERENCES public.TB_PP_M_MENU ( -- 대국민포털_메뉴기본
            menu_sn -- 메뉴일련번호
        );

-- 대국민포털_메뉴기본 -> 대국민포털_권한메뉴기본
COMMENT ON CONSTRAINT FK_TB_PP_M_MENU_TO_TB_PP_M_AUTHRT_MENU ON public.TB_PP_M_AUTHRT_MENU IS '대국민포털_메뉴기본 -> 대국민포털_권한메뉴기본';

-- 대국민포털_기관업무기본
ALTER TABLE public.TB_PP_M_INST_TASK
    ADD CONSTRAINT FK_TB_PP_M_INST_TO_TB_PP_M_INST_TASK
     -- 대국민포털_기관정보기본 -> 대국민포털_기관업무기본
        FOREIGN KEY (
            brno -- 사업자등록번호
        )
        REFERENCES public.TB_PP_M_INST ( -- 대국민포털_기관정보기본
            brno -- 사업자등록번호
        );

-- 대국민포털_기관정보기본 -> 대국민포털_기관업무기본
COMMENT ON CONSTRAINT FK_TB_PP_M_INST_TO_TB_PP_M_INST_TASK ON public.TB_PP_M_INST_TASK IS '대국민포털_기관정보기본 -> 대국민포털_기관업무기본';

-- 대국민포털_담당자권한기본
ALTER TABLE public.TB_PP_M_PIC_AUTHRT
    ADD CONSTRAINT FK_TB_PP_M_AUTHRT_TO_TB_PP_M_PIC_AUTHRT
     -- 대국민포털_권한기본 -> 대국민포털_담당자권한기본2
        FOREIGN KEY (
            authrt_cd -- 권한코드
        )
        REFERENCES public.TB_PP_M_AUTHRT ( -- 대국민포털_권한기본
            authrt_cd -- 권한코드
        );

-- 대국민포털_권한기본 -> 대국민포털_담당자권한기본2
COMMENT ON CONSTRAINT FK_TB_PP_M_AUTHRT_TO_TB_PP_M_PIC_AUTHRT ON public.TB_PP_M_PIC_AUTHRT IS '대국민포털_권한기본 -> 대국민포털_담당자권한기본2';

-- 대국민포털_담당자권한기본
ALTER TABLE public.TB_PP_M_PIC_AUTHRT
    ADD CONSTRAINT FK_TB_PP_M_ORGCHT_TO_TB_PP_M_PIC_AUTHRT
     -- 대국민포털_KIDS조직도기본 -> 대국민포털_담당자권한기본
        FOREIGN KEY (
            emp_no -- 직원번호
        )
        REFERENCES public.TB_PP_M_ORGCHT ( -- 대국민포털_KIDS조직도기본
            emp_no -- 직원번호
        );

-- 대국민포털_KIDS조직도기본 -> 대국민포털_담당자권한기본
COMMENT ON CONSTRAINT FK_TB_PP_M_ORGCHT_TO_TB_PP_M_PIC_AUTHRT ON public.TB_PP_M_PIC_AUTHRT IS '대국민포털_KIDS조직도기본 -> 대국민포털_담당자권한기본';

-- 대국민포털_댓글기본
ALTER TABLE public.TB_PP_M_CMNT
    ADD CONSTRAINT FK_TB_PP_M_PST_TO_TB_PP_M_CMNT
     -- 대국민포털_게시물기본 -> 대국민포털_댓글기본
        FOREIGN KEY (
            pst_sn -- 게시물일련번호
        )
        REFERENCES public.TB_PP_M_PST ( -- 대국민포털_게시물기본
            pst_sn -- 게시물일련번호
        );

-- 대국민포털_게시물기본 -> 대국민포털_댓글기본
COMMENT ON CONSTRAINT FK_TB_PP_M_PST_TO_TB_PP_M_CMNT ON public.TB_PP_M_CMNT IS '대국민포털_게시물기본 -> 대국민포털_댓글기본';

-- 대국민포털_메뉴상세
ALTER TABLE public.TB_PP_D_MENU
    ADD CONSTRAINT FK_TB_PP_M_MENU_TO_TB_PP_D_MENU
     -- 대국민포털_메뉴기본 -> 대국민포털_메뉴상세
        FOREIGN KEY (
            menu_sn -- 메뉴일련번호
        )
        REFERENCES public.TB_PP_M_MENU ( -- 대국민포털_메뉴기본
            menu_sn -- 메뉴일련번호
        );

-- 대국민포털_메뉴기본 -> 대국민포털_메뉴상세
COMMENT ON CONSTRAINT FK_TB_PP_M_MENU_TO_TB_PP_D_MENU ON public.TB_PP_D_MENU IS '대국민포털_메뉴기본 -> 대국민포털_메뉴상세';

-- 대국민포털_권한메뉴롤기본
ALTER TABLE public.TB_PP_M_AUTHRT_MENU_ROLE
    ADD CONSTRAINT FK_TB_PP_M_ROLE_TO_TB_PP_M_AUTHRT_MENU_ROLE
     -- 대국민포털_역할기본 -> 대국민포털_권한메뉴롤기본
        FOREIGN KEY (
            role_cd -- 역할코드
        )
        REFERENCES public.TB_PP_M_ROLE ( -- 대국민포털_역할기본
            role_cd -- 역할코드
        );

-- 대국민포털_역할기본 -> 대국민포털_권한메뉴롤기본
COMMENT ON CONSTRAINT FK_TB_PP_M_ROLE_TO_TB_PP_M_AUTHRT_MENU_ROLE ON public.TB_PP_M_AUTHRT_MENU_ROLE IS '대국민포털_역할기본 -> 대국민포털_권한메뉴롤기본';

-- 대국민포털_권한메뉴롤기본
ALTER TABLE public.TB_PP_M_AUTHRT_MENU_ROLE
    ADD CONSTRAINT FK_TB_PP_M_AUTHRT_MENU_TO_TB_PP_M_AUTHRT_MENU_ROLE
     -- 대국민포털_권한메뉴기본 -> 대국민포털_권한메뉴롤기본
        FOREIGN KEY (
            authrt_cd, -- 권한코드
            menu_sn    -- 메뉴일련번호
        )
        REFERENCES public.TB_PP_M_AUTHRT_MENU ( -- 대국민포털_권한메뉴기본
            authrt_cd, -- 권한코드
            menu_sn    -- 메뉴일련번호
        );

-- 대국민포털_권한메뉴기본 -> 대국민포털_권한메뉴롤기본
COMMENT ON CONSTRAINT FK_TB_PP_M_AUTHRT_MENU_TO_TB_PP_M_AUTHRT_MENU_ROLE ON public.TB_PP_M_AUTHRT_MENU_ROLE IS '대국민포털_권한메뉴기본 -> 대국민포털_권한메뉴롤기본';

-- 대국민포털_부서권한기본
ALTER TABLE public.TB_PP_M_DEPT_AUTHRT
    ADD CONSTRAINT FK_TB_PP_M_AUTHRT_TO_TB_PP_M_DEPT_AUTHRT
     -- 대국민포털_권한기본 -> 대국민포털_부서권한기본2
        FOREIGN KEY (
            authrt_cd -- 권한코드
        )
        REFERENCES public.TB_PP_M_AUTHRT ( -- 대국민포털_권한기본
            authrt_cd -- 권한코드
        );

-- 대국민포털_권한기본 -> 대국민포털_부서권한기본2
COMMENT ON CONSTRAINT FK_TB_PP_M_AUTHRT_TO_TB_PP_M_DEPT_AUTHRT ON public.TB_PP_M_DEPT_AUTHRT IS '대국민포털_권한기본 -> 대국민포털_부서권한기본2';

-- 대국민포털_약관법령기본
ALTER TABLE public.TB_PP_M_TRMS_STT
    ADD CONSTRAINT FK_TB_PP_M_TASK_CD_TO_TB_PP_M_TRMS_STT
     -- 대국민포털_업무코드기본 -> 대국민포털_약관법령기본2
        FOREIGN KEY (
            trms_stt_cd -- 약관법령코드
        )
        REFERENCES public.TB_PP_M_TASK_CD ( -- 대국민포털_업무코드기본
            task_cd -- 업무코드
        );

-- 대국민포털_업무코드기본 -> 대국민포털_약관법령기본2
COMMENT ON CONSTRAINT FK_TB_PP_M_TASK_CD_TO_TB_PP_M_TRMS_STT ON public.TB_PP_M_TRMS_STT IS '대국민포털_업무코드기본 -> 대국민포털_약관법령기본2';

-- 대국민포털_전문가권한기본
ALTER TABLE public.TB_PP_M_EXPRT_AUTHRT
    ADD CONSTRAINT FK_TB_PP_M_AUTHRT_TO_TB_PP_M_EXPRT_AUTHRT
     -- 대국민포털_권한기본 -> 대국민포털_전문가권한기본2
        FOREIGN KEY (
            authrt_cd -- 권한코드
        )
        REFERENCES public.TB_PP_M_AUTHRT ( -- 대국민포털_권한기본
            authrt_cd -- 권한코드
        );

-- 대국민포털_권한기본 -> 대국민포털_전문가권한기본2
COMMENT ON CONSTRAINT FK_TB_PP_M_AUTHRT_TO_TB_PP_M_EXPRT_AUTHRT ON public.TB_PP_M_EXPRT_AUTHRT IS '대국민포털_권한기본 -> 대국민포털_전문가권한기본2';

-- 대국민포털_전문가권한기본
ALTER TABLE public.TB_PP_M_EXPRT_AUTHRT
    ADD CONSTRAINT FK_TB_PP_M_MBR_INFO_TO_TB_PP_M_EXPRT_AUTHRT
     -- 대국민포털_회원정보기본 -> 대국민포털_전문가권한기본
        FOREIGN KEY (
            mbr_no -- 회원번호
        )
        REFERENCES public.TB_PP_M_MBR_INFO ( -- 대국민포털_회원정보기본
            mbr_no -- 회원번호
        );

-- 대국민포털_회원정보기본 -> 대국민포털_전문가권한기본
COMMENT ON CONSTRAINT FK_TB_PP_M_MBR_INFO_TO_TB_PP_M_EXPRT_AUTHRT ON public.TB_PP_M_EXPRT_AUTHRT IS '대국민포털_회원정보기본 -> 대국민포털_전문가권한기본';

-- 대국민포털_전문가업무기본
ALTER TABLE public.TB_PP_M_EXPRT_TASK
    ADD CONSTRAINT FK_TB_PP_M_EXPRT_INFO_TO_TB_PP_M_EXPRT_TASK
     -- 대국민포털_전문가정보기본 -> 대국민포털_전문가업무기본
        FOREIGN KEY (
            mbr_no -- 회원번호
        )
        REFERENCES public.TB_PP_M_EXPRT_INFO ( -- 대국민포털_전문가정보기본
            mbr_no -- 회원번호
        );

-- 대국민포털_전문가정보기본 -> 대국민포털_전문가업무기본
COMMENT ON CONSTRAINT FK_TB_PP_M_EXPRT_INFO_TO_TB_PP_M_EXPRT_TASK ON public.TB_PP_M_EXPRT_TASK IS '대국민포털_전문가정보기본 -> 대국민포털_전문가업무기본';

-- 대국민포털_양식기본
ALTER TABLE public.TB_PP_M_FORM
    ADD CONSTRAINT FK_TB_PP_M_TASK_CD_TO_TB_PP_M_FORM
     -- 대국민포털_업무코드기본 -> 대국민포털_양식기본
        FOREIGN KEY (
            task_cd -- 업무코드
        )
        REFERENCES public.TB_PP_M_TASK_CD ( -- 대국민포털_업무코드기본
            task_cd -- 업무코드
        );

-- 대국민포털_업무코드기본 -> 대국민포털_양식기본
COMMENT ON CONSTRAINT FK_TB_PP_M_TASK_CD_TO_TB_PP_M_FORM ON public.TB_PP_M_FORM IS '대국민포털_업무코드기본 -> 대국민포털_양식기본';

-- 대국민포털_게시판권한기본
ALTER TABLE public.TB_PP_M_BBS_AUTHRT
    ADD CONSTRAINT FK_TB_PP_M_AUTHRT_TO_TB_PP_M_BBS_AUTHRT
     -- 대국민포털_권한기본 -> 대국민포털_게시판권한기본2
        FOREIGN KEY (
            authrt_cd -- 권한코드
        )
        REFERENCES public.TB_PP_M_AUTHRT ( -- 대국민포털_권한기본
            authrt_cd -- 권한코드
        );

-- 대국민포털_권한기본 -> 대국민포털_게시판권한기본2
COMMENT ON CONSTRAINT FK_TB_PP_M_AUTHRT_TO_TB_PP_M_BBS_AUTHRT ON public.TB_PP_M_BBS_AUTHRT IS '대국민포털_권한기본 -> 대국민포털_게시판권한기본2';

-- 대국민포털_게시판권한기본
ALTER TABLE public.TB_PP_M_BBS_AUTHRT
    ADD CONSTRAINT FK_TB_PP_M_BBS_TO_TB_PP_M_BBS_AUTHRT
     -- 대국민포털_게시판기본 -> 대국민포털_게시판권한기본2
        FOREIGN KEY (
            bbs_id -- 게시판아이디
        )
        REFERENCES public.TB_PP_M_BBS ( -- 대국민포털_게시판기본
            bbs_id -- 게시판아이디
        );

-- 대국민포털_게시판기본 -> 대국민포털_게시판권한기본2
COMMENT ON CONSTRAINT FK_TB_PP_M_BBS_TO_TB_PP_M_BBS_AUTHRT ON public.TB_PP_M_BBS_AUTHRT IS '대국민포털_게시판기본 -> 대국민포털_게시판권한기본2';

-- 대국민포털_법정대리인정보기본
ALTER TABLE public.TB_PP_M_STTY_AGT_INFO
    ADD CONSTRAINT FK_TB_PP_M_MBR_INFO_TO_TB_PP_M_STTY_AGT_INFO
     -- 대국민포털_회원정보기본 -> 대국민포털_법정대리인정보기본
        FOREIGN KEY (
            mbr_no -- 회원번호
        )
        REFERENCES public.TB_PP_M_MBR_INFO ( -- 대국민포털_회원정보기본
            mbr_no -- 회원번호
        );

-- 대국민포털_회원정보기본 -> 대국민포털_법정대리인정보기본
COMMENT ON CONSTRAINT FK_TB_PP_M_MBR_INFO_TO_TB_PP_M_STTY_AGT_INFO ON public.TB_PP_M_STTY_AGT_INFO IS '대국민포털_회원정보기본 -> 대국민포털_법정대리인정보기본';

-- 대국민포털_전문가정보기본
ALTER TABLE public.TB_PP_M_EXPRT_INFO
    ADD CONSTRAINT FK_TB_PP_M_MBR_INFO_TO_TB_PP_M_EXPRT_INFO
     -- 대국민포털_회원정보기본 -> 대국민포털_전문가정보기본
        FOREIGN KEY (
            mbr_no -- 회원번호
        )
        REFERENCES public.TB_PP_M_MBR_INFO ( -- 대국민포털_회원정보기본
            mbr_no -- 회원번호
        );

-- 대국민포털_회원정보기본 -> 대국민포털_전문가정보기본
COMMENT ON CONSTRAINT FK_TB_PP_M_MBR_INFO_TO_TB_PP_M_EXPRT_INFO ON public.TB_PP_M_EXPRT_INFO IS '대국민포털_회원정보기본 -> 대국민포털_전문가정보기본';

-- 대국민포털_전문가정보기본
ALTER TABLE public.TB_PP_M_EXPRT_INFO
    ADD CONSTRAINT FK_TB_PP_M_INST_TO_TB_PP_M_EXPRT_INFO
     -- 대국민포털_기관정보기본 -> 대국민포털_전문가정보기본
        FOREIGN KEY (
            brno -- 사업자등록번호
        )
        REFERENCES public.TB_PP_M_INST ( -- 대국민포털_기관정보기본
            brno -- 사업자등록번호
        );

-- 대국민포털_기관정보기본 -> 대국민포털_전문가정보기본
COMMENT ON CONSTRAINT FK_TB_PP_M_INST_TO_TB_PP_M_EXPRT_INFO ON public.TB_PP_M_EXPRT_INFO IS '대국민포털_기관정보기본 -> 대국민포털_전문가정보기본';

-- 대국민포털_만족도조사기본
ALTER TABLE public.TB_PP_M_DGSTFN_EXMN
    ADD CONSTRAINT FK_TB_PP_M_MENU_TO_TB_PP_M_DGSTFN_EXMN
     -- 대국민포털_메뉴기본 -> 대국민포털_만족도조사기본
        FOREIGN KEY (
            menu_sn -- 메뉴일련번호
        )
        REFERENCES public.TB_PP_M_MENU ( -- 대국민포털_메뉴기본
            menu_sn -- 메뉴일련번호
        );

-- 대국민포털_메뉴기본 -> 대국민포털_만족도조사기본
COMMENT ON CONSTRAINT FK_TB_PP_M_MENU_TO_TB_PP_M_DGSTFN_EXMN ON public.TB_PP_M_DGSTFN_EXMN IS '대국민포털_메뉴기본 -> 대국민포털_만족도조사기본';
--------------------------------------------------------------------------- Table Foreign Key 생성 끝 --------------------------------------------------------------------
 

COMMENT ON TABLE public.TB_PP_M_DUR_SNCTZ
IS '대국민포털_DUR노인주의기본';

COMMENT ON COLUMN public.TB_PP_M_DUR_SNCTZ.snctz_cutn_sn
IS '노인주의일련번호';
COMMENT ON COLUMN public.TB_PP_M_DUR_SNCTZ.prdct_cd
IS '제품코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_SNCTZ.igrd_nm
IS '성분명';
COMMENT ON COLUMN public.TB_PP_M_DUR_SNCTZ.igrd_cd
IS '성분코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_SNCTZ.prdct_nm
IS '제품명';
COMMENT ON COLUMN public.TB_PP_M_DUR_SNCTZ.bzenty_nm
IS '업체명';
COMMENT ON COLUMN public.TB_PP_M_DUR_SNCTZ.pbanc_ymd
IS '공고일자';
COMMENT ON COLUMN public.TB_PP_M_DUR_SNCTZ.pbanc_no
IS '공고번호';
COMMENT ON COLUMN public.TB_PP_M_DUR_SNCTZ.mdcn_dtl_cn
IS '약품상세내용';
COMMENT ON COLUMN public.TB_PP_M_DUR_SNCTZ.aplcn_ym
IS '적용연월';
COMMENT ON COLUMN public.TB_PP_M_DUR_SNCTZ.rmrk_cn
IS '비고내용';
COMMENT ON COLUMN public.TB_PP_M_DUR_SNCTZ.oper_stts_cd
IS '운영상태코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_SNCTZ.slry_se_cd
IS '급여구분코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_SNCTZ.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_DUR_SNCTZ.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_DUR_SNCTZ.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_DUR_SNCTZ.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_DUR_CONC_BANN
IS '대국민포털_DUR병용금기기본';

COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.conc_bann_sn
IS '병용금기일련번호';
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.igrd_nm_1
IS '성분명_1';
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.igrd_cd_1
IS '성분코드_1';
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.prdct_cd_1
IS '제품코드_1';
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.prdct_nm_1
IS '제품명_1';
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.bzenty_nm_1
IS '업체명_1';
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.slry_se_cd_1
IS '급여구분코드_1';
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.igrd_nm_2
IS '성분명_2';
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.igrd_cd_2
IS '성분코드_2';
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.prdct_cd_2
IS '제품코드_2';
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.prdct_nm_2
IS '제품명_2';
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.bzenty_nm_2
IS '업체명_2';
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.slry_se_cd_2
IS '급여구분코드_2';
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.ancmnt_no
IS '고시번호';
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.ancmnt_aplcn_ymd
IS '고시적용일자';
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.bannRsn
IS '금기사유';
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.rmrk_cn
IS '비고내용';
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.aplcn_ym
IS '적용연월';
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.oper_stts_cd
IS '운영상태코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_DUR_CONC_BANN.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_DUR_NURSW
IS '대국민포털_DUR수유부주의기본';

COMMENT ON COLUMN public.TB_PP_M_DUR_NURSW.nursw_cutn_sn
IS '수유부주의일련번호';
COMMENT ON COLUMN public.TB_PP_M_DUR_NURSW.prdct_cd
IS '제품코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_NURSW.igrd_cd
IS '성분코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_NURSW.igrd_nm
IS '성분명';
COMMENT ON COLUMN public.TB_PP_M_DUR_NURSW.prdct_nm
IS '제품명';
COMMENT ON COLUMN public.TB_PP_M_DUR_NURSW.bzenty_nm
IS '업체명';
COMMENT ON COLUMN public.TB_PP_M_DUR_NURSW.pbanc_ymd
IS '공고일자';
COMMENT ON COLUMN public.TB_PP_M_DUR_NURSW.pbanc_no
IS '공고번호';
COMMENT ON COLUMN public.TB_PP_M_DUR_NURSW.aplcn_ym
IS '적용연월';
COMMENT ON COLUMN public.TB_PP_M_DUR_NURSW.rmrk_cn
IS '비고내용';
COMMENT ON COLUMN public.TB_PP_M_DUR_NURSW.slry_se_cd
IS '급여구분코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_NURSW.oper_stts_cd
IS '운영상태코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_NURSW.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_DUR_NURSW.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_DUR_NURSW.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_DUR_NURSW.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_DUR_CPCT
IS '대국민포털_DUR용량주의기본';

COMMENT ON COLUMN public.TB_PP_M_DUR_CPCT.cpct_cutn_sn
IS '용량주의일련번호';
COMMENT ON COLUMN public.TB_PP_M_DUR_CPCT.mdcn_cd
IS '약품코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_CPCT.mdcn_nm
IS '약품명';
COMMENT ON COLUMN public.TB_PP_M_DUR_CPCT.gnrl_nm_cd
IS '일반명코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_CPCT.gnrl_nm
IS '일반명';
COMMENT ON COLUMN public.TB_PP_M_DUR_CPCT.day_max_admin_cpct_cn
IS '일최대투여용량내용';
COMMENT ON COLUMN public.TB_PP_M_DUR_CPCT.day_max_admin_crtr_cpct
IS '일최대투여기준용량';
COMMENT ON COLUMN public.TB_PP_M_DUR_CPCT.chck_crtr_igrd_cpct
IS '점검기준성분용량';
COMMENT ON COLUMN public.TB_PP_M_DUR_CPCT.pbanc_ymd
IS '공고일자';
COMMENT ON COLUMN public.TB_PP_M_DUR_CPCT.pbanc_no
IS '공고번호';
COMMENT ON COLUMN public.TB_PP_M_DUR_CPCT.dtl_cn
IS '상세내용';
COMMENT ON COLUMN public.TB_PP_M_DUR_CPCT.slry_se_cd
IS '급여구분코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_CPCT.aplcn_ym
IS '적용연월';
COMMENT ON COLUMN public.TB_PP_M_DUR_CPCT.oper_stts_cd
IS '운영상태코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_CPCT.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_DUR_CPCT.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_DUR_CPCT.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_DUR_CPCT.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_DUR_PRGNT_BANN
IS '대국민포털_DUR임부금기기본';

COMMENT ON COLUMN public.TB_PP_M_DUR_PRGNT_BANN.임부금기일련번호
IS '임부금기일련번호';
COMMENT ON COLUMN public.TB_PP_M_DUR_PRGNT_BANN.igrd_nm
IS '성분명';
COMMENT ON COLUMN public.TB_PP_M_DUR_PRGNT_BANN.igrd_cd
IS '성분코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_PRGNT_BANN.prdct_cd
IS '제품코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_PRGNT_BANN.prdct_nm
IS '제품명';
COMMENT ON COLUMN public.TB_PP_M_DUR_PRGNT_BANN.bzenty_nm
IS '업체명';
COMMENT ON COLUMN public.TB_PP_M_DUR_PRGNT_BANN.ancmnt_ymd
IS '고시일자';
COMMENT ON COLUMN public.TB_PP_M_DUR_PRGNT_BANN.ancmnt_no
IS '고시번호';
COMMENT ON COLUMN public.TB_PP_M_DUR_PRGNT_BANN.금기등급수
IS '금기등급수';
COMMENT ON COLUMN public.TB_PP_M_DUR_PRGNT_BANN.dtl_info_cn
IS '상세정보내용';
COMMENT ON COLUMN public.TB_PP_M_DUR_PRGNT_BANN.slry_se_cd
IS '급여구분코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_PRGNT_BANN.aplcn_ym
IS '적용연월';
COMMENT ON COLUMN public.TB_PP_M_DUR_PRGNT_BANN.oper_stts_cd
IS '운영상태코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_PRGNT_BANN.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_DUR_PRGNT_BANN.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_DUR_PRGNT_BANN.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_DUR_PRGNT_BANN.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_DUR_DOSAGE
IS '대국민포털_DUR투여기간주의기본';

COMMENT ON COLUMN public.TB_PP_M_DUR_DOSAGE.admin_prd_cutn_sn
IS '투여기간주의일련번호';
COMMENT ON COLUMN public.TB_PP_M_DUR_DOSAGE.mdcn_cd
IS '약품코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_DOSAGE.mdcn_nm
IS '약품명';
COMMENT ON COLUMN public.TB_PP_M_DUR_DOSAGE.gnrl_nm_cd
IS '일반명코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_DOSAGE.gnrl_nm
IS '일반명';
COMMENT ON COLUMN public.TB_PP_M_DUR_DOSAGE.max_admin_prd_day_cnt
IS '최대투여기간일수';
COMMENT ON COLUMN public.TB_PP_M_DUR_DOSAGE.pbanc_ymd
IS '공고일자';
COMMENT ON COLUMN public.TB_PP_M_DUR_DOSAGE.pbanc_no
IS '공고번호';
COMMENT ON COLUMN public.TB_PP_M_DUR_DOSAGE.rmrk_cn
IS '비고내용';
COMMENT ON COLUMN public.TB_PP_M_DUR_DOSAGE.slry_se_cd
IS '급여구분코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_DOSAGE.aplcn_ym
IS '적용연월';
COMMENT ON COLUMN public.TB_PP_M_DUR_DOSAGE.oper_stts_cd
IS '운영상태코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_DOSAGE.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_DUR_DOSAGE.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_DUR_DOSAGE.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_DUR_DOSAGE.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_DUR_EFTGRP
IS '대국민포털_DUR효능군중복기본';

COMMENT ON COLUMN public.TB_PP_M_DUR_EFTGRP.효능군중복일련번호
IS '효능군중복일련번호';
COMMENT ON COLUMN public.TB_PP_M_DUR_EFTGRP.효능그룹명
IS '효능그룹명';
COMMENT ON COLUMN public.TB_PP_M_DUR_EFTGRP.group_nm
IS '그룹명';
COMMENT ON COLUMN public.TB_PP_M_DUR_EFTGRP.group_nm_1
IS '그룹명_1';
COMMENT ON COLUMN public.TB_PP_M_DUR_EFTGRP.gnrl_nm_cd
IS '일반명코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_EFTGRP.gnrl_nm
IS '일반명';
COMMENT ON COLUMN public.TB_PP_M_DUR_EFTGRP.효능군중복점검코드
IS '효능군중복점검코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_EFTGRP.mdcn_cd
IS '약품코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_EFTGRP.item_nm
IS '품목명';
COMMENT ON COLUMN public.TB_PP_M_DUR_EFTGRP.bzenty_nm
IS '업체명';
COMMENT ON COLUMN public.TB_PP_M_DUR_EFTGRP.pbanc_ymd
IS '공고일자';
COMMENT ON COLUMN public.TB_PP_M_DUR_EFTGRP.pbanc_no
IS '공고번호';
COMMENT ON COLUMN public.TB_PP_M_DUR_EFTGRP.slry_se_cd
IS '급여구분코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_EFTGRP.aplcn_ym
IS '적용연월';
COMMENT ON COLUMN public.TB_PP_M_DUR_EFTGRP.oper_stts_cd
IS '운영상태코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_EFTGRP.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_DUR_EFTGRP.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_DUR_EFTGRP.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_DUR_EFTGRP.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_DUR_AGE_BANN
IS '대국민포털_DUR연령금기기본';

COMMENT ON COLUMN public.TB_PP_M_DUR_AGE_BANN.연령금기일련번호
IS '연령금기일련번호';
COMMENT ON COLUMN public.TB_PP_M_DUR_AGE_BANN.igrd_nm
IS '성분명';
COMMENT ON COLUMN public.TB_PP_M_DUR_AGE_BANN.igrd_cd
IS '성분코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_AGE_BANN.prdct_cd
IS '제품코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_AGE_BANN.prdct_nm
IS '제품명';
COMMENT ON COLUMN public.TB_PP_M_DUR_AGE_BANN.bzenty_nm
IS '업체명';
COMMENT ON COLUMN public.TB_PP_M_DUR_AGE_BANN.rlvt_age
IS '해당연령';
COMMENT ON COLUMN public.TB_PP_M_DUR_AGE_BANN.rlvt_age_unit_nm
IS '해당연령단위명';
COMMENT ON COLUMN public.TB_PP_M_DUR_AGE_BANN.age_prcs_cnd_nm
IS '연령처리조건명';
COMMENT ON COLUMN public.TB_PP_M_DUR_AGE_BANN.ancmnt_no
IS '고시번호';
COMMENT ON COLUMN public.TB_PP_M_DUR_AGE_BANN.ancmnt_ymd
IS '고시일자';
COMMENT ON COLUMN public.TB_PP_M_DUR_AGE_BANN.dtl_info_cn
IS '상세정보내용';
COMMENT ON COLUMN public.TB_PP_M_DUR_AGE_BANN.slry_se_cd
IS '급여구분코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_AGE_BANN.aplcn_ym
IS '적용연월';
COMMENT ON COLUMN public.TB_PP_M_DUR_AGE_BANN.oper_stts_cd
IS '운영상태코드';
COMMENT ON COLUMN public.TB_PP_M_DUR_AGE_BANN.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_DUR_AGE_BANN.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_DUR_AGE_BANN.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_DUR_AGE_BANN.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_FAQ
IS '대국민포털_FAQ기본';

COMMENT ON COLUMN public.TB_PP_M_FAQ.faq_sn
IS 'FAQ일련번호';
COMMENT ON COLUMN public.TB_PP_M_FAQ.task_se_cd
IS '업무구분코드';
COMMENT ON COLUMN public.TB_PP_M_FAQ.faq_clsf_nm
IS 'FAQ분류명';
COMMENT ON COLUMN public.TB_PP_M_FAQ.faq_ttl
IS 'FAQ제목';
COMMENT ON COLUMN public.TB_PP_M_FAQ.faq_seq
IS 'FAQ순서';
COMMENT ON COLUMN public.TB_PP_M_FAQ.use_yn
IS '사용여부';
COMMENT ON COLUMN public.TB_PP_M_FAQ.lang_se_cd
IS '언어구분코드';
COMMENT ON COLUMN public.TB_PP_M_FAQ.faq_ans_cn
IS 'FAQ답변내용';
COMMENT ON COLUMN public.TB_PP_M_FAQ.atch_file_group_id
IS '첨부파일그룹아이디';
COMMENT ON COLUMN public.TB_PP_M_FAQ.wrtr_dept_nm
IS '작성자부서명';
COMMENT ON COLUMN public.TB_PP_M_FAQ.mdfr_dept_nm
IS '수정자부서명';
COMMENT ON COLUMN public.TB_PP_M_FAQ.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_FAQ.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_FAQ.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_FAQ.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_EMP_INFO
IS '대국민포털_KIDS직원정보기본';

COMMENT ON COLUMN public.TB_PP_M_EMP_INFO.emp_no
IS '직원번호';
COMMENT ON COLUMN public.TB_PP_M_EMP_INFO.emp_nm
IS '직원명';
COMMENT ON COLUMN public.TB_PP_M_EMP_INFO.dept_no
IS '부서번호';
COMMENT ON COLUMN public.TB_PP_M_EMP_INFO.jbgd_nm
IS '직급명';
COMMENT ON COLUMN public.TB_PP_M_EMP_INFO.encpt_emp_telno
IS '암호화직원전화번호';
COMMENT ON COLUMN public.TB_PP_M_EMP_INFO.encpt_emp_eml_nm
IS '암호화직원이메일명';
COMMENT ON COLUMN public.TB_PP_M_EMP_INFO.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_EMP_INFO.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_EMP_INFO.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_EMP_INFO.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_PST
IS '대국민포털_게시물기본';

COMMENT ON COLUMN public.TB_PP_M_PST.pst_sn
IS '게시물일련번호';
COMMENT ON COLUMN public.TB_PP_M_PST.bbs_id
IS '게시판아이디';
COMMENT ON COLUMN public.TB_PP_M_PST.pst_ttl
IS '게시물제목';
COMMENT ON COLUMN public.TB_PP_M_PST.pst_cn
IS '게시물내용';
COMMENT ON COLUMN public.TB_PP_M_PST.pst_inq_cnt
IS '게시물조회수';
COMMENT ON COLUMN public.TB_PP_M_PST.pst_kogl_cprgt_type_cd
IS '게시물공공누리저작권유형코드';
COMMENT ON COLUMN public.TB_PP_M_PST.atch_file_group_id
IS '첨부파일그룹아이디';
COMMENT ON COLUMN public.TB_PP_M_PST.thmb_id
IS '썸네일아이디';
COMMENT ON COLUMN public.TB_PP_M_PST.fix_yn
IS '고정여부';
COMMENT ON COLUMN public.TB_PP_M_PST.fix_bgng_ymd
IS '고정시작일자';
COMMENT ON COLUMN public.TB_PP_M_PST.fix_end_ymd
IS '고정종료일자';
COMMENT ON COLUMN public.TB_PP_M_PST.vdo_url_addr
IS '동영상URL주소';
COMMENT ON COLUMN public.TB_PP_M_PST.expsr_yn
IS '노출여부';
COMMENT ON COLUMN public.TB_PP_M_PST.wrtr_dept_nm
IS '작성자부서명';
COMMENT ON COLUMN public.TB_PP_M_PST.mdfr_dept_nm
IS '수정자부서명';
COMMENT ON COLUMN public.TB_PP_M_PST.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_PST.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_PST.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_PST.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_BBS
IS '대국민포털_게시판기본';

COMMENT ON COLUMN public.TB_PP_M_BBS.bbs_id
IS '게시판아이디';
COMMENT ON COLUMN public.TB_PP_M_BBS.bbs_nm
IS '게시판명';
COMMENT ON COLUMN public.TB_PP_M_BBS.bbs_atrb_cd
IS '게시판속성코드';
COMMENT ON COLUMN public.TB_PP_M_BBS.bbs_expln
IS '게시판설명';
COMMENT ON COLUMN public.TB_PP_M_BBS.bbs_smry_cn
IS '게시판요약내용';
COMMENT ON COLUMN public.TB_PP_M_BBS.cmnt_use_yn
IS '댓글사용여부';
COMMENT ON COLUMN public.TB_PP_M_BBS.inq_cnt_expsr_yn
IS '조회수노출여부';
COMMENT ON COLUMN public.TB_PP_M_BBS.dept_expsr_yn
IS '부서노출여부';
COMMENT ON COLUMN public.TB_PP_M_BBS.file_atch_yn
IS '파일첨부여부';
COMMENT ON COLUMN public.TB_PP_M_BBS.atch_psblty_file_cnt
IS '첨부가능파일수';
COMMENT ON COLUMN public.TB_PP_M_BBS.lang_se_cd
IS '언어구분코드';
COMMENT ON COLUMN public.TB_PP_M_BBS.use_yn
IS '사용여부';
COMMENT ON COLUMN public.TB_PP_M_BBS.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_BBS.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_BBS.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_BBS.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_MNGR_INFO
IS '대국민포털_관리자정보기본';

COMMENT ON COLUMN public.TB_PP_M_MNGR_INFO.emp_no
IS '직원번호';
COMMENT ON COLUMN public.TB_PP_M_MNGR_INFO.encpt_mngr_pswd
IS '암호화관리자비밀번호';
COMMENT ON COLUMN public.TB_PP_M_MNGR_INFO.tmpr_pswd_yn
IS '임시비밀번호여부';
COMMENT ON COLUMN public.TB_PP_M_MNGR_INFO.pswd_err_nmtm
IS '비밀번호오류횟수';
COMMENT ON COLUMN public.TB_PP_M_MNGR_INFO.encpt_bfr_pswd
IS '암호화이전비밀번호';
COMMENT ON COLUMN public.TB_PP_M_MNGR_INFO.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_MNGR_INFO.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_MNGR_INFO.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_MNGR_INFO.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_AUTHRT
IS '대국민포털_권한기본';

COMMENT ON COLUMN public.TB_PP_M_AUTHRT.authrt_cd
IS '권한코드';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT.up_authrt_cd
IS '상위권한코드';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT.task_se_cd
IS '업무구분코드';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT.authrt_nm
IS '권한명';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT.authrt_type_cd
IS '권한유형코드';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT.authrt_expln
IS '권한설명';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT.use_yn
IS '사용여부';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT.wrtr_dept_nm
IS '작성자부서명';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT.mdfr_dept_nm
IS '수정자부서명';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_AUTHRT_MENU
IS '대국민포털_권한메뉴기본';

COMMENT ON COLUMN public.TB_PP_M_AUTHRT_MENU.authrt_cd
IS '권한코드';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT_MENU.menu_sn
IS '메뉴일련번호';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT_MENU.authrt_menu_role_rmrk_cn
IS '권한메뉴역할비고내용';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT_MENU.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT_MENU.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT_MENU.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT_MENU.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_INST_TASK
IS '대국민포털_기관업무기본';

COMMENT ON COLUMN public.TB_PP_M_INST_TASK.brno
IS '사업자등록번호';
COMMENT ON COLUMN public.TB_PP_M_INST_TASK.task_se_cd
IS '업무구분코드';
COMMENT ON COLUMN public.TB_PP_M_INST_TASK.mbr_no
IS '회원번호';
COMMENT ON COLUMN public.TB_PP_M_INST_TASK.use_yn
IS '사용여부';
COMMENT ON COLUMN public.TB_PP_M_INST_TASK.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_INST_TASK.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_INST_TASK.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_INST_TASK.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_PIC_AUTHRT
IS '대국민포털_담당자권한기본';

COMMENT ON COLUMN public.TB_PP_M_PIC_AUTHRT.emp_no
IS '직원번호';
COMMENT ON COLUMN public.TB_PP_M_PIC_AUTHRT.authrt_cd
IS '권한코드';
COMMENT ON COLUMN public.TB_PP_M_PIC_AUTHRT.pic_authrt_rmrk_cn
IS '담당자권한비고내용';
COMMENT ON COLUMN public.TB_PP_M_PIC_AUTHRT.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_PIC_AUTHRT.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_PIC_AUTHRT.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_PIC_AUTHRT.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_CMNT
IS '대국민포털_댓글기본';

COMMENT ON COLUMN public.TB_PP_M_CMNT.cmnt_sn
IS '댓글일련번호';
COMMENT ON COLUMN public.TB_PP_M_CMNT.pst_sn
IS '게시물일련번호';
COMMENT ON COLUMN public.TB_PP_M_CMNT.cmnt_cn
IS '댓글내용';
COMMENT ON COLUMN public.TB_PP_M_CMNT.encpt_cmnt_pswd
IS '암호화댓글비밀번호';
COMMENT ON COLUMN public.TB_PP_M_CMNT.use_yn
IS '사용여부';
COMMENT ON COLUMN public.TB_PP_M_CMNT.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_CMNT.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_CMNT.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_CMNT.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_MENU
IS '대국민포털_메뉴기본';

COMMENT ON COLUMN public.TB_PP_M_MENU.menu_sn
IS '메뉴일련번호';
COMMENT ON COLUMN public.TB_PP_M_MENU.menu_nm
IS '메뉴명';
COMMENT ON COLUMN public.TB_PP_M_MENU.up_menu_sn
IS '상위메뉴일련번호';
COMMENT ON COLUMN public.TB_PP_M_MENU.task_se_cd
IS '업무구분코드';
COMMENT ON COLUMN public.TB_PP_M_MENU.menu_type_cd
IS '메뉴유형코드';
COMMENT ON COLUMN public.TB_PP_M_MENU.lang_se_cd
IS '언어구분코드';
COMMENT ON COLUMN public.TB_PP_M_MENU.menu_seq
IS '메뉴순서';
COMMENT ON COLUMN public.TB_PP_M_MENU.menu_expln
IS '메뉴설명';
COMMENT ON COLUMN public.TB_PP_M_MENU.pic_dept_nm
IS '담당자부서명';
COMMENT ON COLUMN public.TB_PP_M_MENU.pic_flnm
IS '담당자성명';
COMMENT ON COLUMN public.TB_PP_M_MENU.use_yn
IS '사용여부';
COMMENT ON COLUMN public.TB_PP_M_MENU.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_MENU.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_MENU.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_MENU.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_D_MENU
IS '대국민포털_메뉴상세';

COMMENT ON COLUMN public.TB_PP_D_MENU.menu_sn
IS '메뉴일련번호';
COMMENT ON COLUMN public.TB_PP_D_MENU.menu_url_addr
IS '메뉴URL주소';
COMMENT ON COLUMN public.TB_PP_D_MENU.menu_npag_nm
IS '메뉴새창명';
COMMENT ON COLUMN public.TB_PP_D_MENU.prvc_incl_yn
IS '개인정보포함여부';
COMMENT ON COLUMN public.TB_PP_D_MENU.dgstfn_exmn_yn
IS '만족도조사여부';
COMMENT ON COLUMN public.TB_PP_D_MENU.menu_expsr_yn
IS '메뉴노출여부';
COMMENT ON COLUMN public.TB_PP_D_MENU.dept_info_expsr_yn
IS '부서정보노출여부';
COMMENT ON COLUMN public.TB_PP_D_MENU.pic_info_expsr_yn
IS '담당자정보노출여부';
COMMENT ON COLUMN public.TB_PP_D_MENU.mobl_aplcn_yn
IS '모바일적용여부';
COMMENT ON COLUMN public.TB_PP_D_MENU.lgn_yn
IS '로그인여부';
COMMENT ON COLUMN public.TB_PP_D_MENU.encpt_pic_telno
IS '암호화담당자전화번호';
COMMENT ON COLUMN public.TB_PP_D_MENU.menu_kogl_cprgt_type_cd
IS '메뉴공공누리저작권유형코드';
COMMENT ON COLUMN public.TB_PP_D_MENU.menu_pic_id
IS '메뉴담당자아이디';
COMMENT ON COLUMN public.TB_PP_D_MENU.menu_tkcg_dept_no
IS '메뉴담당부서번호';
COMMENT ON COLUMN public.TB_PP_D_MENU.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_D_MENU.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_D_MENU.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_D_MENU.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_AUTHRT_MENU_ROLE
IS '대국민포털_권한메뉴롤기본';

COMMENT ON COLUMN public.TB_PP_M_AUTHRT_MENU_ROLE.authrt_cd
IS '권한코드';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT_MENU_ROLE.role_cd
IS '역할코드';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT_MENU_ROLE.menu_sn
IS '메뉴일련번호';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT_MENU_ROLE.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT_MENU_ROLE.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT_MENU_ROLE.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT_MENU_ROLE.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_DEPT_AUTHRT
IS '대국민포털_부서권한기본';

COMMENT ON COLUMN public.TB_PP_M_DEPT_AUTHRT.dept_no
IS '부서번호';
COMMENT ON COLUMN public.TB_PP_M_DEPT_AUTHRT.authrt_cd
IS '권한코드';
COMMENT ON COLUMN public.TB_PP_M_DEPT_AUTHRT.dept_authrt_rmrk_cn
IS '부서권한비고내용';
COMMENT ON COLUMN public.TB_PP_M_DEPT_AUTHRT.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_DEPT_AUTHRT.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_DEPT_AUTHRT.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_DEPT_AUTHRT.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_TRMS_STT
IS '대국민포털_약관법령기본';

COMMENT ON COLUMN public.TB_PP_M_TRMS_STT.trms_stt_sn
IS '약관법령일련번호';
COMMENT ON COLUMN public.TB_PP_M_TRMS_STT.trms_stt_cd
IS '약관법령코드';
COMMENT ON COLUMN public.TB_PP_M_TRMS_STT.trms_stt_aplcn_ymd
IS '약관법령적용일자';
COMMENT ON COLUMN public.TB_PP_M_TRMS_STT.trms_stt_end_ymd
IS '약관법령종료일자';
COMMENT ON COLUMN public.TB_PP_M_TRMS_STT.trms_stt_cn
IS '약관법령내용';
COMMENT ON COLUMN public.TB_PP_M_TRMS_STT.atch_file_group_id
IS '첨부파일그룹아이디';
COMMENT ON COLUMN public.TB_PP_M_TRMS_STT.wrtr_dept_nm
IS '작성자부서명';
COMMENT ON COLUMN public.TB_PP_M_TRMS_STT.mdfr_dept_nm
IS '수정자부서명';
COMMENT ON COLUMN public.TB_PP_M_TRMS_STT.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_TRMS_STT.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_TRMS_STT.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_TRMS_STT.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_TASK_CD
IS '대국민포털_업무코드기본';

COMMENT ON COLUMN public.TB_PP_M_TASK_CD.task_cd
IS '업무코드';
COMMENT ON COLUMN public.TB_PP_M_TASK_CD.task_cd_nm
IS '업무코드명';
COMMENT ON COLUMN public.TB_PP_M_TASK_CD.up_task_cd
IS '상위업무코드';
COMMENT ON COLUMN public.TB_PP_M_TASK_CD.task_cd_vl
IS '업무코드값';
COMMENT ON COLUMN public.TB_PP_M_TASK_CD.task_cd_expln
IS '업무코드설명';
COMMENT ON COLUMN public.TB_PP_M_TASK_CD.use_yn
IS '사용여부';
COMMENT ON COLUMN public.TB_PP_M_TASK_CD.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_TASK_CD.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_TASK_CD.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_TASK_CD.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_ROLE
IS '대국민포털_역할기본';

COMMENT ON COLUMN public.TB_PP_M_ROLE.role_cd
IS '역할코드';
COMMENT ON COLUMN public.TB_PP_M_ROLE.role_nm
IS '역할명';
COMMENT ON COLUMN public.TB_PP_M_ROLE.role_type_cd
IS '역할유형코드';
COMMENT ON COLUMN public.TB_PP_M_ROLE.role_expln_cn
IS '역할설명내용';
COMMENT ON COLUMN public.TB_PP_M_ROLE.use_yn
IS '사용여부';
COMMENT ON COLUMN public.TB_PP_M_ROLE.wrtr_dept_nm
IS '작성자부서명';
COMMENT ON COLUMN public.TB_PP_M_ROLE.mdfr_dept_nm
IS '수정자부서명';
COMMENT ON COLUMN public.TB_PP_M_ROLE.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_ROLE.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_ROLE.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_ROLE.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_EXPRT_AUTHRT
IS '대국민포털_전문가권한기본';

COMMENT ON COLUMN public.TB_PP_M_EXPRT_AUTHRT.mbr_no
IS '회원번호';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_AUTHRT.exprt_task_sn
IS '전문가업무일련번호';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_AUTHRT.authrt_cd
IS '권한코드';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_AUTHRT.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_AUTHRT.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_AUTHRT.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_AUTHRT.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_EXPRT_TASK
IS '대국민포털_전문가업무기본';

COMMENT ON COLUMN public.TB_PP_M_EXPRT_TASK.exprt_task_sn
IS '전문가업무일련번호';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_TASK.mbr_no
IS '회원번호';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_TASK.brno
IS '사업자등록번호';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_TASK.task_se_cd
IS '업무구분코드';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_TASK.exprt_aprv_stts_yn
IS '전문가승인상태여부';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_TASK.aprv_prcs_dt
IS '승인처리일시';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_TASK.rjct_rsn
IS '반려사유';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_TASK.wrtr_dept_nm
IS '작성자부서명';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_TASK.mdfr_dept_nm
IS '수정자부서명';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_TASK.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_TASK.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_TASK.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_TASK.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_CA_M_ATCH
IS 'EXT_공통_첨부파일기본';

COMMENT ON COLUMN public.TB_CA_M_ATCH.atch_file_sn
IS '첨부파일일련번호';
COMMENT ON COLUMN public.TB_CA_M_ATCH.menu_sn
IS '메뉴일련번호';
COMMENT ON COLUMN public.TB_CA_M_ATCH.menu_type
IS '메뉴유형';
COMMENT ON COLUMN public.TB_CA_M_ATCH.atch_file_uld_hr
IS '첨부파일업로드시간';
COMMENT ON COLUMN public.TB_CA_M_ATCH.atch_file_use_yn
IS '첨부파일사용여부';
COMMENT ON COLUMN public.TB_CA_M_ATCH.atch_file_path
IS '첨부파일경로';
COMMENT ON COLUMN public.TB_CA_M_ATCH.atch_file_nm
IS '첨부파일명';
COMMENT ON COLUMN public.TB_CA_M_ATCH.atch_file_extn_nm
IS '첨부파일확장자명';
COMMENT ON COLUMN public.TB_CA_M_ATCH.atch_file_cn
IS '첨부파일내용';
COMMENT ON COLUMN public.TB_CA_M_ATCH.atch_file_sz
IS '첨부파일크기';
COMMENT ON COLUMN public.TB_CA_M_ATCH.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_CA_M_ATCH.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_CA_M_ATCH.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_CA_M_ATCH.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_FORM
IS '대국민포털_양식기본';

COMMENT ON COLUMN public.TB_PP_M_FORM.form_sn
IS '양식일련번호';
COMMENT ON COLUMN public.TB_PP_M_FORM.task_cd
IS '업무코드';
COMMENT ON COLUMN public.TB_PP_M_FORM.form_nm
IS '양식명';
COMMENT ON COLUMN public.TB_PP_M_FORM.form_path_nm
IS '양식경로명';
COMMENT ON COLUMN public.TB_PP_M_FORM.use_yn
IS '사용여부';
COMMENT ON COLUMN public.TB_PP_M_FORM.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_FORM.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_FORM.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_FORM.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_POPUP
IS '대국민포털_팝업기본';

COMMENT ON COLUMN public.TB_PP_M_POPUP.popup_sn
IS '팝업일련번호';
COMMENT ON COLUMN public.TB_PP_M_POPUP.popup_ttl
IS '팝업제목';
COMMENT ON COLUMN public.TB_PP_M_POPUP.popup_pstg_bgng_dt
IS '팝업게시시작일시';
COMMENT ON COLUMN public.TB_PP_M_POPUP.popup_pstg_end_dt
IS '팝업게시종료일시';
COMMENT ON COLUMN public.TB_PP_M_POPUP.popup_lnkg_addr
IS '팝업연결주소';
COMMENT ON COLUMN public.TB_PP_M_POPUP.popup_seq
IS '팝업순서';
COMMENT ON COLUMN public.TB_PP_M_POPUP.popup_pstg_yn
IS '팝업게시여부';
COMMENT ON COLUMN public.TB_PP_M_POPUP.popup_npag_yn
IS '팝업새창여부';
COMMENT ON COLUMN public.TB_PP_M_POPUP.popup_expln
IS '팝업설명';
COMMENT ON COLUMN public.TB_PP_M_POPUP.atch_file_group_id
IS '첨부파일그룹아이디';
COMMENT ON COLUMN public.TB_PP_M_POPUP.wrtr_dept_nm
IS '작성자부서명';
COMMENT ON COLUMN public.TB_PP_M_POPUP.mdfr_dept_nm
IS '수정자부서명';
COMMENT ON COLUMN public.TB_PP_M_POPUP.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_POPUP.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_POPUP.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_POPUP.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_MBR_INFO
IS '대국민포털_회원정보기본';

COMMENT ON COLUMN public.TB_PP_M_MBR_INFO.mbr_no
IS '회원번호';
COMMENT ON COLUMN public.TB_PP_M_MBR_INFO.mbr_id
IS '회원아이디';
COMMENT ON COLUMN public.TB_PP_M_MBR_INFO.encpt_mbr_flnm
IS '암호화회원성명';
COMMENT ON COLUMN public.TB_PP_M_MBR_INFO.encpt_mbr_eml_nm
IS '암호화회원이메일명';
COMMENT ON COLUMN public.TB_PP_M_MBR_INFO.encpt_mbr_pswd
IS '암호화회원비밀번호';
COMMENT ON COLUMN public.TB_PP_M_MBR_INFO.encpt_mbr_telno
IS '암호화회원전화번호';
COMMENT ON COLUMN public.TB_PP_M_MBR_INFO.mbr_type_cd
IS '회원유형코드';
COMMENT ON COLUMN public.TB_PP_M_MBR_INFO.mbr_join_stts_cd
IS '회원가입상태코드';
COMMENT ON COLUMN public.TB_PP_M_MBR_INFO.mbr_join_dt
IS '회원가입일시';
COMMENT ON COLUMN public.TB_PP_M_MBR_INFO.mbr_whdwl_rsn
IS '회원탈퇴사유';
COMMENT ON COLUMN public.TB_PP_M_MBR_INFO.mbr_whdwl_dt
IS '회원탈퇴일시';
COMMENT ON COLUMN public.TB_PP_M_MBR_INFO.cnstn_mbcmt_yn
IS '자문위원여부';
COMMENT ON COLUMN public.TB_PP_M_MBR_INFO.bfr_enpswd
IS '이전암호화비밀번호  >>> 변경 누락이 된 것 같네요. 암호화이전비밀번호(encpt_bfr_pswd)로 DA에게 수정 요청하겠습니다.';
COMMENT ON COLUMN public.TB_PP_M_MBR_INFO.pswd_chg_dt
IS '비밀번호변경일시';
COMMENT ON COLUMN public.TB_PP_M_MBR_INFO.pswd_err_nmtm
IS '비밀번호오류횟수';
COMMENT ON COLUMN public.TB_PP_M_MBR_INFO.link_info_idntf_id
IS '연계정보식별아이디';
COMMENT ON COLUMN public.TB_PP_M_MBR_INFO.cert_token_vl
IS '인증토큰값';
COMMENT ON COLUMN public.TB_PP_M_MBR_INFO.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_MBR_INFO.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_MBR_INFO.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_MBR_INFO.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_BBS_AUTHRT
IS '대국민포털_게시판권한기본';

COMMENT ON COLUMN public.TB_PP_M_BBS_AUTHRT.bbs_id
IS '게시판아이디';
COMMENT ON COLUMN public.TB_PP_M_BBS_AUTHRT.authrt_cd
IS '권한코드';
COMMENT ON COLUMN public.TB_PP_M_BBS_AUTHRT.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_BBS_AUTHRT.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_BBS_AUTHRT.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_BBS_AUTHRT.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_STTY_AGT_INFO
IS '대국민포털_법정대리인정보기본';

COMMENT ON COLUMN public.TB_PP_M_STTY_AGT_INFO.mbr_no
IS '회원번호';
COMMENT ON COLUMN public.TB_PP_M_STTY_AGT_INFO.stty_agt_nm
IS '법정대리인명';
COMMENT ON COLUMN public.TB_PP_M_STTY_AGT_INFO.encpt_stty_agt_telno
IS '암호화법정대리인전화번호';
COMMENT ON COLUMN public.TB_PP_M_STTY_AGT_INFO.stty_agt_rel_nm
IS '법정대리인관계명';
COMMENT ON COLUMN public.TB_PP_M_STTY_AGT_INFO.link_info_idntf_id
IS '연계정보식별아이디';
COMMENT ON COLUMN public.TB_PP_M_STTY_AGT_INFO.cert_token_vl
IS '인증토큰값';
COMMENT ON COLUMN public.TB_PP_M_STTY_AGT_INFO.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_STTY_AGT_INFO.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_STTY_AGT_INFO.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_STTY_AGT_INFO.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_EXPRT_INFO
IS '대국민포털_전문가정보기본';

COMMENT ON COLUMN public.TB_PP_M_EXPRT_INFO.mbr_no
IS '회원번호';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_INFO.brno
IS '사업자등록번호';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_INFO.task_se_cd
IS '업무구분코드';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_INFO.encpt_exprt_inst_eml_nm
IS '암호화전문가기관이메일명';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_INFO.exprt_hdof_yn
IS '전문가재직여부';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_INFO.exprt_aprv_stts_yn
IS '전문가승인상태여부';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_INFO.aprv_prcs_dt
IS '승인처리일시';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_INFO.rjct_rsn
IS '반려사유';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_INFO.atch_file_group_id
IS '첨부파일그룹아이디';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_INFO.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_INFO.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_INFO.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_EXPRT_INFO.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_INST
IS '대국민포털_기관정보기본';

COMMENT ON COLUMN public.TB_PP_M_INST.brno
IS '사업자등록번호';
COMMENT ON COLUMN public.TB_PP_M_INST.inst_nm
IS '기관명';
COMMENT ON COLUMN public.TB_PP_M_INST.del_yn
IS '삭제여부';
COMMENT ON COLUMN public.TB_PP_M_INST.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_INST.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_INST.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_INST.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_DGSTFN_EXMN
IS '대국민포털_만족도조사기본';

COMMENT ON COLUMN public.TB_PP_M_DGSTFN_EXMN.dgstfn_exmn_sn
IS '만족도조사일련번호';
COMMENT ON COLUMN public.TB_PP_M_DGSTFN_EXMN.menu_sn
IS '메뉴일련번호';
COMMENT ON COLUMN public.TB_PP_M_DGSTFN_EXMN.dgstfn_scr
IS '만족도점수';
COMMENT ON COLUMN public.TB_PP_M_DGSTFN_EXMN.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_DGSTFN_EXMN.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_DGSTFN_EXMN.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_DGSTFN_EXMN.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_OPNN
IS '대국민포털_의견제안기본';

COMMENT ON COLUMN public.TB_PP_M_OPNN.opnn_sn
IS '의견일련번호';
COMMENT ON COLUMN public.TB_PP_M_OPNN.encpt_wrtr_flnm
IS '암호화작성자성명';
COMMENT ON COLUMN public.TB_PP_M_OPNN.encpt_wrtr_telno
IS '암호화작성자전화번호';
COMMENT ON COLUMN public.TB_PP_M_OPNN.encpt_mbr_eml_nm
IS '암호화회원이메일명';
COMMENT ON COLUMN public.TB_PP_M_OPNN.wrt_se_cd
IS '작성구분코드';
COMMENT ON COLUMN public.TB_PP_M_OPNN.pbpt_cn
IS '문제점내용';
COMMENT ON COLUMN public.TB_PP_M_OPNN.dmnd_mttr_cn
IS '요청사항내용';
COMMENT ON COLUMN public.TB_PP_M_OPNN.dmnd_mttr_dtl_cn
IS '요청사항상세내용';
COMMENT ON COLUMN public.TB_PP_M_OPNN.ref_mttr_cn
IS '참고사항내용';
COMMENT ON COLUMN public.TB_PP_M_OPNN.insd_ref_mttr_cn
IS '내부참고사항내용';
COMMENT ON COLUMN public.TB_PP_M_OPNN.atch_file_group_id
IS '첨부파일그룹아이디';
COMMENT ON COLUMN public.TB_PP_M_OPNN.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_OPNN.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_OPNN.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_OPNN.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_PRVC_ACS_HSTRY
IS '대국민포털_개인정보접근이력기본';

COMMENT ON COLUMN public.TB_PP_M_PRVC_ACS_HSTRY.prvc_acs_sn
IS '개인정보접근일련번호';
COMMENT ON COLUMN public.TB_PP_M_PRVC_ACS_HSTRY.inq_crtr_dt
IS '조회기준일시';
COMMENT ON COLUMN public.TB_PP_M_PRVC_ACS_HSTRY.srvc_cd
IS '서비스코드';
COMMENT ON COLUMN public.TB_PP_M_PRVC_ACS_HSTRY.menu_sn
IS '메뉴일련번호';
COMMENT ON COLUMN public.TB_PP_M_PRVC_ACS_HSTRY.메소드명
IS '메소드명';
COMMENT ON COLUMN public.TB_PP_M_PRVC_ACS_HSTRY.inq_info_cn
IS '조회정보내용';
COMMENT ON COLUMN public.TB_PP_M_PRVC_ACS_HSTRY.rqstr_id
IS '요청자아이디';
COMMENT ON COLUMN public.TB_PP_M_PRVC_ACS_HSTRY.rqstr_ip_addr
IS '요청자IP주소';
COMMENT ON COLUMN public.TB_PP_M_PRVC_ACS_HSTRY.inq_cnd_cn
IS '조회조건내용';
COMMENT ON COLUMN public.TB_PP_M_PRVC_ACS_HSTRY.inq_telgm_cn
IS '조회전문내용';
COMMENT ON COLUMN public.TB_PP_M_PRVC_ACS_HSTRY.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_PRVC_ACS_HSTRY.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_PRVC_ACS_HSTRY.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_PRVC_ACS_HSTRY.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_AUTHRT_CHG_HSTRY
IS '대국민포털_권한변경이력기본';

COMMENT ON COLUMN public.TB_PP_M_AUTHRT_CHG_HSTRY.authrt_chg_sn
IS '권한변경일련번호';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT_CHG_HSTRY.authrt_cd
IS '권한코드';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT_CHG_HSTRY.menu_sn
IS '메뉴일련번호';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT_CHG_HSTRY.aplcn_trgt_type_cd
IS '적용대상유형코드';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT_CHG_HSTRY.chg_role_list_cn
IS '변경역할목록내용';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT_CHG_HSTRY.aplcn_trgt_nm
IS '적용대상명';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT_CHG_HSTRY.chg_type_cd
IS '변경유형코드';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT_CHG_HSTRY.authrt_chg_rmrk_cn
IS '권한변경비고내용';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT_CHG_HSTRY.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT_CHG_HSTRY.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT_CHG_HSTRY.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_AUTHRT_CHG_HSTRY.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_DMN
IS '대국민포털_도메인기본';

COMMENT ON COLUMN public.TB_PP_M_DMN.com_std_dmn_nm
IS '공통표준도메인명';
COMMENT ON COLUMN public.TB_PP_M_DMN.sys_se_nm
IS '시스템구분명';
COMMENT ON COLUMN public.TB_PP_M_DMN.artcl_sou_nm
IS '항목원천명';
COMMENT ON COLUMN public.TB_PP_M_DMN.com_std_dmn_clsf_nm
IS '공통표준도메인분류명';
COMMENT ON COLUMN public.TB_PP_M_DMN.com_std_dmn_group_nm
IS '공통표준도메인그룹명';
COMMENT ON COLUMN public.TB_PP_M_DMN.com_std_dmn_expln
IS '공통표준도메인설명';
COMMENT ON COLUMN public.TB_PP_M_DMN.dmn_type_nm
IS '도메인유형명';
COMMENT ON COLUMN public.TB_PP_M_DMN.dmn_len
IS '도메인길이';
COMMENT ON COLUMN public.TB_PP_M_DMN.dmn_dcpt_len
IS '도메인소수점길이';
COMMENT ON COLUMN public.TB_PP_M_DMN.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_DMN.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_DMN.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_DMN.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_WORD
IS '대국민포털_단어기본';

COMMENT ON COLUMN public.TB_PP_M_WORD.com_std_word_nm
IS '공통표준단어명';
COMMENT ON COLUMN public.TB_PP_M_WORD.sys_se_nm
IS '시스템구분명';
COMMENT ON COLUMN public.TB_PP_M_WORD.artcl_sou_nm
IS '항목원천명';
COMMENT ON COLUMN public.TB_PP_M_WORD.com_std_word_eng_abbr_nm
IS '공통표준단어영문약어명';
COMMENT ON COLUMN public.TB_PP_M_WORD.com_std_word_eng_nm
IS '공통표준단어영문명';
COMMENT ON COLUMN public.TB_PP_M_WORD.com_std_word_expln
IS '공통표준단어설명';
COMMENT ON COLUMN public.TB_PP_M_WORD.frm_word_yn
IS '형식단어여부';
COMMENT ON COLUMN public.TB_PP_M_WORD.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_WORD.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_WORD.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_WORD.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_TRM
IS '대국민포털_용어기본';

COMMENT ON COLUMN public.TB_PP_M_TRM.std_trm_nm
IS '표준용어명';
COMMENT ON COLUMN public.TB_PP_M_TRM.sys_se_nm
IS '시스템구분명';
COMMENT ON COLUMN public.TB_PP_M_TRM.artcl_sou_nm
IS '항목원천명';
COMMENT ON COLUMN public.TB_PP_M_TRM.std_trm_eng_abbr_nm
IS '표준용어영문약어명';
COMMENT ON COLUMN public.TB_PP_M_TRM.atrb_type_nm
IS '속성유형명';
COMMENT ON COLUMN public.TB_PP_M_TRM.com_std_dmn_nm
IS '공통표준도메인명';
COMMENT ON COLUMN public.TB_PP_M_TRM.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_TRM.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_TRM.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_TRM.mdfcn_dt
IS '수정일시';
COMMENT ON TABLE public.TB_PP_M_DEPT_INFO
IS '대국민포털_KIDS부서정보기본';

COMMENT ON COLUMN public.TB_PP_M_DEPT_INFO.dept_no
IS '부서번호';
COMMENT ON COLUMN public.TB_PP_M_DEPT_INFO.dept_nm
IS '부서명';
COMMENT ON COLUMN public.TB_PP_M_DEPT_INFO.up_dept_no
IS '상위부서번호';
COMMENT ON COLUMN public.TB_PP_M_DEPT_INFO.rgtr_id
IS '등록자아이디';
COMMENT ON COLUMN public.TB_PP_M_DEPT_INFO.reg_dt
IS '등록일시';
COMMENT ON COLUMN public.TB_PP_M_DEPT_INFO.mdfr_id
IS '수정자아이디';
COMMENT ON COLUMN public.TB_PP_M_DEPT_INFO.mdfcn_dt
IS '수정일시';

-- 대국민포털_DUR노인주의기본
CREATE TABLE "TB_PP_M_DUR_SNCTZ"
(
	"snctz_cutn_sn"  VARCHAR(50)   NOT NULL, -- 노인주의일련번호
	"prdct_cd"       CHAR(9)       NOT NULL, -- 제품코드
	"dur_igrd_nm"    VARCHAR(100)  NULL,     -- DUR성분명
	"dur_igrd_cd"    CHAR(9)       NOT NULL, -- DUR성분코드
	"dur_prdct_nm"   VARCHAR(256)  NULL,     -- DUR제품명
	"dur_bzenty_nm"  VARCHAR(100)  NULL,     -- DUR업체명
	"mfds_prdct_nm"  VARCHAR(256)  NULL,     -- 식약처제품명
	"mfds_igrd_cd"   CHAR(7)       NOT NULL, -- 식약처성분코드
	"mfds_igrd_nm"   VARCHAR(100)  NULL,     -- 식약처성분명
	"pbanc_ymd"      CHAR(8)       NULL,     -- 공고일자
	"pbanc_no"       CHAR(8)       NULL,     -- 공고번호
	"mdcn_dtl_info"  VARCHAR(4000) NULL,     -- 약품상세정보
	"aplcn_ym"       CHAR(6)       NULL,     -- 적용년월
	"rmrk"           VARCHAR(4000) NULL,     -- 비고
	"type_cd"        CHAR(1)       NULL,     -- 유형코드
	"rgtr_id"        VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"         TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"   VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"        VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"       TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id" VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_DUR노인주의기본
COMMENT ON TABLE "TB_PP_M_DUR_SNCTZ" IS '대국민포털_DUR노인주의기본';

-- 노인주의일련번호
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ"."snctz_cutn_sn" IS '노인주의일련번호';

-- 제품코드
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ"."prdct_cd" IS '제품코드';

-- DUR성분명
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ"."dur_igrd_nm" IS 'DUR성분명';

-- DUR성분코드
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ"."dur_igrd_cd" IS 'DUR성분코드';

-- DUR제품명
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ"."dur_prdct_nm" IS 'DUR제품명';

-- DUR업체명
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ"."dur_bzenty_nm" IS 'DUR업체명';

-- 식약처제품명
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ"."mfds_prdct_nm" IS '식약처제품명';

-- 식약처성분코드
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ"."mfds_igrd_cd" IS '식약처성분코드';

-- 식약처성분명
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ"."mfds_igrd_nm" IS '식약처성분명';

-- 공고일자
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ"."pbanc_ymd" IS '공고일자';

-- 공고번호
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ"."pbanc_no" IS '공고번호';

-- 약품상세정보
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ"."mdcn_dtl_info" IS '약품상세정보';

-- 적용년월
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ"."aplcn_ym" IS '적용년월';

-- 비고
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ"."rmrk" IS '비고';

-- 유형코드
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ"."type_cd" IS '유형코드';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_DUR노인주의기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_DUR_SNCTZ"
	ON "TB_PP_M_DUR_SNCTZ"
	( -- 대국민포털_DUR노인주의기본
		"snctz_cutn_sn" ASC NULLS LAST -- 노인주의일련번호
	);

-- 대국민포털_DUR노인주의기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_DUR_SNCTZ" IS '대국민포털_DUR노인주의기본 기본키';

-- 대국민포털_DUR노인주의기본
ALTER TABLE "TB_PP_M_DUR_SNCTZ"
	ADD CONSTRAINT "PK_TB_PP_M_DUR_SNCTZ"
		-- 대국민포털_DUR노인주의기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_DUR_SNCTZ"
	NOT DEFERRABLE;

-- 대국민포털_DUR노인주의기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_DUR_SNCTZ" ON "TB_PP_M_DUR_SNCTZ" IS '대국민포털_DUR노인주의기본 기본키';

-- 대국민포털_DUR병용금기기본
CREATE TABLE "TB_PP_M_CONC_BANN"
(
	"conc_bann_sn"     VARCHAR(50)   NOT NULL, -- 병용금기일련번호
	"prdct_cd_1"       CHAR(9)       NOT NULL, -- 제품코드1
	"prdct_cd_2"       CHAR(9)       NOT NULL, -- 제품코드2
	"igrd_nm_1"        VARCHAR(100)  NULL,     -- 성분명1
	"igrd_cd_1"        CHAR(9)       NOT NULL, -- 성분코드1
	"prdct_nm_1"       VARCHAR(256)  NULL,     -- 제품명1
	"bzenty_nm_1"      VARCHAR(100)  NULL,     -- 업체명1
	"se_1"             CHAR(1)       NOT NULL, -- 구분1
	"mfds_prdct_nm_1"  VARCHAR(256)  NULL,     -- 식약처제품명1
	"mfds_igrd_cd_1"   CHAR(7)       NULL,     -- 식약처성분코드1
	"mfds_igrd_nm_1"   VARCHAR(100)  NULL,     -- 식약처성분명1
	"igrd_nm_2"        VARCHAR(100)  NULL,     -- 성분명2
	"igrd_cd_2"        CHAR(9)       NOT NULL, -- 성분코드2
	"prdct_nm_2"       VARCHAR(256)  NULL,     -- 제품명2
	"bzenty_nm_2"      VARCHAR(100)  NULL,     -- 업체명2
	"se_2"             CHAR(1)       NOT NULL, -- 구분2
	"mfds_prdct_nm_2"  VARCHAR(256)  NULL,     -- 식약처제품명2
	"mfds_igrd_cd_2"   CHAR(7)       NULL,     -- 식약처성분코드2
	"mfds_igrd_nm_2"   VARCHAR(100)  NULL,     -- 식약처성분명2
	"ancmnt_no"        CHAR(8)       NULL,     -- 고시번호
	"ancmnt_aplcn_day" CHAR(8)       NULL,     -- 고시적용일
	"cutn_mttr"        VARCHAR(4000) NULL,     -- 주의사항
	"rmrk"             VARCHAR(4000) NULL,     -- 비고
	"type_cd"          CHAR(1)       NULL,     -- 유형코드
	"rgtr_id"          VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"           TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"     VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"          VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"         TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id"   VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_DUR병용금기기본
COMMENT ON TABLE "TB_PP_M_CONC_BANN" IS '대국민포털_DUR병용금기기본';

-- 병용금기일련번호
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."conc_bann_sn" IS '병용금기일련번호';

-- 제품코드1
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."prdct_cd_1" IS '제품코드1';

-- 제품코드2
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."prdct_cd_2" IS '제품코드2';

-- 성분명1
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."igrd_nm_1" IS '성분명1';

-- 성분코드1
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."igrd_cd_1" IS '성분코드1';

-- 제품명1
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."prdct_nm_1" IS '제품명1';

-- 업체명1
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."bzenty_nm_1" IS '업체명1';

-- 구분1
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."se_1" IS '구분1';

-- 식약처제품명1
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."mfds_prdct_nm_1" IS '식약처제품명1';

-- 식약처성분코드1
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."mfds_igrd_cd_1" IS '식약처성분코드1';

-- 식약처성분명1
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."mfds_igrd_nm_1" IS '식약처성분명1';

-- 성분명2
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."igrd_nm_2" IS '성분명2';

-- 성분코드2
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."igrd_cd_2" IS '성분코드2';

-- 제품명2
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."prdct_nm_2" IS '제품명2';

-- 업체명2
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."bzenty_nm_2" IS '업체명2';

-- 구분2
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."se_2" IS '구분2';

-- 식약처제품명2
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."mfds_prdct_nm_2" IS '식약처제품명2';

-- 식약처성분코드2
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."mfds_igrd_cd_2" IS '식약처성분코드2';

-- 식약처성분명2
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."mfds_igrd_nm_2" IS '식약처성분명2';

-- 고시번호
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."ancmnt_no" IS '고시번호';

-- 고시적용일
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."ancmnt_aplcn_day" IS '고시적용일';

-- 주의사항
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."cutn_mttr" IS '주의사항';

-- 비고
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."rmrk" IS '비고';

-- 유형코드
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."type_cd" IS '유형코드';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_CONC_BANN"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_DUR병용금기기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_CONC_BANN"
	ON "TB_PP_M_CONC_BANN"
	( -- 대국민포털_DUR병용금기기본
		"conc_bann_sn" ASC NULLS LAST -- 병용금기일련번호
	);

-- 대국민포털_DUR병용금기기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_CONC_BANN" IS '대국민포털_DUR병용금기기본 기본키';

-- 대국민포털_DUR병용금기기본
ALTER TABLE "TB_PP_M_CONC_BANN"
	ADD CONSTRAINT "PK_TB_PP_M_CONC_BANN"
		-- 대국민포털_DUR병용금기기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_CONC_BANN"
	NOT DEFERRABLE;

-- 대국민포털_DUR병용금기기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_CONC_BANN" ON "TB_PP_M_CONC_BANN" IS '대국민포털_DUR병용금기기본 기본키';

-- 대국민포털_DUR수유부주의기본
CREATE TABLE "TB_PP_M_DUR_NURSW"
(
	"nursw_cutn_sn"  VARCHAR(50)   NOT NULL, -- 수유부주의일련번호
	"prdct_cd"       CHAR(9)       NOT NULL, -- 제품코드
	"main_igrd_cd"   CHAR(9)       NOT NULL, -- 주요성분코드
	"igrd_nm"        VARCHAR(100)  NULL,     -- 성분명
	"prdct_nm"       VARCHAR(256)  NULL,     -- 제품명
	"bzenty_nm"      VARCHAR(100)  NULL,     -- 업체명
	"mfds_prdct_nm"  VARCHAR(256)  NULL,     -- 식약처제품명
	"mfds_igrd_cd"   CHAR(7)       NULL,     -- 식약처성분코드
	"mfds_igrd_nm"   VARCHAR(100)  NULL,     -- 식약처성분명
	"pbanc_ymd"      CHAR(8)       NULL,     -- 공고일자
	"pbanc_no"       CHAR(8)       NULL,     -- 공고번호
	"aplcn_ym"       CHAR(6)       NULL,     -- 적용년월
	"rmrk"           VARCHAR(4000) NULL,     -- 비고
	"type_cd"        CHAR(1)       NULL,     -- 유형코드
	"rgtr_id"        VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"         TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"   VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"        VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"       TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id" VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_DUR수유부주의기본
COMMENT ON TABLE "TB_PP_M_DUR_NURSW" IS '대국민포털_DUR수유부주의기본';

-- 수유부주의일련번호
COMMENT ON COLUMN "TB_PP_M_DUR_NURSW"."nursw_cutn_sn" IS '수유부주의일련번호';

-- 제품코드
COMMENT ON COLUMN "TB_PP_M_DUR_NURSW"."prdct_cd" IS '제품코드';

-- 주요성분코드
COMMENT ON COLUMN "TB_PP_M_DUR_NURSW"."main_igrd_cd" IS '주요성분코드';

-- 성분명
COMMENT ON COLUMN "TB_PP_M_DUR_NURSW"."igrd_nm" IS '성분명';

-- 제품명
COMMENT ON COLUMN "TB_PP_M_DUR_NURSW"."prdct_nm" IS '제품명';

-- 업체명
COMMENT ON COLUMN "TB_PP_M_DUR_NURSW"."bzenty_nm" IS '업체명';

-- 식약처제품명
COMMENT ON COLUMN "TB_PP_M_DUR_NURSW"."mfds_prdct_nm" IS '식약처제품명';

-- 식약처성분코드
COMMENT ON COLUMN "TB_PP_M_DUR_NURSW"."mfds_igrd_cd" IS '식약처성분코드';

-- 식약처성분명
COMMENT ON COLUMN "TB_PP_M_DUR_NURSW"."mfds_igrd_nm" IS '식약처성분명';

-- 공고일자
COMMENT ON COLUMN "TB_PP_M_DUR_NURSW"."pbanc_ymd" IS '공고일자';

-- 공고번호
COMMENT ON COLUMN "TB_PP_M_DUR_NURSW"."pbanc_no" IS '공고번호';

-- 적용년월
COMMENT ON COLUMN "TB_PP_M_DUR_NURSW"."aplcn_ym" IS '적용년월';

-- 비고
COMMENT ON COLUMN "TB_PP_M_DUR_NURSW"."rmrk" IS '비고';

-- 유형코드
COMMENT ON COLUMN "TB_PP_M_DUR_NURSW"."type_cd" IS '유형코드';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_DUR_NURSW"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_DUR_NURSW"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DUR_NURSW"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_DUR_NURSW"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_DUR_NURSW"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DUR_NURSW"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_DUR수유부주의기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_DUR_NURSW"
	ON "TB_PP_M_DUR_NURSW"
	( -- 대국민포털_DUR수유부주의기본
		"nursw_cutn_sn" ASC NULLS LAST -- 수유부주의일련번호
	);

-- 대국민포털_DUR수유부주의기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_DUR_NURSW" IS '대국민포털_DUR수유부주의기본 기본키';

-- 대국민포털_DUR수유부주의기본
ALTER TABLE "TB_PP_M_DUR_NURSW"
	ADD CONSTRAINT "PK_TB_PP_M_DUR_NURSW"
		-- 대국민포털_DUR수유부주의기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_DUR_NURSW"
	NOT DEFERRABLE;

-- 대국민포털_DUR수유부주의기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_DUR_NURSW" ON "TB_PP_M_DUR_NURSW" IS '대국민포털_DUR수유부주의기본 기본키';

-- 대국민포털_DUR용량주의기본
CREATE TABLE "TB_PP_M_DUR_CPCT"
(
	"cpct_cutn_sn"              VARCHAR(50)   NOT NULL, -- 용량주의일련번호
	"mdcn_cd"                   CHAR(9)       NOT NULL, -- 약품코드
	"mdcn_nm"                   VARCHAR(256)  NULL,     -- 약품명
	"gnrl_nm_cd"                CHAR(9)       NOT NULL, -- 일반명코드
	"gnrl_nm"                   VARCHAR(100)  NULL,     -- 일반명
	"daily_max_admin_cpct"      VARCHAR(4000) NULL,     -- 1일최대투여용량
	"daily_max_admin_crtr_cpct" NUMERIC(10,3) NULL,     -- 1일최대투여기준용량
	"chck_crtr_igrd_con"        NUMERIC(10,3) NULL,     -- 점검기준성분함량
	"mfds_prdct_nm"             VARCHAR(256)  NULL,     -- 식약처제품명
	"mfds_igrd_cd"              CHAR(7)       NULL,     -- 식약처성분코드
	"mfds_igrd_nm"              VARCHAR(100)  NULL,     -- 식약처성분명
	"pbanc_ymd"                 CHAR(8)       NULL,     -- 공고일자
	"pbanc_no"                  CHAR(8)       NULL,     -- 공고번호
	"dtl_cn"                    VARCHAR(4000) NULL,     -- 상세내용
	"aplcn_ym"                  CHAR(6)       NULL,     -- 적용년월
	"type_cd"                   CHAR(1)       NULL,     -- 유형코드
	"rgtr_id"                   VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"                    TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"              VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"                   VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"                  TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id"            VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_DUR용량주의기본
COMMENT ON TABLE "TB_PP_M_DUR_CPCT" IS '대국민포털_DUR용량주의기본';

-- 용량주의일련번호
COMMENT ON COLUMN "TB_PP_M_DUR_CPCT"."cpct_cutn_sn" IS '용량주의일련번호';

-- 약품코드
COMMENT ON COLUMN "TB_PP_M_DUR_CPCT"."mdcn_cd" IS '약품코드';

-- 약품명
COMMENT ON COLUMN "TB_PP_M_DUR_CPCT"."mdcn_nm" IS '약품명';

-- 일반명코드
COMMENT ON COLUMN "TB_PP_M_DUR_CPCT"."gnrl_nm_cd" IS '일반명코드';

-- 일반명
COMMENT ON COLUMN "TB_PP_M_DUR_CPCT"."gnrl_nm" IS '일반명';

-- 1일최대투여용량
COMMENT ON COLUMN "TB_PP_M_DUR_CPCT"."daily_max_admin_cpct" IS '1일최대투여용량';

-- 1일최대투여기준용량
COMMENT ON COLUMN "TB_PP_M_DUR_CPCT"."daily_max_admin_crtr_cpct" IS '1일최대투여기준용량';

-- 점검기준성분함량
COMMENT ON COLUMN "TB_PP_M_DUR_CPCT"."chck_crtr_igrd_con" IS '점검기준성분함량';

-- 식약처제품명
COMMENT ON COLUMN "TB_PP_M_DUR_CPCT"."mfds_prdct_nm" IS '식약처제품명';

-- 식약처성분코드
COMMENT ON COLUMN "TB_PP_M_DUR_CPCT"."mfds_igrd_cd" IS '식약처성분코드';

-- 식약처성분명
COMMENT ON COLUMN "TB_PP_M_DUR_CPCT"."mfds_igrd_nm" IS '식약처성분명';

-- 공고일자
COMMENT ON COLUMN "TB_PP_M_DUR_CPCT"."pbanc_ymd" IS '공고일자';

-- 공고번호
COMMENT ON COLUMN "TB_PP_M_DUR_CPCT"."pbanc_no" IS '공고번호';

-- 상세내용
COMMENT ON COLUMN "TB_PP_M_DUR_CPCT"."dtl_cn" IS '상세내용';

-- 적용년월
COMMENT ON COLUMN "TB_PP_M_DUR_CPCT"."aplcn_ym" IS '적용년월';

-- 유형코드
COMMENT ON COLUMN "TB_PP_M_DUR_CPCT"."type_cd" IS '유형코드';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_DUR_CPCT"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_DUR_CPCT"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DUR_CPCT"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_DUR_CPCT"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_DUR_CPCT"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DUR_CPCT"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_DUR용량주의기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_DUR_CPCT"
	ON "TB_PP_M_DUR_CPCT"
	( -- 대국민포털_DUR용량주의기본
		"cpct_cutn_sn" ASC NULLS LAST -- 용량주의일련번호
	);

-- 대국민포털_DUR용량주의기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_DUR_CPCT" IS '대국민포털_DUR용량주의기본 기본키';

-- 대국민포털_DUR용량주의기본
ALTER TABLE "TB_PP_M_DUR_CPCT"
	ADD CONSTRAINT "PK_TB_PP_M_DUR_CPCT"
		-- 대국민포털_DUR용량주의기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_DUR_CPCT"
	NOT DEFERRABLE;

-- 대국민포털_DUR용량주의기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_DUR_CPCT" ON "TB_PP_M_DUR_CPCT" IS '대국민포털_DUR용량주의기본 기본키';

-- 대국민포털_DUR임부금기품목기본
CREATE TABLE "TB_PP_M_DUR_PRGNT_ITEM"
(
	"prgnt_bann_sn"  VARCHAR(50)   NOT NULL, -- 임부금기일련번호
	"prdct_cd"       CHAR(9)       NOT NULL, -- 제품코드
	"igrd_nm"        VARCHAR(100)  NULL,     -- 성분명
	"igrd_cd"        CHAR(9)       NOT NULL, -- 성분코드
	"prdct_nm"       VARCHAR(256)  NULL,     -- 제품명
	"bzenty_nm"      VARCHAR(100)  NULL,     -- 업체명
	"mfds_prdct_nm"  VARCHAR(256)  NULL,     -- 식약처제품명
	"mfds_igrd_cd"   CHAR(7)       NULL,     -- 식약처성분코드
	"mfds_igrd_nm"   VARCHAR(100)  NULL,     -- 식약처성분명
	"ancmnt_ymd"     CHAR(8)       NULL,     -- 고시일자
	"ancmnt_no"      CHAR(8)       NULL,     -- 고시번호
	"bann_grd"       NUMERIC(2,0)  NULL,     -- 금기등급
	"dtl_info"       VARCHAR(4000) NULL,     -- 상세정보
	"aplcn_ym"       CHAR(6)       NULL,     -- 적용년월
	"rgtr_id"        VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"         TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"   VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"        VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"       TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id" VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_DUR임부금기품목기본
COMMENT ON TABLE "TB_PP_M_DUR_PRGNT_ITEM" IS '대국민포털_DUR임부금기품목기본';

-- 임부금기일련번호
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_ITEM"."prgnt_bann_sn" IS '임부금기일련번호';

-- 제품코드
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_ITEM"."prdct_cd" IS '제품코드';

-- 성분명
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_ITEM"."igrd_nm" IS '성분명';

-- 성분코드
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_ITEM"."igrd_cd" IS '성분코드';

-- 제품명
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_ITEM"."prdct_nm" IS '제품명';

-- 업체명
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_ITEM"."bzenty_nm" IS '업체명';

-- 식약처제품명
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_ITEM"."mfds_prdct_nm" IS '식약처제품명';

-- 식약처성분코드
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_ITEM"."mfds_igrd_cd" IS '식약처성분코드';

-- 식약처성분명
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_ITEM"."mfds_igrd_nm" IS '식약처성분명';

-- 고시일자
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_ITEM"."ancmnt_ymd" IS '고시일자';

-- 고시번호
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_ITEM"."ancmnt_no" IS '고시번호';

-- 금기등급
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_ITEM"."bann_grd" IS '금기등급';

-- 상세정보
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_ITEM"."dtl_info" IS '상세정보';

-- 적용년월
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_ITEM"."aplcn_ym" IS '적용년월';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_ITEM"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_ITEM"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_ITEM"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_ITEM"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_ITEM"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_ITEM"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_DUR임부금기품목기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_DUR_PRGNT_ITEM"
	ON "TB_PP_M_DUR_PRGNT_ITEM"
	( -- 대국민포털_DUR임부금기품목기본
		"prgnt_bann_sn" ASC NULLS LAST -- 임부금기일련번호
	);

-- 대국민포털_DUR임부금기품목기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_DUR_PRGNT_ITEM" IS '대국민포털_DUR임부금기품목기본 기본키';

-- 대국민포털_DUR임부금기품목기본
ALTER TABLE "TB_PP_M_DUR_PRGNT_ITEM"
	ADD CONSTRAINT "PK_TB_PP_M_DUR_PRGNT_ITEM"
		-- 대국민포털_DUR임부금기품목기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_DUR_PRGNT_ITEM"
	NOT DEFERRABLE;

-- 대국민포털_DUR임부금기품목기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_DUR_PRGNT_ITEM" ON "TB_PP_M_DUR_PRGNT_ITEM" IS '대국민포털_DUR임부금기품목기본 기본키';

-- 대국민포털_DUR투여기간주의기본
CREATE TABLE "TB_PP_M_DUR_DOSAGE"
(
	"dosage_prd_cutn_sn"  VARCHAR(50)   NOT NULL, -- 투여기간주의일련번호
	"mdcn_cd"             CHAR(9)       NOT NULL, -- 약품코드
	"mdcn_nm"             VARCHAR(256)  NULL,     -- 약품명
	"gnrl_nm_cd"          CHAR(9)       NOT NULL, -- 일반명코드
	"gnrl_nm"             VARCHAR(100)  NULL,     -- 일반명
	"max_dosage_prd_days" NUMERIC(4,0)  NULL,     -- 최대투여기간일수
	"mfds_prdct_nm"       VARCHAR(256)  NULL,     -- 식약처제품명
	"mfds_igrd_cd"        CHAR(7)       NULL,     -- 식약처성분코드
	"mfds_igrd_nm"        VARCHAR(100)  NULL,     -- 식약처성분명
	"pbanc_ymd"           CHAR(8)       NULL,     -- 공고일자
	"pbanc_no"            CHAR(8)       NULL,     -- 공고번호
	"aplcn_ym"            CHAR(6)       NULL,     -- 적용년월
	"rmrk"                VARCHAR(4000) NULL,     -- 비고
	"type_cd"             CHAR(1)       NULL,     -- 유형코드
	"rgtr_id"             VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"              TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"        VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"             VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"            TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id"      VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_DUR투여기간주의기본
COMMENT ON TABLE "TB_PP_M_DUR_DOSAGE" IS '대국민포털_DUR투여기간주의기본';

-- 투여기간주의일련번호
COMMENT ON COLUMN "TB_PP_M_DUR_DOSAGE"."dosage_prd_cutn_sn" IS '투여기간주의일련번호';

-- 약품코드
COMMENT ON COLUMN "TB_PP_M_DUR_DOSAGE"."mdcn_cd" IS '약품코드';

-- 약품명
COMMENT ON COLUMN "TB_PP_M_DUR_DOSAGE"."mdcn_nm" IS '약품명';

-- 일반명코드
COMMENT ON COLUMN "TB_PP_M_DUR_DOSAGE"."gnrl_nm_cd" IS '일반명코드';

-- 일반명
COMMENT ON COLUMN "TB_PP_M_DUR_DOSAGE"."gnrl_nm" IS '일반명';

-- 최대투여기간일수
COMMENT ON COLUMN "TB_PP_M_DUR_DOSAGE"."max_dosage_prd_days" IS '최대투여기간일수';

-- 식약처제품명
COMMENT ON COLUMN "TB_PP_M_DUR_DOSAGE"."mfds_prdct_nm" IS '식약처제품명';

-- 식약처성분코드
COMMENT ON COLUMN "TB_PP_M_DUR_DOSAGE"."mfds_igrd_cd" IS '식약처성분코드';

-- 식약처성분명
COMMENT ON COLUMN "TB_PP_M_DUR_DOSAGE"."mfds_igrd_nm" IS '식약처성분명';

-- 공고일자
COMMENT ON COLUMN "TB_PP_M_DUR_DOSAGE"."pbanc_ymd" IS '공고일자';

-- 공고번호
COMMENT ON COLUMN "TB_PP_M_DUR_DOSAGE"."pbanc_no" IS '공고번호';

-- 적용년월
COMMENT ON COLUMN "TB_PP_M_DUR_DOSAGE"."aplcn_ym" IS '적용년월';

-- 비고
COMMENT ON COLUMN "TB_PP_M_DUR_DOSAGE"."rmrk" IS '비고';

-- 유형코드
COMMENT ON COLUMN "TB_PP_M_DUR_DOSAGE"."type_cd" IS '유형코드';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_DUR_DOSAGE"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_DUR_DOSAGE"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DUR_DOSAGE"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_DUR_DOSAGE"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_DUR_DOSAGE"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DUR_DOSAGE"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_DUR투여기간주의기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_DUR_DOSAGE"
	ON "TB_PP_M_DUR_DOSAGE"
	( -- 대국민포털_DUR투여기간주의기본
		"dosage_prd_cutn_sn" ASC NULLS LAST -- 투여기간주의일련번호
	);

-- 대국민포털_DUR투여기간주의기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_DUR_DOSAGE" IS '대국민포털_DUR투여기간주의기본 기본키';

-- 대국민포털_DUR투여기간주의기본
ALTER TABLE "TB_PP_M_DUR_DOSAGE"
	ADD CONSTRAINT "PK_TB_PP_M_DUR_DOSAGE"
		-- 대국민포털_DUR투여기간주의기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_DUR_DOSAGE"
	NOT DEFERRABLE;

-- 대국민포털_DUR투여기간주의기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_DUR_DOSAGE" ON "TB_PP_M_DUR_DOSAGE" IS '대국민포털_DUR투여기간주의기본 기본키';

-- 대국민포털_DUR효능군중복품목기본
CREATE TABLE "TB_PP_M_DUR_EFTGRP_ITEM"
(
	"eftgrp_dpcn_sn"      VARCHAR(50)  NOT NULL, -- 효능군중복일련번호
	"mdcn_cd"             CHAR(9)      NOT NULL, -- 약품코드
	"eft_group"           VARCHAR(20)  NULL,     -- 효능그룹
	"group"               VARCHAR(20)  NULL,     -- 그룹
	"group_1"             VARCHAR(20)  NULL,     -- 그룹1
	"eftgrp_dpcn_chck_cd" CHAR(8)      NOT NULL, -- 효능군중복점검코드
	"gnrl_nm_cd"          CHAR(9)      NOT NULL, -- 일반명코드
	"gnrl_nm"             VARCHAR(100) NULL,     -- 일반명
	"item_nm"             VARCHAR(256) NULL,     -- 품목명
	"bzenty_nm"           VARCHAR(100) NULL,     -- 업체명
	"mfds_prdct_nm"       VARCHAR(256) NULL,     -- 식약처제품명
	"mfds_igrd_cd"        CHAR(7)      NULL,     -- 식약처성분코드
	"mfds_igrd_nm"        VARCHAR(100) NULL,     -- 식약처성분명
	"pbanc_ymd"           CHAR(8)      NULL,     -- 공고일자
	"pbanc_no"            CHAR(8)      NULL,     -- 공고번호
	"aplcn_ym"            CHAR(6)      NULL,     -- 적용년월
	"rgtr_id"             VARCHAR(20)  NULL,     -- 등록자아이디
	"reg_dt"              TIMESTAMP    NULL,     -- 등록일시
	"reg_prgrm_id"        VARCHAR(100) NULL,     -- 등록프로그램아이디
	"mdfr_id"             VARCHAR(20)  NULL,     -- 수정자아이디
	"mdfcn_dt"            TIMESTAMP    NULL,     -- 수정일시
	"mdfcn_prgrm_id"      VARCHAR(100) NULL      -- 수정프로그램아이디
);

-- 대국민포털_DUR효능군중복품목기본
COMMENT ON TABLE "TB_PP_M_DUR_EFTGRP_ITEM" IS '대국민포털_DUR효능군중복품목기본';

-- 효능군중복일련번호
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_ITEM"."eftgrp_dpcn_sn" IS '효능군중복일련번호';

-- 약품코드
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_ITEM"."mdcn_cd" IS '약품코드';

-- 효능그룹
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_ITEM"."eft_group" IS '효능그룹';

-- 그룹
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_ITEM"."group" IS '그룹';

-- 그룹1
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_ITEM"."group_1" IS '그룹1';

-- 효능군중복점검코드
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_ITEM"."eftgrp_dpcn_chck_cd" IS '효능군중복점검코드';

-- 일반명코드
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_ITEM"."gnrl_nm_cd" IS '일반명코드';

-- 일반명
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_ITEM"."gnrl_nm" IS '일반명';

-- 품목명
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_ITEM"."item_nm" IS '품목명';

-- 업체명
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_ITEM"."bzenty_nm" IS '업체명';

-- 식약처제품명
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_ITEM"."mfds_prdct_nm" IS '식약처제품명';

-- 식약처성분코드
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_ITEM"."mfds_igrd_cd" IS '식약처성분코드';

-- 식약처성분명
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_ITEM"."mfds_igrd_nm" IS '식약처성분명';

-- 공고일자
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_ITEM"."pbanc_ymd" IS '공고일자';

-- 공고번호
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_ITEM"."pbanc_no" IS '공고번호';

-- 적용년월
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_ITEM"."aplcn_ym" IS '적용년월';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_ITEM"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_ITEM"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_ITEM"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_ITEM"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_ITEM"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_ITEM"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_DUR효능군중복품목기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_DUR_EFTGRP_ITEM"
	ON "TB_PP_M_DUR_EFTGRP_ITEM"
	( -- 대국민포털_DUR효능군중복품목기본
		"eftgrp_dpcn_sn" ASC NULLS LAST -- 효능군중복일련번호
	);

-- 대국민포털_DUR효능군중복품목기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_DUR_EFTGRP_ITEM" IS '대국민포털_DUR효능군중복품목기본 기본키';

-- 대국민포털_DUR효능군중복품목기본
ALTER TABLE "TB_PP_M_DUR_EFTGRP_ITEM"
	ADD CONSTRAINT "PK_TB_PP_M_DUR_EFTGRP_ITEM"
		-- 대국민포털_DUR효능군중복품목기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_DUR_EFTGRP_ITEM"
	NOT DEFERRABLE;

-- 대국민포털_DUR효능군중복품목기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_DUR_EFTGRP_ITEM" ON "TB_PP_M_DUR_EFTGRP_ITEM" IS '대국민포털_DUR효능군중복품목기본 기본키';

-- 대국민포털_DUR노인주의해열진통소염제기본
CREATE TABLE "TB_PP_M_DUR_SNCTZ_MED"
(
	"snctz_cutn_med_sn" VARCHAR(50)   NOT NULL, -- 노인주의약일련번호
	"prdct_cd"          CHAR(9)       NOT NULL, -- 제품코드
	"igrd_cd"           CHAR(9)       NOT NULL, -- 성분코드
	"igrd_nm"           VARCHAR(100)  NULL,     -- 성분명
	"prdct_nm"          VARCHAR(256)  NULL,     -- 제품명
	"entp_nm"           VARCHAR(100)  NULL,     -- 업소명
	"mfds_prdct_nm"     VARCHAR(256)  NULL,     -- 식약처제품명
	"mfds_igrd_cd"      CHAR(7)       NULL,     -- 식약처성분코드
	"mfds_igrd_nm"      VARCHAR(100)  NULL,     -- 식약처성분명
	"mdcn_dtl_info"     VARCHAR(4000) NULL,     -- 약품상세정보
	"aplcn_ym"          CHAR(6)       NULL,     -- 적용년월
	"type_cd"           CHAR(1)       NULL,     -- 유형코드
	"rgtr_id"           VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"            TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"      VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"           VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"          TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id"    VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_DUR노인주의해열진통소염제기본
COMMENT ON TABLE "TB_PP_M_DUR_SNCTZ_MED" IS '대국민포털_DUR노인주의해열진통소염제기본';

-- 노인주의약일련번호
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ_MED"."snctz_cutn_med_sn" IS '노인주의약일련번호';

-- 제품코드
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ_MED"."prdct_cd" IS '제품코드';

-- 성분코드
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ_MED"."igrd_cd" IS '성분코드';

-- 성분명
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ_MED"."igrd_nm" IS '성분명';

-- 제품명
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ_MED"."prdct_nm" IS '제품명';

-- 업소명
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ_MED"."entp_nm" IS '업소명';

-- 식약처제품명
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ_MED"."mfds_prdct_nm" IS '식약처제품명';

-- 식약처성분코드
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ_MED"."mfds_igrd_cd" IS '식약처성분코드';

-- 식약처성분명
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ_MED"."mfds_igrd_nm" IS '식약처성분명';

-- 약품상세정보
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ_MED"."mdcn_dtl_info" IS '약품상세정보';

-- 적용년월
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ_MED"."aplcn_ym" IS '적용년월';

-- 유형코드
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ_MED"."type_cd" IS '유형코드';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ_MED"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ_MED"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ_MED"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ_MED"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ_MED"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DUR_SNCTZ_MED"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_DUR노인주의해열진통소염제기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_DUR_SNCTZ_MED"
	ON "TB_PP_M_DUR_SNCTZ_MED"
	( -- 대국민포털_DUR노인주의해열진통소염제기본
		"snctz_cutn_med_sn" ASC NULLS LAST -- 노인주의약일련번호
	);

-- 대국민포털_DUR노인주의해열진통소염제기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_DUR_SNCTZ_MED" IS '대국민포털_DUR노인주의해열진통소염제기본 기본키';

-- 대국민포털_DUR노인주의해열진통소염제기본
ALTER TABLE "TB_PP_M_DUR_SNCTZ_MED"
	ADD CONSTRAINT "PK_TB_PP_M_DUR_SNCTZ_MED"
		-- 대국민포털_DUR노인주의해열진통소염제기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_DUR_SNCTZ_MED"
	NOT DEFERRABLE;

-- 대국민포털_DUR노인주의해열진통소염제기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_DUR_SNCTZ_MED" ON "TB_PP_M_DUR_SNCTZ_MED" IS '대국민포털_DUR노인주의해열진통소염제기본 기본키';

-- 대국민포털_DUR연령금기기본
CREATE TABLE "TB_PP_DUR_AGE_BANN"
(
	"age_bann_sn"    VARCHAR(50)   NOT NULL, -- 연령금기일련번호
	"prdct_cd"       CHAR(9)       NULL,     -- 제품코드
	"dur_igrd_nm"    VARCHAR(100)  NULL,     -- DUR성분명
	"dur_igrd_cd"    CHAR(9)       NULL,     -- DUR성분코드
	"dur_prdct_nm"   VARCHAR(256)  NULL,     -- DUR제품명
	"dur_bzenty_nm"  VARCHAR(100)  NULL,     -- DUR업체명
	"mfds_prdct_nm"  VARCHAR(256)  NULL,     -- 식약처제품명
	"mfds_igrd_cd"   CHAR(7)       NULL,     -- 식약처성분코드
	"mfds_igrd_nm"   VARCHAR(100)  NULL,     -- 식약처성분명
	"rlvt_age"       NUMERIC(3,0)  NULL,     -- 해당연령
	"rlvt_age_unit"  VARCHAR(20)   NULL,     -- 해당연령단위
	"age_prcs_cnd"   VARCHAR(20)   NULL,     -- 연령처리조건
	"ancmnt_no"      CHAR(8)       NULL,     -- 고시번호
	"ancmnt_ymd"     CHAR(8)       NULL,     -- 고시일자
	"dtl_info"       VARCHAR(4000) NULL,     -- 상세정보
	"aplcn_ym"       CHAR(6)       NULL,     -- 적용년월
	"type_cd"        CHAR(1)       NULL,     -- 유형코드
	"rgtr_id"        VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"         TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"   VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"        VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"       TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id" VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_DUR연령금기기본
COMMENT ON TABLE "TB_PP_DUR_AGE_BANN" IS '대국민포털_DUR연령금기기본';

-- 연령금기일련번호
COMMENT ON COLUMN "TB_PP_DUR_AGE_BANN"."age_bann_sn" IS '연령금기일련번호';

-- 제품코드
COMMENT ON COLUMN "TB_PP_DUR_AGE_BANN"."prdct_cd" IS '제품코드';

-- DUR성분명
COMMENT ON COLUMN "TB_PP_DUR_AGE_BANN"."dur_igrd_nm" IS 'DUR성분명';

-- DUR성분코드
COMMENT ON COLUMN "TB_PP_DUR_AGE_BANN"."dur_igrd_cd" IS 'DUR성분코드';

-- DUR제품명
COMMENT ON COLUMN "TB_PP_DUR_AGE_BANN"."dur_prdct_nm" IS 'DUR제품명';

-- DUR업체명
COMMENT ON COLUMN "TB_PP_DUR_AGE_BANN"."dur_bzenty_nm" IS 'DUR업체명';

-- 식약처제품명
COMMENT ON COLUMN "TB_PP_DUR_AGE_BANN"."mfds_prdct_nm" IS '식약처제품명';

-- 식약처성분코드
COMMENT ON COLUMN "TB_PP_DUR_AGE_BANN"."mfds_igrd_cd" IS '식약처성분코드';

-- 식약처성분명
COMMENT ON COLUMN "TB_PP_DUR_AGE_BANN"."mfds_igrd_nm" IS '식약처성분명';

-- 해당연령
COMMENT ON COLUMN "TB_PP_DUR_AGE_BANN"."rlvt_age" IS '해당연령';

-- 해당연령단위
COMMENT ON COLUMN "TB_PP_DUR_AGE_BANN"."rlvt_age_unit" IS '해당연령단위';

-- 연령처리조건
COMMENT ON COLUMN "TB_PP_DUR_AGE_BANN"."age_prcs_cnd" IS '연령처리조건';

-- 고시번호
COMMENT ON COLUMN "TB_PP_DUR_AGE_BANN"."ancmnt_no" IS '고시번호';

-- 고시일자
COMMENT ON COLUMN "TB_PP_DUR_AGE_BANN"."ancmnt_ymd" IS '고시일자';

-- 상세정보
COMMENT ON COLUMN "TB_PP_DUR_AGE_BANN"."dtl_info" IS '상세정보';

-- 적용년월
COMMENT ON COLUMN "TB_PP_DUR_AGE_BANN"."aplcn_ym" IS '적용년월';

-- 유형코드
COMMENT ON COLUMN "TB_PP_DUR_AGE_BANN"."type_cd" IS '유형코드';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_DUR_AGE_BANN"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_DUR_AGE_BANN"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_DUR_AGE_BANN"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_DUR_AGE_BANN"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_DUR_AGE_BANN"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_DUR_AGE_BANN"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_DUR연령금기기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_DUR_AGE_BANN"
	ON "TB_PP_DUR_AGE_BANN"
	( -- 대국민포털_DUR연령금기기본
		"age_bann_sn" ASC NULLS LAST -- 연령금기일련번호
	);

-- 대국민포털_DUR연령금기기본 기본키
COMMENT ON INDEX "PK_TB_PP_DUR_AGE_BANN" IS '대국민포털_DUR연령금기기본 기본키';

-- 대국민포털_DUR연령금기기본
ALTER TABLE "TB_PP_DUR_AGE_BANN"
	ADD CONSTRAINT "PK_TB_PP_DUR_AGE_BANN"
		-- 대국민포털_DUR연령금기기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_DUR_AGE_BANN"
	NOT DEFERRABLE;

-- 대국민포털_DUR연령금기기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_DUR_AGE_BANN" ON "TB_PP_DUR_AGE_BANN" IS '대국민포털_DUR연령금기기본 기본키';

-- 대국민포털_DUR임부금기성분기본
CREATE TABLE "TB_PP_M_DUR_PRGNT_IGRD"
(
	"prgnt_bann_sn"  VARCHAR(50)   NOT NULL, -- 임부금기일련번호
	"igrd_nm"        VARCHAR(100)  NULL,     -- 성분명
	"bann_grd"       VARCHAR(4000) NULL,     -- 금기등급
	"rmrk"           VARCHAR(4000) NULL,     -- 비고
	"dtl_cn"         VARCHAR(4000) NULL,     -- 상세내용
	"mfds_prdct_nm"  VARCHAR(256)  NULL,     -- 식약처제품명
	"mfds_igrd_cd"   CHAR(7)       NULL,     -- 식약처성분코드
	"mfds_igrd_nm"   VARCHAR(100)  NULL,     -- 식약처성분명
	"aplcn_ym"       CHAR(6)       NULL,     -- 적용년월
	"rgtr_id"        VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"         TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"   VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"        VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"       TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id" VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_DUR임부금기성분기본
COMMENT ON TABLE "TB_PP_M_DUR_PRGNT_IGRD" IS '대국민포털_DUR임부금기성분기본';

-- 임부금기일련번호
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_IGRD"."prgnt_bann_sn" IS '임부금기일련번호';

-- 성분명
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_IGRD"."igrd_nm" IS '성분명';

-- 금기등급
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_IGRD"."bann_grd" IS '금기등급';

-- 비고
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_IGRD"."rmrk" IS '비고';

-- 상세내용
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_IGRD"."dtl_cn" IS '상세내용';

-- 식약처제품명
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_IGRD"."mfds_prdct_nm" IS '식약처제품명';

-- 식약처성분코드
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_IGRD"."mfds_igrd_cd" IS '식약처성분코드';

-- 식약처성분명
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_IGRD"."mfds_igrd_nm" IS '식약처성분명';

-- 적용년월
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_IGRD"."aplcn_ym" IS '적용년월';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_IGRD"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_IGRD"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_IGRD"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_IGRD"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_IGRD"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DUR_PRGNT_IGRD"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_DUR임부금기성분기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_DUR_PRGNT_IGRD"
	ON "TB_PP_M_DUR_PRGNT_IGRD"
	( -- 대국민포털_DUR임부금기성분기본
		"prgnt_bann_sn" ASC NULLS LAST -- 임부금기일련번호
	);

-- 대국민포털_DUR임부금기성분기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_DUR_PRGNT_IGRD" IS '대국민포털_DUR임부금기성분기본 기본키';

-- 대국민포털_DUR임부금기성분기본
ALTER TABLE "TB_PP_M_DUR_PRGNT_IGRD"
	ADD CONSTRAINT "PK_TB_PP_M_DUR_PRGNT_IGRD"
		-- 대국민포털_DUR임부금기성분기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_DUR_PRGNT_IGRD"
	NOT DEFERRABLE;

-- 대국민포털_DUR임부금기성분기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_DUR_PRGNT_IGRD" ON "TB_PP_M_DUR_PRGNT_IGRD" IS '대국민포털_DUR임부금기성분기본 기본키';

-- 대국민포털_DUR효능군중복성분기본
CREATE TABLE "TB_PP_M_DUR_EFTGRP_IGRD"
(
	"eftgrp_dpcn_sn" VARCHAR(50)   NOT NULL, -- 효능군중복일련번호
	"eftgrp_nm"      VARCHAR(100)  NULL,     -- 효능군명
	"bsys_nm"        VARCHAR(256)  NULL,     -- 계통명
	"korn_igrd_nm"   VARCHAR(100)  NULL,     -- 한글성분명
	"eng_igrd_nm"    VARCHAR(100)  NULL,     -- 영문성분명
	"rmrk"           VARCHAR(4000) NULL,     -- 비고
	"mfds_prdct_nm"  VARCHAR(256)  NULL,     -- 식약처제품명
	"mfds_igrd_cd"   CHAR(7)       NULL,     -- 식약처성분코드
	"mfds_igrd_nm"   VARCHAR(100)  NULL,     -- 식약처성분명
	"aplcn_ym"       CHAR(6)       NULL,     -- 적용년월
	"rgtr_id"        VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"         TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"   VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"        VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"       TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id" VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_DUR효능군중복성분기본
COMMENT ON TABLE "TB_PP_M_DUR_EFTGRP_IGRD" IS '대국민포털_DUR효능군중복성분기본';

-- 효능군중복일련번호
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_IGRD"."eftgrp_dpcn_sn" IS '효능군중복일련번호';

-- 효능군명
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_IGRD"."eftgrp_nm" IS '효능군명';

-- 계통명
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_IGRD"."bsys_nm" IS '계통명';

-- 한글성분명
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_IGRD"."korn_igrd_nm" IS '한글성분명';

-- 영문성분명
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_IGRD"."eng_igrd_nm" IS '영문성분명';

-- 비고
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_IGRD"."rmrk" IS '비고';

-- 식약처제품명
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_IGRD"."mfds_prdct_nm" IS '식약처제품명';

-- 식약처성분코드
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_IGRD"."mfds_igrd_cd" IS '식약처성분코드';

-- 식약처성분명
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_IGRD"."mfds_igrd_nm" IS '식약처성분명';

-- 적용년월
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_IGRD"."aplcn_ym" IS '적용년월';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_IGRD"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_IGRD"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_IGRD"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_IGRD"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_IGRD"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DUR_EFTGRP_IGRD"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_DUR효능군중복성분기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_DUR_EFTGRP_IGRD"
	ON "TB_PP_M_DUR_EFTGRP_IGRD"
	( -- 대국민포털_DUR효능군중복성분기본
		"eftgrp_dpcn_sn" ASC NULLS LAST -- 효능군중복일련번호
	);

-- 대국민포털_DUR효능군중복성분기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_DUR_EFTGRP_IGRD" IS '대국민포털_DUR효능군중복성분기본 기본키';

-- 대국민포털_DUR효능군중복성분기본
ALTER TABLE "TB_PP_M_DUR_EFTGRP_IGRD"
	ADD CONSTRAINT "PK_TB_PP_M_DUR_EFTGRP_IGRD"
		-- 대국민포털_DUR효능군중복성분기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_DUR_EFTGRP_IGRD"
	NOT DEFERRABLE;

-- 대국민포털_DUR효능군중복성분기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_DUR_EFTGRP_IGRD" ON "TB_PP_M_DUR_EFTGRP_IGRD" IS '대국민포털_DUR효능군중복성분기본 기본키';

-- 대국민포털_FAQ기본
CREATE TABLE "TB_PP_M_FAQ"
(
	"faq_sn"         NUMERIC(10,0) NOT NULL, -- FAQ일련번호
	"task_se_cd"     VARCHAR(10)   NOT NULL, -- 업무구분코드
	"faq_clsf"       VARCHAR(80)   NULL,     -- FAQ분류
	"faq_ttl"        VARCHAR(256)  NULL,     -- FAQ제목
	"faq_seq"        NUMERIC(2,0)  NOT NULL, -- FAQ순서
	"use_yn"         CHAR(1)       NOT NULL, -- 사용여부
	"lang_se_cd"     CHAR(2)       NOT NULL, -- 언어구분코드
	"faq_ans"        VARCHAR(4000) NULL,     -- FAQ답변
	"atch_file_id"   VARCHAR(20)   NULL,     -- 첨부파일아이디
	"wrtr_dept_nm"   VARCHAR(40)   NULL,     -- 작성자부서명
	"mdfr_dept_nm"   VARCHAR(40)   NULL,     -- 수정자부서명
	"rgtr_id"        VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"         TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"   VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"        VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"       TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id" VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_FAQ기본
COMMENT ON TABLE "TB_PP_M_FAQ" IS '대국민포털_FAQ기본';

-- FAQ일련번호
COMMENT ON COLUMN "TB_PP_M_FAQ"."faq_sn" IS 'FAQ일련번호';

-- 업무구분코드
COMMENT ON COLUMN "TB_PP_M_FAQ"."task_se_cd" IS '업무구분코드';

-- FAQ분류
COMMENT ON COLUMN "TB_PP_M_FAQ"."faq_clsf" IS 'FAQ분류';

-- FAQ제목
COMMENT ON COLUMN "TB_PP_M_FAQ"."faq_ttl" IS 'FAQ제목';

-- FAQ순서
COMMENT ON COLUMN "TB_PP_M_FAQ"."faq_seq" IS 'FAQ순서';

-- 사용여부
COMMENT ON COLUMN "TB_PP_M_FAQ"."use_yn" IS '사용여부';

-- 언어구분코드
COMMENT ON COLUMN "TB_PP_M_FAQ"."lang_se_cd" IS '언어구분코드';

-- FAQ답변
COMMENT ON COLUMN "TB_PP_M_FAQ"."faq_ans" IS 'FAQ답변';

-- 첨부파일아이디
COMMENT ON COLUMN "TB_PP_M_FAQ"."atch_file_id" IS '첨부파일아이디';

-- 작성자부서명
COMMENT ON COLUMN "TB_PP_M_FAQ"."wrtr_dept_nm" IS '작성자부서명';

-- 수정자부서명
COMMENT ON COLUMN "TB_PP_M_FAQ"."mdfr_dept_nm" IS '수정자부서명';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_FAQ"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_FAQ"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_FAQ"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_FAQ"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_FAQ"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_FAQ"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_FAQ기본 기본키2
CREATE UNIQUE INDEX "PK_TB_PP_M_FAQ"
	ON "TB_PP_M_FAQ"
	( -- 대국민포털_FAQ기본
		"faq_sn" ASC NULLS LAST -- FAQ일련번호
	);

-- 대국민포털_FAQ기본 기본키2
COMMENT ON INDEX "PK_TB_PP_M_FAQ" IS '대국민포털_FAQ기본 기본키2';

-- 대국민포털_FAQ기본
ALTER TABLE "TB_PP_M_FAQ"
	ADD CONSTRAINT "PK_TB_PP_M_FAQ"
		-- 대국민포털_FAQ기본 기본키2
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_FAQ"
	NOT DEFERRABLE;

-- 대국민포털_FAQ기본 기본키2
COMMENT ON CONSTRAINT "PK_TB_PP_M_FAQ" ON "TB_PP_M_FAQ" IS '대국민포털_FAQ기본 기본키2';

-- 대국민포털_KIDS조직도기본
CREATE TABLE "TB_PP_M_ORGCHT"
(
	"emp_no"  VARCHAR(20) NOT NULL, -- 직원번호
	"dept_no" VARCHAR(20) NULL,     -- 부서번호
	"dept_nm" VARCHAR(40) NULL,     -- 부서명
	"emp_nm"  VARCHAR(20) NULL      -- 직원명
);

-- 대국민포털_KIDS조직도기본
COMMENT ON TABLE "TB_PP_M_ORGCHT" IS '대국민포털_KIDS조직도기본';

-- 직원번호
COMMENT ON COLUMN "TB_PP_M_ORGCHT"."emp_no" IS '직원번호';

-- 부서번호
COMMENT ON COLUMN "TB_PP_M_ORGCHT"."dept_no" IS '부서번호';

-- 부서명
COMMENT ON COLUMN "TB_PP_M_ORGCHT"."dept_nm" IS '부서명';

-- 직원명
COMMENT ON COLUMN "TB_PP_M_ORGCHT"."emp_nm" IS '직원명';

-- 대국민포털_KIDS조직도기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_ORGCHT"
	ON "TB_PP_M_ORGCHT"
	( -- 대국민포털_KIDS조직도기본
		"emp_no" ASC NULLS LAST -- 직원번호
	);

-- 대국민포털_KIDS조직도기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_ORGCHT" IS '대국민포털_KIDS조직도기본 기본키';

-- 대국민포털_KIDS조직도기본
ALTER TABLE "TB_PP_M_ORGCHT"
	ADD CONSTRAINT "PK_TB_PP_M_ORGCHT"
		-- 대국민포털_KIDS조직도기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_ORGCHT"
	NOT DEFERRABLE;

-- 대국민포털_KIDS조직도기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_ORGCHT" ON "TB_PP_M_ORGCHT" IS '대국민포털_KIDS조직도기본 기본키';

-- 대국민포털_게시물기본
CREATE TABLE "TB_PP_M_PST"
(
	"pst_sn"                 NUMERIC(22,0) NOT NULL, -- 게시물일련번호
	"bbs_id"                 VARCHAR(20)   NOT NULL, -- 게시판아이디
	"pst_ttl"                VARCHAR(100)  NULL,     -- 게시물제목
	"pst_cn"                 TEXT          NULL,     -- 게시물내용
	"pst_inq_cnt"            NUMERIC(10,0) NOT NULL, -- 게시물조회수
	"pst_kogl_cprgt_type_cd" CHAR(1)       NULL,     -- 게시물공공누리저작권유형코드
	"atch_file_id"           VARCHAR(20)   NULL,     -- 첨부파일아이디
	"thmb_id"                VARCHAR(50)   NULL,     -- 썸네일아이디
	"ntc_yn"                 CHAR(1)       NOT NULL, -- 공지여부
	"del_yn"                 CHAR(1)       NOT NULL, -- 삭제여부
	"wrtr_dept_nm"           VARCHAR(40)   NULL,     -- 작성자부서명
	"mdfr_dept_nm"           VARCHAR(40)   NULL,     -- 수정자부서명
	"rgtr_id"                VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"                 TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"           VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"                VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"               TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id"         VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_게시물기본
COMMENT ON TABLE "TB_PP_M_PST" IS '대국민포털_게시물기본';

-- 게시물일련번호
COMMENT ON COLUMN "TB_PP_M_PST"."pst_sn" IS '게시물일련번호';

-- 게시판아이디
COMMENT ON COLUMN "TB_PP_M_PST"."bbs_id" IS '게시판아이디';

-- 게시물제목
COMMENT ON COLUMN "TB_PP_M_PST"."pst_ttl" IS '게시물제목';

-- 게시물내용
COMMENT ON COLUMN "TB_PP_M_PST"."pst_cn" IS '게시물내용';

-- 게시물조회수
COMMENT ON COLUMN "TB_PP_M_PST"."pst_inq_cnt" IS '게시물조회수';

-- 게시물공공누리저작권유형코드
COMMENT ON COLUMN "TB_PP_M_PST"."pst_kogl_cprgt_type_cd" IS '게시물공공누리저작권유형코드';

-- 첨부파일아이디
COMMENT ON COLUMN "TB_PP_M_PST"."atch_file_id" IS '첨부파일아이디';

-- 썸네일아이디
COMMENT ON COLUMN "TB_PP_M_PST"."thmb_id" IS '썸네일아이디';

-- 공지여부
COMMENT ON COLUMN "TB_PP_M_PST"."ntc_yn" IS '공지여부';

-- 삭제여부
COMMENT ON COLUMN "TB_PP_M_PST"."del_yn" IS '삭제여부';

-- 작성자부서명
COMMENT ON COLUMN "TB_PP_M_PST"."wrtr_dept_nm" IS '작성자부서명';

-- 수정자부서명
COMMENT ON COLUMN "TB_PP_M_PST"."mdfr_dept_nm" IS '수정자부서명';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_PST"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_PST"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_PST"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_PST"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_PST"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_PST"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_게시물기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_PST"
	ON "TB_PP_M_PST"
	( -- 대국민포털_게시물기본
		"pst_sn" ASC NULLS LAST -- 게시물일련번호
	);

-- 대국민포털_게시물기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_PST" IS '대국민포털_게시물기본 기본키';

-- 대국민포털_게시물기본
ALTER TABLE "TB_PP_M_PST"
	ADD CONSTRAINT "PK_TB_PP_M_PST"
		-- 대국민포털_게시물기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_PST"
	NOT DEFERRABLE;

-- 대국민포털_게시물기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_PST" ON "TB_PP_M_PST" IS '대국민포털_게시물기본 기본키';

-- 대국민포털_게시판기본
CREATE TABLE "TB_PP_M_BBS"
(
	"bbs_id"               VARCHAR(20)   NOT NULL, -- 게시판아이디
	"bbs_nm"               VARCHAR(300)  NULL,     -- 게시판명
	"bbs_atrb"             CHAR(12)      NOT NULL, -- 게시판속성
	"bbs_expln"            VARCHAR(4000) NULL,     -- 게시판설명
	"bbs_smry"             VARCHAR(4000) NULL,     -- 게시판요약
	"cmnt_use_yn"          CHAR(1)       NOT NULL, -- 댓글사용여부
	"inq_cnt_expsr_yn"     CHAR(1)       NOT NULL, -- 조회수노출여부
	"dept_expsr_yn"        CHAR(1)       NOT NULL, -- 부서노출여부
	"file_atch_yn"         CHAR(1)       NOT NULL, -- 파일첨부여부
	"atch_psblty_file_cnt" NUMERIC(2,0)  NULL,     -- 첨부가능파일수
	"lang_se_cd"           CHAR(2)       NOT NULL, -- 언어구분코드
	"use_yn"               CHAR(1)       NOT NULL, -- 사용여부
	"rgtr_id"              VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"               TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"         VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"              VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"             TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id"       VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_게시판기본
COMMENT ON TABLE "TB_PP_M_BBS" IS '대국민포털_게시판기본';

-- 게시판아이디
COMMENT ON COLUMN "TB_PP_M_BBS"."bbs_id" IS '게시판아이디';

-- 게시판명
COMMENT ON COLUMN "TB_PP_M_BBS"."bbs_nm" IS '게시판명';

-- 게시판속성
COMMENT ON COLUMN "TB_PP_M_BBS"."bbs_atrb" IS '게시판속성';

-- 게시판설명
COMMENT ON COLUMN "TB_PP_M_BBS"."bbs_expln" IS '게시판설명';

-- 게시판요약
COMMENT ON COLUMN "TB_PP_M_BBS"."bbs_smry" IS '게시판요약';

-- 댓글사용여부
COMMENT ON COLUMN "TB_PP_M_BBS"."cmnt_use_yn" IS '댓글사용여부';

-- 조회수노출여부
COMMENT ON COLUMN "TB_PP_M_BBS"."inq_cnt_expsr_yn" IS '조회수노출여부';

-- 부서노출여부
COMMENT ON COLUMN "TB_PP_M_BBS"."dept_expsr_yn" IS '부서노출여부';

-- 파일첨부여부
COMMENT ON COLUMN "TB_PP_M_BBS"."file_atch_yn" IS '파일첨부여부';

-- 첨부가능파일수
COMMENT ON COLUMN "TB_PP_M_BBS"."atch_psblty_file_cnt" IS '첨부가능파일수';

-- 언어구분코드
COMMENT ON COLUMN "TB_PP_M_BBS"."lang_se_cd" IS '언어구분코드';

-- 사용여부
COMMENT ON COLUMN "TB_PP_M_BBS"."use_yn" IS '사용여부';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_BBS"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_BBS"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_BBS"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_BBS"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_BBS"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_BBS"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_게시판기본 기본키2
CREATE UNIQUE INDEX "PK_TB_PP_M_BBS"
	ON "TB_PP_M_BBS"
	( -- 대국민포털_게시판기본
		"bbs_id" ASC NULLS LAST -- 게시판아이디
	);

-- 대국민포털_게시판기본 기본키2
COMMENT ON INDEX "PK_TB_PP_M_BBS" IS '대국민포털_게시판기본 기본키2';

-- 대국민포털_게시판기본
ALTER TABLE "TB_PP_M_BBS"
	ADD CONSTRAINT "PK_TB_PP_M_BBS"
		-- 대국민포털_게시판기본 기본키2
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_BBS"
	NOT DEFERRABLE;

-- 대국민포털_게시판기본 기본키2
COMMENT ON CONSTRAINT "PK_TB_PP_M_BBS" ON "TB_PP_M_BBS" IS '대국민포털_게시판기본 기본키2';

-- 대국민포털_관리자정보기본
CREATE TABLE "TB_PP_M_EMP"
(
	"emp_no"         VARCHAR(20)  NOT NULL, -- 직원번호
	"mngr_enpswd"    VARCHAR(256) NULL,     -- 관리자암호화비밀번호
	"tmpr_pswd_yn"   CHAR(1)      NOT NULL, -- 임시비밀번호여부
	"pswd_err_nmtm"  NUMERIC(2,0) NOT NULL, -- 비밀번호오류횟수
	"bfr_enpswd"     VARCHAR(100) NULL,     -- 이전암호화비밀번호
	"rgtr_id"        VARCHAR(20)  NULL,     -- 등록자아이디
	"reg_dt"         TIMESTAMP    NULL,     -- 등록일시
	"reg_prgrm_id"   VARCHAR(100) NULL,     -- 등록프로그램아이디
	"mdfr_id"        VARCHAR(20)  NULL,     -- 수정자아이디
	"mdfcn_dt"       TIMESTAMP    NULL,     -- 수정일시
	"mdfcn_prgrm_id" VARCHAR(100) NULL      -- 수정프로그램아이디
);

-- 대국민포털_관리자정보기본
COMMENT ON TABLE "TB_PP_M_EMP" IS '대국민포털_관리자정보기본';

-- 직원번호
COMMENT ON COLUMN "TB_PP_M_EMP"."emp_no" IS '직원번호';

-- 관리자암호화비밀번호
COMMENT ON COLUMN "TB_PP_M_EMP"."mngr_enpswd" IS '관리자암호화비밀번호';

-- 임시비밀번호여부
COMMENT ON COLUMN "TB_PP_M_EMP"."tmpr_pswd_yn" IS '임시비밀번호여부';

-- 비밀번호오류횟수
COMMENT ON COLUMN "TB_PP_M_EMP"."pswd_err_nmtm" IS '비밀번호오류횟수';

-- 이전암호화비밀번호
COMMENT ON COLUMN "TB_PP_M_EMP"."bfr_enpswd" IS '이전암호화비밀번호';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_EMP"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_EMP"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_EMP"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_EMP"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_EMP"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_EMP"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_관리자정보기본 기본키2
CREATE UNIQUE INDEX "PK_TB_PP_M_EMP"
	ON "TB_PP_M_EMP"
	( -- 대국민포털_관리자정보기본
		"emp_no" ASC NULLS LAST -- 직원번호
	);

-- 대국민포털_관리자정보기본 기본키2
COMMENT ON INDEX "PK_TB_PP_M_EMP" IS '대국민포털_관리자정보기본 기본키2';

-- 대국민포털_관리자정보기본
ALTER TABLE "TB_PP_M_EMP"
	ADD CONSTRAINT "PK_TB_PP_M_EMP"
		-- 대국민포털_관리자정보기본 기본키2
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_EMP"
	NOT DEFERRABLE;

-- 대국민포털_관리자정보기본 기본키2
COMMENT ON CONSTRAINT "PK_TB_PP_M_EMP" ON "TB_PP_M_EMP" IS '대국민포털_관리자정보기본 기본키2';

-- 대국민포털_권한기본
CREATE TABLE "TB_PP_M_AUTHRT"
(
	"authrt_cd"      CHAR(20)      NOT NULL, -- 권한코드
	"up_authrt_cd"   NUMERIC(10,0) NOT NULL, -- 상위권한코드
	"task_se_cd"     VARCHAR(10)   NULL,     -- 업무구분코드
	"authrt_nm"      VARCHAR(20)   NULL,     -- 권한명
	"authrt_type"    VARCHAR(20)   NULL,     -- 권한유형
	"authrt_expln"   VARCHAR(4000) NULL,     -- 권한설명
	"use_yn"         CHAR(1)       NOT NULL, -- 사용여부
	"wrtr_dept_nm"   VARCHAR(40)   NULL,     -- 작성자부서명
	"mdfr_dept_nm"   VARCHAR(40)   NULL,     -- 수정자부서명
	"rgtr_id"        VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"         TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"   VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"        VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"       TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id" VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_권한기본
COMMENT ON TABLE "TB_PP_M_AUTHRT" IS '대국민포털_권한기본';

-- 권한코드
COMMENT ON COLUMN "TB_PP_M_AUTHRT"."authrt_cd" IS '권한코드';

-- 상위권한코드
COMMENT ON COLUMN "TB_PP_M_AUTHRT"."up_authrt_cd" IS '상위권한코드';

-- 업무구분코드
COMMENT ON COLUMN "TB_PP_M_AUTHRT"."task_se_cd" IS '업무구분코드';

-- 권한명
COMMENT ON COLUMN "TB_PP_M_AUTHRT"."authrt_nm" IS '권한명';

-- 권한유형
COMMENT ON COLUMN "TB_PP_M_AUTHRT"."authrt_type" IS '권한유형';

-- 권한설명
COMMENT ON COLUMN "TB_PP_M_AUTHRT"."authrt_expln" IS '권한설명';

-- 사용여부
COMMENT ON COLUMN "TB_PP_M_AUTHRT"."use_yn" IS '사용여부';

-- 작성자부서명
COMMENT ON COLUMN "TB_PP_M_AUTHRT"."wrtr_dept_nm" IS '작성자부서명';

-- 수정자부서명
COMMENT ON COLUMN "TB_PP_M_AUTHRT"."mdfr_dept_nm" IS '수정자부서명';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_AUTHRT"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_AUTHRT"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_AUTHRT"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_AUTHRT"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_AUTHRT"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_AUTHRT"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_권한기본 기본키2
CREATE UNIQUE INDEX "PK_TB_PP_M_AUTHRT"
	ON "TB_PP_M_AUTHRT"
	( -- 대국민포털_권한기본
		"authrt_cd" ASC NULLS LAST -- 권한코드
	);

-- 대국민포털_권한기본 기본키2
COMMENT ON INDEX "PK_TB_PP_M_AUTHRT" IS '대국민포털_권한기본 기본키2';

-- 대국민포털_권한기본
ALTER TABLE "TB_PP_M_AUTHRT"
	ADD CONSTRAINT "PK_TB_PP_M_AUTHRT"
		-- 대국민포털_권한기본 기본키2
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_AUTHRT"
	NOT DEFERRABLE;

-- 대국민포털_권한기본 기본키2
COMMENT ON CONSTRAINT "PK_TB_PP_M_AUTHRT" ON "TB_PP_M_AUTHRT" IS '대국민포털_권한기본 기본키2';

-- 대국민포털_권한메뉴기본
CREATE TABLE "TB_PP_M_AUTHRT_MENU"
(
	"authrt_cd"             CHAR(20)      NOT NULL, -- 권한코드
	"menu_sn"               NUMERIC(10,0) NOT NULL, -- 메뉴일련번호
	"authrt_menu_role_rmrk" VARCHAR(4000) NULL,     -- 권한메뉴역할비고
	"rgtr_id"               VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"                TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"          VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"               VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"              TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id"        VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_권한메뉴기본
COMMENT ON TABLE "TB_PP_M_AUTHRT_MENU" IS '대국민포털_권한메뉴기본';

-- 권한코드
COMMENT ON COLUMN "TB_PP_M_AUTHRT_MENU"."authrt_cd" IS '권한코드';

-- 메뉴일련번호
COMMENT ON COLUMN "TB_PP_M_AUTHRT_MENU"."menu_sn" IS '메뉴일련번호';

-- 권한메뉴역할비고
COMMENT ON COLUMN "TB_PP_M_AUTHRT_MENU"."authrt_menu_role_rmrk" IS '권한메뉴역할비고';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_AUTHRT_MENU"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_AUTHRT_MENU"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_AUTHRT_MENU"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_AUTHRT_MENU"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_AUTHRT_MENU"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_AUTHRT_MENU"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_권한메뉴기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_AUTHRT_MENU"
	ON "TB_PP_M_AUTHRT_MENU"
	( -- 대국민포털_권한메뉴기본
		"authrt_cd" ASC NULLS LAST, -- 권한코드
		"menu_sn" ASC NULLS LAST -- 메뉴일련번호
	);

-- 대국민포털_권한메뉴기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_AUTHRT_MENU" IS '대국민포털_권한메뉴기본 기본키';

-- 대국민포털_권한메뉴기본
ALTER TABLE "TB_PP_M_AUTHRT_MENU"
	ADD CONSTRAINT "PK_TB_PP_M_AUTHRT_MENU"
		-- 대국민포털_권한메뉴기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_AUTHRT_MENU"
	NOT DEFERRABLE;

-- 대국민포털_권한메뉴기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_AUTHRT_MENU" ON "TB_PP_M_AUTHRT_MENU" IS '대국민포털_권한메뉴기본 기본키';

-- 대국민포털_기관업무기본
CREATE TABLE "TB_PP_M_INST_TASK"
(
	"brno"           CHAR(10)     NOT NULL, -- 사업자등록번호
	"task_se_cd"     VARCHAR(10)  NOT NULL, -- 업무구분코드
	"mbr_id"         VARCHAR(20)  NULL,     -- 회원아이디
	"use_yn"         CHAR(1)      NOT NULL, -- 사용여부
	"rgtr_id"        VARCHAR(20)  NULL,     -- 등록자아이디
	"reg_dt"         TIMESTAMP    NULL,     -- 등록일시
	"reg_prgrm_id"   VARCHAR(100) NULL,     -- 등록프로그램아이디
	"mdfr_id"        VARCHAR(20)  NULL,     -- 수정자아이디
	"mdfcn_dt"       TIMESTAMP    NULL,     -- 수정일시
	"mdfcn_prgrm_id" VARCHAR(100) NULL      -- 수정프로그램아이디
);

-- 대국민포털_기관업무기본
COMMENT ON TABLE "TB_PP_M_INST_TASK" IS '대국민포털_기관업무기본';

-- 사업자등록번호
COMMENT ON COLUMN "TB_PP_M_INST_TASK"."brno" IS '사업자등록번호';

-- 업무구분코드
COMMENT ON COLUMN "TB_PP_M_INST_TASK"."task_se_cd" IS '업무구분코드';

-- 회원아이디
COMMENT ON COLUMN "TB_PP_M_INST_TASK"."mbr_id" IS '회원아이디';

-- 사용여부
COMMENT ON COLUMN "TB_PP_M_INST_TASK"."use_yn" IS '사용여부';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_INST_TASK"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_INST_TASK"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_INST_TASK"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_INST_TASK"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_INST_TASK"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_INST_TASK"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_기관업무기본 기본키2
CREATE UNIQUE INDEX "PK_TB_PP_M_INST_TASK"
	ON "TB_PP_M_INST_TASK"
	( -- 대국민포털_기관업무기본
		"brno" ASC NULLS LAST, -- 사업자등록번호
		"task_se_cd" ASC NULLS LAST -- 업무구분코드
	);

-- 대국민포털_기관업무기본 기본키2
COMMENT ON INDEX "PK_TB_PP_M_INST_TASK" IS '대국민포털_기관업무기본 기본키2';

-- 대국민포털_기관업무기본
ALTER TABLE "TB_PP_M_INST_TASK"
	ADD CONSTRAINT "PK_TB_PP_M_INST_TASK"
		-- 대국민포털_기관업무기본 기본키2
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_INST_TASK"
	NOT DEFERRABLE;

-- 대국민포털_기관업무기본 기본키2
COMMENT ON CONSTRAINT "PK_TB_PP_M_INST_TASK" ON "TB_PP_M_INST_TASK" IS '대국민포털_기관업무기본 기본키2';

-- 대국민포털_담당자권한기본
CREATE TABLE "TB_PP_M_PIC_AUTHRT"
(
	"emp_no"          VARCHAR(20)   NOT NULL, -- 직원번호
	"authrt_cd"       CHAR(20)      NOT NULL, -- 권한코드
	"pic_authrt_rmrk" VARCHAR(4000) NULL,     -- 담당자권한비고
	"rgtr_id"         VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"          TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"    VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"         VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"        TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id"  VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_담당자권한기본
COMMENT ON TABLE "TB_PP_M_PIC_AUTHRT" IS '대국민포털_담당자권한기본';

-- 직원번호
COMMENT ON COLUMN "TB_PP_M_PIC_AUTHRT"."emp_no" IS '직원번호';

-- 권한코드
COMMENT ON COLUMN "TB_PP_M_PIC_AUTHRT"."authrt_cd" IS '권한코드';

-- 담당자권한비고
COMMENT ON COLUMN "TB_PP_M_PIC_AUTHRT"."pic_authrt_rmrk" IS '담당자권한비고';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_PIC_AUTHRT"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_PIC_AUTHRT"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_PIC_AUTHRT"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_PIC_AUTHRT"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_PIC_AUTHRT"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_PIC_AUTHRT"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_담당자권한기본 기본키2
CREATE UNIQUE INDEX "PK_TB_PP_M_PIC_AUTHRT"
	ON "TB_PP_M_PIC_AUTHRT"
	( -- 대국민포털_담당자권한기본
		"emp_no" ASC NULLS LAST, -- 직원번호
		"authrt_cd" ASC NULLS LAST -- 권한코드
	);

-- 대국민포털_담당자권한기본 기본키2
COMMENT ON INDEX "PK_TB_PP_M_PIC_AUTHRT" IS '대국민포털_담당자권한기본 기본키2';

-- 대국민포털_담당자권한기본
ALTER TABLE "TB_PP_M_PIC_AUTHRT"
	ADD CONSTRAINT "PK_TB_PP_M_PIC_AUTHRT"
		-- 대국민포털_담당자권한기본 기본키2
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_PIC_AUTHRT"
	NOT DEFERRABLE;

-- 대국민포털_담당자권한기본 기본키2
COMMENT ON CONSTRAINT "PK_TB_PP_M_PIC_AUTHRT" ON "TB_PP_M_PIC_AUTHRT" IS '대국민포털_담당자권한기본 기본키2';

-- 대국민포털_댓글기본
CREATE TABLE "TB_PP_M_CMNT"
(
	"cmnt_sn"        NUMERIC(22,0) NOT NULL, -- 댓글일련번호
	"pst_sn"         NUMERIC(22,0) NOT NULL, -- 게시물일련번호
	"cmnt_cn"        VARCHAR(4000) NULL,     -- 댓글내용
	"cmnt_enpswd"    VARCHAR(256)  NULL,     -- 댓글암호화비밀번호
	"use_yn"         CHAR(1)       NOT NULL, -- 사용여부
	"rgtr_id"        VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"         TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"   VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"        VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"       TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id" VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_댓글기본
COMMENT ON TABLE "TB_PP_M_CMNT" IS '대국민포털_댓글기본';

-- 댓글일련번호
COMMENT ON COLUMN "TB_PP_M_CMNT"."cmnt_sn" IS '댓글일련번호';

-- 게시물일련번호
COMMENT ON COLUMN "TB_PP_M_CMNT"."pst_sn" IS '게시물일련번호';

-- 댓글내용
COMMENT ON COLUMN "TB_PP_M_CMNT"."cmnt_cn" IS '댓글내용';

-- 댓글암호화비밀번호
COMMENT ON COLUMN "TB_PP_M_CMNT"."cmnt_enpswd" IS '댓글암호화비밀번호';

-- 사용여부
COMMENT ON COLUMN "TB_PP_M_CMNT"."use_yn" IS '사용여부';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_CMNT"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_CMNT"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_CMNT"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_CMNT"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_CMNT"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_CMNT"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_댓글기본 기본키2
CREATE UNIQUE INDEX "PK_TB_PP_M_CMNT"
	ON "TB_PP_M_CMNT"
	( -- 대국민포털_댓글기본
		"cmnt_sn" ASC NULLS LAST -- 댓글일련번호
	);

-- 대국민포털_댓글기본 기본키2
COMMENT ON INDEX "PK_TB_PP_M_CMNT" IS '대국민포털_댓글기본 기본키2';

-- 대국민포털_댓글기본
ALTER TABLE "TB_PP_M_CMNT"
	ADD CONSTRAINT "PK_TB_PP_M_CMNT"
		-- 대국민포털_댓글기본 기본키2
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_CMNT"
	NOT DEFERRABLE;

-- 대국민포털_댓글기본 기본키2
COMMENT ON CONSTRAINT "PK_TB_PP_M_CMNT" ON "TB_PP_M_CMNT" IS '대국민포털_댓글기본 기본키2';

-- 대국민포털_메뉴기본
CREATE TABLE "TB_PP_M_MENU"
(
	"menu_sn"        NUMERIC(10,0) NOT NULL, -- 메뉴일련번호
	"menu_nm"        VARCHAR(100)  NULL,     -- 메뉴명
	"up_menu_sn"     NUMERIC(10,0) NULL,     -- 상위메뉴일련번호
	"task_se_cd"     VARCHAR(10)   NOT NULL, -- 업무구분코드
	"menu_type_cd"   VARCHAR(20)   NOT NULL, -- 메뉴유형코드
	"menu_seq"       NUMERIC(4,0)  NOT NULL, -- 메뉴순서
	"menu_expln"     VARCHAR(4000) NULL,     -- 메뉴설명
    "lang_se_cd"     CHAR(2)       NOT NULL, -- 언어구분코드
	"pic_dept_nm"    VARCHAR(100)  NULL,     -- 담당자부서명
	"pic_flnm"       VARCHAR(20)   NULL,     -- 담당자성명
	"use_yn"         CHAR(1)       NOT NULL, -- 사용여부
	"rgtr_id"        VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"         TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"   VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"        VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"       TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id" VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_메뉴기본
COMMENT ON TABLE "TB_PP_M_MENU" IS '대국민포털_메뉴기본';

-- 메뉴일련번호
COMMENT ON COLUMN "TB_PP_M_MENU"."menu_sn" IS '메뉴일련번호';

-- 메뉴명
COMMENT ON COLUMN "TB_PP_M_MENU"."menu_nm" IS '메뉴명';

-- 상위메뉴일련번호
COMMENT ON COLUMN "TB_PP_M_MENU"."up_menu_sn" IS '상위메뉴일련번호';

-- 업무구분코드
COMMENT ON COLUMN "TB_PP_M_MENU"."task_se_cd" IS '업무구분코드';

-- 메뉴유형코드
COMMENT ON COLUMN "TB_PP_M_MENU"."menu_type_cd" IS '메뉴유형코드';

-- 메뉴순서
COMMENT ON COLUMN "TB_PP_M_MENU"."menu_seq" IS '메뉴순서';

-- 메뉴설명
COMMENT ON COLUMN "TB_PP_M_MENU"."menu_expln" IS '메뉴설명';

-- 언어구분코드
COMMENT ON COLUMN "TB_PP_M_MENU"."lang_se_cd" IS '언어구분코드';

-- 담당자부서명
COMMENT ON COLUMN "TB_PP_M_MENU"."pic_dept_nm" IS '담당자부서명';

-- 담당자성명
COMMENT ON COLUMN "TB_PP_M_MENU"."pic_flnm" IS '담당자성명';

-- 사용여부
COMMENT ON COLUMN "TB_PP_M_MENU"."use_yn" IS '사용여부';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_MENU"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_MENU"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_MENU"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_MENU"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_MENU"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_MENU"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_메뉴기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_MENU"
	ON "TB_PP_M_MENU"
	( -- 대국민포털_메뉴기본
		"menu_sn" ASC NULLS LAST -- 메뉴일련번호
	);

-- 대국민포털_메뉴기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_MENU" IS '대국민포털_메뉴기본 기본키';

-- 대국민포털_메뉴기본
ALTER TABLE "TB_PP_M_MENU"
	ADD CONSTRAINT "PK_TB_PP_M_MENU"
		-- 대국민포털_메뉴기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_MENU"
	NOT DEFERRABLE;

-- 대국민포털_메뉴기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_MENU" ON "TB_PP_M_MENU" IS '대국민포털_메뉴기본 기본키';

-- 대국민포털_메뉴상세
CREATE TABLE "TB_PP_D_MENU"
(
	"menu_sn"                 NUMERIC(10,0) NOT NULL, -- 메뉴일련번호
	"menu_url_addr"           VARCHAR(4000) NULL,     -- 메뉴URL주소
	"menu_npag_nm"            VARCHAR(20)   NULL,     -- 메뉴새창명
	"prvc_incl_yn"            CHAR(1)       NOT NULL, -- 개인정보포함여부
	"dgstfn_exmn_yn"          CHAR(1)       NOT NULL, -- 만족도조사여부
	"menu_expsr_yn"           CHAR(1)       NOT NULL, -- 메뉴노출여부
	"dept_info_expsr_yn"      CHAR(1)       NOT NULL, -- 부서정보노출여부
	"pic_info_expsr_yn"       CHAR(1)       NOT NULL, -- 담당자정보노출여부
	"menu_kogl_cprgt_type_cd" CHAR(1)       NULL,     -- 메뉴공공누리저작권유형코드
	"menu_pic_id"             CHAR(13)      NOT NULL, -- 메뉴담당자아이디
	"menu_tkcg_dept_no"       VARCHAR(100)  NULL,     -- 메뉴담당부서번호
	"rgtr_id"                 VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"                  TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"            VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"                 VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"                TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id"          VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_메뉴상세
COMMENT ON TABLE "TB_PP_D_MENU" IS '대국민포털_메뉴상세';

-- 메뉴일련번호
COMMENT ON COLUMN "TB_PP_D_MENU"."menu_sn" IS '메뉴일련번호';

-- 메뉴URL주소
COMMENT ON COLUMN "TB_PP_D_MENU"."menu_url_addr" IS '메뉴URL주소';

-- 메뉴새창명
COMMENT ON COLUMN "TB_PP_D_MENU"."menu_npag_nm" IS '메뉴새창명';

-- 개인정보포함여부
COMMENT ON COLUMN "TB_PP_D_MENU"."prvc_incl_yn" IS '개인정보포함여부';

-- 만족도조사여부
COMMENT ON COLUMN "TB_PP_D_MENU"."dgstfn_exmn_yn" IS '만족도조사여부';

-- 메뉴노출여부
COMMENT ON COLUMN "TB_PP_D_MENU"."menu_expsr_yn" IS '메뉴노출여부';

-- 부서정보노출여부
COMMENT ON COLUMN "TB_PP_D_MENU"."dept_info_expsr_yn" IS '부서정보노출여부';

-- 담당자정보노출여부
COMMENT ON COLUMN "TB_PP_D_MENU"."pic_info_expsr_yn" IS '담당자정보노출여부';

-- 메뉴공공누리저작권유형코드
COMMENT ON COLUMN "TB_PP_D_MENU"."menu_kogl_cprgt_type_cd" IS '메뉴공공누리저작권유형코드';

-- 메뉴담당자아이디
COMMENT ON COLUMN "TB_PP_D_MENU"."menu_pic_id" IS '메뉴담당자아이디';

-- 메뉴담당부서번호
COMMENT ON COLUMN "TB_PP_D_MENU"."menu_tkcg_dept_no" IS '메뉴담당부서번호';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_D_MENU"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_D_MENU"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_D_MENU"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_D_MENU"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_D_MENU"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_D_MENU"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_메뉴상세 기본키
CREATE UNIQUE INDEX "PK_TB_PP_D_MENU"
	ON "TB_PP_D_MENU"
	( -- 대국민포털_메뉴상세
		"menu_sn" ASC NULLS LAST -- 메뉴일련번호
	);

-- 대국민포털_메뉴상세 기본키
COMMENT ON INDEX "PK_TB_PP_D_MENU" IS '대국민포털_메뉴상세 기본키';

-- 대국민포털_메뉴상세
ALTER TABLE "TB_PP_D_MENU"
	ADD CONSTRAINT "PK_TB_PP_D_MENU"
		-- 대국민포털_메뉴상세 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_D_MENU"
	NOT DEFERRABLE;

-- 대국민포털_메뉴상세 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_D_MENU" ON "TB_PP_D_MENU" IS '대국민포털_메뉴상세 기본키';

-- 대국민포털_권한메뉴롤기본
CREATE TABLE "TB_PP_M_AUTHRT_MENU_ROLE"
(
	"authrt_cd"      CHAR(20)      NOT NULL, -- 권한코드
	"role_cd"        VARCHAR(20)   NOT NULL, -- 역할코드
	"menu_sn"        NUMERIC(10,0) NOT NULL, -- 메뉴일련번호
	"rgtr_id"        VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"         TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"   VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"        VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"       TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id" VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_권한메뉴롤기본
COMMENT ON TABLE "TB_PP_M_AUTHRT_MENU_ROLE" IS '대국민포털_권한메뉴롤기본';

-- 권한코드
COMMENT ON COLUMN "TB_PP_M_AUTHRT_MENU_ROLE"."authrt_cd" IS '권한코드';

-- 역할코드
COMMENT ON COLUMN "TB_PP_M_AUTHRT_MENU_ROLE"."role_cd" IS '역할코드';

-- 메뉴일련번호
COMMENT ON COLUMN "TB_PP_M_AUTHRT_MENU_ROLE"."menu_sn" IS '메뉴일련번호';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_AUTHRT_MENU_ROLE"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_AUTHRT_MENU_ROLE"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_AUTHRT_MENU_ROLE"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_AUTHRT_MENU_ROLE"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_AUTHRT_MENU_ROLE"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_AUTHRT_MENU_ROLE"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_권한메뉴롤기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_AUTHRT_MENU_ROLE"
	ON "TB_PP_M_AUTHRT_MENU_ROLE"
	( -- 대국민포털_권한메뉴롤기본
		"authrt_cd" ASC NULLS LAST, -- 권한코드
		"role_cd" ASC NULLS LAST, -- 역할코드
		"menu_sn" ASC NULLS LAST -- 메뉴일련번호
	);

-- 대국민포털_권한메뉴롤기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_AUTHRT_MENU_ROLE" IS '대국민포털_권한메뉴롤기본 기본키';

-- 대국민포털_권한메뉴롤기본
ALTER TABLE "TB_PP_M_AUTHRT_MENU_ROLE"
	ADD CONSTRAINT "PK_TB_PP_M_AUTHRT_MENU_ROLE"
		-- 대국민포털_권한메뉴롤기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_AUTHRT_MENU_ROLE"
	NOT DEFERRABLE;

-- 대국민포털_권한메뉴롤기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_AUTHRT_MENU_ROLE" ON "TB_PP_M_AUTHRT_MENU_ROLE" IS '대국민포털_권한메뉴롤기본 기본키';

-- 대국민포털_부서권한기본
CREATE TABLE "TB_PP_M_DEPT_AUTHRT"
(
	"dept_no"          VARCHAR(20)   NOT NULL, -- 부서번호
	"authrt_cd"        CHAR(20)      NOT NULL, -- 권한코드
	"dept_authrt_rmrk" VARCHAR(4000) NULL,     -- 부서권한비고
	"rgtr_id"          VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"           TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"     VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"          VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"         TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id"   VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_부서권한기본
COMMENT ON TABLE "TB_PP_M_DEPT_AUTHRT" IS '대국민포털_부서권한기본';

-- 부서번호
COMMENT ON COLUMN "TB_PP_M_DEPT_AUTHRT"."dept_no" IS '부서번호';

-- 권한코드
COMMENT ON COLUMN "TB_PP_M_DEPT_AUTHRT"."authrt_cd" IS '권한코드';

-- 부서권한비고
COMMENT ON COLUMN "TB_PP_M_DEPT_AUTHRT"."dept_authrt_rmrk" IS '부서권한비고';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_DEPT_AUTHRT"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_DEPT_AUTHRT"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DEPT_AUTHRT"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_DEPT_AUTHRT"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_DEPT_AUTHRT"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DEPT_AUTHRT"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_부서권한기본 기본키2
CREATE UNIQUE INDEX "PK_TB_PP_M_DEPT_AUTHRT"
	ON "TB_PP_M_DEPT_AUTHRT"
	( -- 대국민포털_부서권한기본
		"dept_no" ASC NULLS LAST, -- 부서번호
		"authrt_cd" ASC NULLS LAST -- 권한코드
	);

-- 대국민포털_부서권한기본 기본키2
COMMENT ON INDEX "PK_TB_PP_M_DEPT_AUTHRT" IS '대국민포털_부서권한기본 기본키2';

-- 대국민포털_부서권한기본
ALTER TABLE "TB_PP_M_DEPT_AUTHRT"
	ADD CONSTRAINT "PK_TB_PP_M_DEPT_AUTHRT"
		-- 대국민포털_부서권한기본 기본키2
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_DEPT_AUTHRT"
	NOT DEFERRABLE;

-- 대국민포털_부서권한기본 기본키2
COMMENT ON CONSTRAINT "PK_TB_PP_M_DEPT_AUTHRT" ON "TB_PP_M_DEPT_AUTHRT" IS '대국민포털_부서권한기본 기본키2';

-- 대국민포털_약관법령기본
CREATE TABLE "TB_PP_M_TRMS_STT"
(
	"trms_stt_sn"        NUMERIC(10,0) NOT NULL, -- 약관법령일련번호
	"trms_stt_cd"        CHAR(20)      NOT NULL, -- 약관법령코드
	"trms_stt_aplcn_day" CHAR(8)       NOT NULL, -- 약관법령적용일
	"trms_stt_end_day"   CHAR(8)       NULL,     -- 약관법령종료일
	"trms_stt_cn"        VARCHAR(4000) NULL,     -- 약관법령내용
	"atch_file_id"       VARCHAR(20)   NULL,     -- 첨부파일아이디
	"wrtr_dept_nm"       VARCHAR(40)   NULL,     -- 작성자부서명
	"mdfr_dept_nm"       VARCHAR(40)   NULL,     -- 수정자부서명
	"rgtr_id"            VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"             TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"       VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"            VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"           TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id"     VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_약관법령기본
COMMENT ON TABLE "TB_PP_M_TRMS_STT" IS '대국민포털_약관법령기본';

-- 약관법령일련번호
COMMENT ON COLUMN "TB_PP_M_TRMS_STT"."trms_stt_sn" IS '약관법령일련번호';

-- 약관법령코드
COMMENT ON COLUMN "TB_PP_M_TRMS_STT"."trms_stt_cd" IS '약관법령코드';

-- 약관법령적용일
COMMENT ON COLUMN "TB_PP_M_TRMS_STT"."trms_stt_aplcn_day" IS '약관법령적용일';

-- 약관법령종료일
COMMENT ON COLUMN "TB_PP_M_TRMS_STT"."trms_stt_end_day" IS '약관법령종료일';

-- 약관법령내용
COMMENT ON COLUMN "TB_PP_M_TRMS_STT"."trms_stt_cn" IS '약관법령내용';

-- 첨부파일아이디
COMMENT ON COLUMN "TB_PP_M_TRMS_STT"."atch_file_id" IS '첨부파일아이디';

-- 작성자부서명
COMMENT ON COLUMN "TB_PP_M_TRMS_STT"."wrtr_dept_nm" IS '작성자부서명';

-- 수정자부서명
COMMENT ON COLUMN "TB_PP_M_TRMS_STT"."mdfr_dept_nm" IS '수정자부서명';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_TRMS_STT"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_TRMS_STT"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_TRMS_STT"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_TRMS_STT"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_TRMS_STT"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_TRMS_STT"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_약관법령기본 기본키2
CREATE UNIQUE INDEX "PK_TB_PP_M_TRMS_STT"
	ON "TB_PP_M_TRMS_STT"
	( -- 대국민포털_약관법령기본
		"trms_stt_sn" ASC NULLS LAST -- 약관법령일련번호
	);

-- 대국민포털_약관법령기본 기본키2
COMMENT ON INDEX "PK_TB_PP_M_TRMS_STT" IS '대국민포털_약관법령기본 기본키2';

-- 대국민포털_약관법령기본
ALTER TABLE "TB_PP_M_TRMS_STT"
	ADD CONSTRAINT "PK_TB_PP_M_TRMS_STT"
		-- 대국민포털_약관법령기본 기본키2
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_TRMS_STT"
	NOT DEFERRABLE;

-- 대국민포털_약관법령기본 기본키2
COMMENT ON CONSTRAINT "PK_TB_PP_M_TRMS_STT" ON "TB_PP_M_TRMS_STT" IS '대국민포털_약관법령기본 기본키2';

-- 대국민포털_업무코드기본
CREATE TABLE "TB_PP_M_TASK_CD"
(
	"task_cd"        CHAR(20)      NOT NULL, -- 업무코드
	"task_cd_nm"     VARCHAR(200)  NULL,     -- 업무코드명
	"up_task_cd"     VARCHAR(20)   NULL,     -- 상위업무코드
	"task_cd_vl"     VARCHAR(100)  NULL,     -- 업무코드값
	"task_cd_expln"  VARCHAR(4000) NULL,     -- 업무코드설명
	"use_yn"         CHAR(1)       NOT NULL, -- 사용여부
	"rgtr_id"        VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"         TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"   VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"        VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"       TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id" VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_업무코드기본
COMMENT ON TABLE "TB_PP_M_TASK_CD" IS '대국민포털_업무코드기본';

-- 업무코드
COMMENT ON COLUMN "TB_PP_M_TASK_CD"."task_cd" IS '업무코드';

-- 업무코드명
COMMENT ON COLUMN "TB_PP_M_TASK_CD"."task_cd_nm" IS '업무코드명';

-- 상위업무코드
COMMENT ON COLUMN "TB_PP_M_TASK_CD"."up_task_cd" IS '상위업무코드';

-- 업무코드값
COMMENT ON COLUMN "TB_PP_M_TASK_CD"."task_cd_vl" IS '업무코드값';

-- 업무코드설명
COMMENT ON COLUMN "TB_PP_M_TASK_CD"."task_cd_expln" IS '업무코드설명';

-- 사용여부
COMMENT ON COLUMN "TB_PP_M_TASK_CD"."use_yn" IS '사용여부';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_TASK_CD"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_TASK_CD"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_TASK_CD"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_TASK_CD"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_TASK_CD"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_TASK_CD"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_업무코드기본 기본키2
CREATE UNIQUE INDEX "PK_TB_PP_M_TASK_CD"
	ON "TB_PP_M_TASK_CD"
	( -- 대국민포털_업무코드기본
		"task_cd" ASC NULLS LAST -- 업무코드
	);

-- 대국민포털_업무코드기본 기본키2
COMMENT ON INDEX "PK_TB_PP_M_TASK_CD" IS '대국민포털_업무코드기본 기본키2';

-- 대국민포털_업무코드기본
ALTER TABLE "TB_PP_M_TASK_CD"
	ADD CONSTRAINT "PK_TB_PP_M_TASK_CD"
		-- 대국민포털_업무코드기본 기본키2
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_TASK_CD"
	NOT DEFERRABLE;

-- 대국민포털_업무코드기본 기본키2
COMMENT ON CONSTRAINT "PK_TB_PP_M_TASK_CD" ON "TB_PP_M_TASK_CD" IS '대국민포털_업무코드기본 기본키2';

-- 대국민포털_역할기본
CREATE TABLE "TB_PP_M_ROLE"
(
	"role_cd"        VARCHAR(20)   NOT NULL, -- 역할코드
	"role_nm"        VARCHAR(40)   NULL,     -- 역할명
	"role_type"      VARCHAR(20)   NULL,     -- 역할유형
	"role_expln_cn"  VARCHAR(4000) NULL,     -- 역할설명내용
	"use_yn"         CHAR(1)       NOT NULL, -- 사용여부
	"wrtr_dept_nm"   VARCHAR(40)   NULL,     -- 작성자부서명
	"mdfr_dept_nm"   VARCHAR(40)   NULL,     -- 수정자부서명
	"rgtr_id"        VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"         TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"   VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"        VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"       TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id" VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_역할기본
COMMENT ON TABLE "TB_PP_M_ROLE" IS '대국민포털_역할기본';

-- 역할코드
COMMENT ON COLUMN "TB_PP_M_ROLE"."role_cd" IS '역할코드';

-- 역할명
COMMENT ON COLUMN "TB_PP_M_ROLE"."role_nm" IS '역할명';

-- 역할유형
COMMENT ON COLUMN "TB_PP_M_ROLE"."role_type" IS '역할유형';

-- 역할설명내용
COMMENT ON COLUMN "TB_PP_M_ROLE"."role_expln_cn" IS '역할설명내용';

-- 사용여부
COMMENT ON COLUMN "TB_PP_M_ROLE"."use_yn" IS '사용여부';

-- 작성자부서명
COMMENT ON COLUMN "TB_PP_M_ROLE"."wrtr_dept_nm" IS '작성자부서명';

-- 수정자부서명
COMMENT ON COLUMN "TB_PP_M_ROLE"."mdfr_dept_nm" IS '수정자부서명';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_ROLE"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_ROLE"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_ROLE"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_ROLE"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_ROLE"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_ROLE"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_역할기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_ROLE"
	ON "TB_PP_M_ROLE"
	( -- 대국민포털_역할기본
		"role_cd" ASC NULLS LAST -- 역할코드
	);

-- 대국민포털_역할기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_ROLE" IS '대국민포털_역할기본 기본키';

-- 대국민포털_역할기본
ALTER TABLE "TB_PP_M_ROLE"
	ADD CONSTRAINT "PK_TB_PP_M_ROLE"
		-- 대국민포털_역할기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_ROLE"
	NOT DEFERRABLE;

-- 대국민포털_역할기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_ROLE" ON "TB_PP_M_ROLE" IS '대국민포털_역할기본 기본키';

-- 대국민포털_전문가권한기본
CREATE TABLE "TB_PP_M_EXPRT_AUTHRT"
(
	"mbr_no"            VARCHAR(10)   NOT NULL, -- 회원번호
	"authrt_cd"         CHAR(20)      NOT NULL, -- 권한코드
	"use_yn"            CHAR(1)       NOT NULL, -- 사용여부
	"exprt_authrt_rmrk" VARCHAR(4000) NULL,     -- 전문가권한비고
	"rgtr_id"           VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"            TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"      VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"           VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"          TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id"    VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_전문가권한기본
COMMENT ON TABLE "TB_PP_M_EXPRT_AUTHRT" IS '대국민포털_전문가권한기본';

-- 회원번호
COMMENT ON COLUMN "TB_PP_M_EXPRT_AUTHRT"."mbr_no" IS '회원번호';

-- 권한코드
COMMENT ON COLUMN "TB_PP_M_EXPRT_AUTHRT"."authrt_cd" IS '권한코드';

-- 사용여부
COMMENT ON COLUMN "TB_PP_M_EXPRT_AUTHRT"."use_yn" IS '사용여부';

-- 전문가권한비고
COMMENT ON COLUMN "TB_PP_M_EXPRT_AUTHRT"."exprt_authrt_rmrk" IS '전문가권한비고';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_EXPRT_AUTHRT"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_EXPRT_AUTHRT"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_EXPRT_AUTHRT"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_EXPRT_AUTHRT"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_EXPRT_AUTHRT"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_EXPRT_AUTHRT"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_전문가권한기본 기본키2
CREATE UNIQUE INDEX "PK_TB_PP_M_EXPRT_AUTHRT"
	ON "TB_PP_M_EXPRT_AUTHRT"
	( -- 대국민포털_전문가권한기본
		"mbr_no" ASC NULLS LAST, -- 회원번호
		"authrt_cd" ASC NULLS LAST -- 권한코드
	);

-- 대국민포털_전문가권한기본 기본키2
COMMENT ON INDEX "PK_TB_PP_M_EXPRT_AUTHRT" IS '대국민포털_전문가권한기본 기본키2';

-- 대국민포털_전문가권한기본
ALTER TABLE "TB_PP_M_EXPRT_AUTHRT"
	ADD CONSTRAINT "PK_TB_PP_M_EXPRT_AUTHRT"
		-- 대국민포털_전문가권한기본 기본키2
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_EXPRT_AUTHRT"
	NOT DEFERRABLE;

-- 대국민포털_전문가권한기본 기본키2
COMMENT ON CONSTRAINT "PK_TB_PP_M_EXPRT_AUTHRT" ON "TB_PP_M_EXPRT_AUTHRT" IS '대국민포털_전문가권한기본 기본키2';

-- 대국민포털_전문가업무기본
CREATE TABLE "TB_PP_M_EXPRT_TASK"
(
	"exprt_task_sn"      NUMERIC(10,0) NOT NULL, -- 전문가업무일련번호
	"mbr_no"             VARCHAR(10)   NULL,     -- 회원번호
	"task_se_cd"         VARCHAR(10)   NOT NULL, -- 업무구분코드
	"brno"               CHAR(10)      NULL,     -- 사업자등록번호
	"exprt_aprv_stts_yn" CHAR(1)       NOT NULL, -- 전문가승인상태여부
	"aprv_prcs_ymd"      TIMESTAMP     NULL,     -- 승인처리일자
	"rjct_rsn"           VARCHAR(4000) NULL,     -- 반려사유
	"wrtr_dept_nm"       VARCHAR(40)   NULL,     -- 작성자부서명
	"mdfr_dept_nm"       VARCHAR(40)   NULL,     -- 수정자부서명
	"rgtr_id"            VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"             TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"       VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"            VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"           TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id"     VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_전문가업무기본
COMMENT ON TABLE "TB_PP_M_EXPRT_TASK" IS '대국민포털_전문가업무기본';

-- 전문가업무일련번호
COMMENT ON COLUMN "TB_PP_M_EXPRT_TASK"."exprt_task_sn" IS '전문가업무일련번호';

-- 회원번호
COMMENT ON COLUMN "TB_PP_M_EXPRT_TASK"."mbr_no" IS '회원번호';

-- 업무구분코드
COMMENT ON COLUMN "TB_PP_M_EXPRT_TASK"."task_se_cd" IS '업무구분코드';

-- 사업자등록번호
COMMENT ON COLUMN "TB_PP_M_EXPRT_TASK"."brno" IS '사업자등록번호';

-- 전문가승인상태여부
COMMENT ON COLUMN "TB_PP_M_EXPRT_TASK"."exprt_aprv_stts_yn" IS '전문가승인상태여부';

-- 승인처리일자
COMMENT ON COLUMN "TB_PP_M_EXPRT_TASK"."aprv_prcs_ymd" IS '승인처리일자';

-- 반려사유
COMMENT ON COLUMN "TB_PP_M_EXPRT_TASK"."rjct_rsn" IS '반려사유';

-- 작성자부서명
COMMENT ON COLUMN "TB_PP_M_EXPRT_TASK"."wrtr_dept_nm" IS '작성자부서명';

-- 수정자부서명
COMMENT ON COLUMN "TB_PP_M_EXPRT_TASK"."mdfr_dept_nm" IS '수정자부서명';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_EXPRT_TASK"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_EXPRT_TASK"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_EXPRT_TASK"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_EXPRT_TASK"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_EXPRT_TASK"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_EXPRT_TASK"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_전문가업무기본 기본키2
CREATE UNIQUE INDEX "PK_TB_PP_M_EXPRT_TASK"
	ON "TB_PP_M_EXPRT_TASK"
	( -- 대국민포털_전문가업무기본
		"exprt_task_sn" ASC NULLS LAST -- 전문가업무일련번호
	);

-- 대국민포털_전문가업무기본 기본키2
COMMENT ON INDEX "PK_TB_PP_M_EXPRT_TASK" IS '대국민포털_전문가업무기본 기본키2';

-- 대국민포털_전문가업무기본
ALTER TABLE "TB_PP_M_EXPRT_TASK"
	ADD CONSTRAINT "PK_TB_PP_M_EXPRT_TASK"
		-- 대국민포털_전문가업무기본 기본키2
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_EXPRT_TASK"
	NOT DEFERRABLE;

-- 대국민포털_전문가업무기본 기본키2
COMMENT ON CONSTRAINT "PK_TB_PP_M_EXPRT_TASK" ON "TB_PP_M_EXPRT_TASK" IS '대국민포털_전문가업무기본 기본키2';

-- 공통_첨부파일기본
CREATE TABLE "TB_CA_M_ATCH"
(
	"atch_file_sn"      NUMERIC(22,0) NOT NULL, -- 첨부파일일련번호
	"menu_sn"           NUMERIC(22,0) NOT NULL, -- 메뉴일련번호
	"menu_type"         VARCHAR(20)   NULL,     -- 메뉴유형
	"atch_file_uld_hr"  TIMESTAMP     NOT NULL, -- 첨부파일업로드시간
	"atch_file_use_yn"  CHAR(1)       NOT NULL, -- 첨부파일사용여부
	"atch_file_path"    VARCHAR(1000) NULL,     -- 첨부파일경로
	"atch_file_nm"      VARCHAR(100)  NULL,     -- 첨부파일명
	"atch_file_extn_nm" VARCHAR(5)    NULL,     -- 첨부파일확장자명
	"atch_file_cn"      VARCHAR(1000) NULL,     -- 첨부파일내용
	"atch_file_sz"      NUMERIC(14,0) NULL,     -- 첨부파일크기
	"rgtr_id"           VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"            TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"      VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"           VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"          TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id"    VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 공통_첨부파일기본
COMMENT ON TABLE "TB_CA_M_ATCH" IS '공통_첨부파일기본';

-- 첨부파일일련번호
COMMENT ON COLUMN "TB_CA_M_ATCH"."atch_file_sn" IS '첨부파일일련번호';

-- 메뉴일련번호
COMMENT ON COLUMN "TB_CA_M_ATCH"."menu_sn" IS '메뉴일련번호';

-- 메뉴유형
COMMENT ON COLUMN "TB_CA_M_ATCH"."menu_type" IS '메뉴유형';

-- 첨부파일업로드시간
COMMENT ON COLUMN "TB_CA_M_ATCH"."atch_file_uld_hr" IS '첨부파일업로드시간';

-- 첨부파일사용여부
COMMENT ON COLUMN "TB_CA_M_ATCH"."atch_file_use_yn" IS '첨부파일사용여부';

-- 첨부파일경로
COMMENT ON COLUMN "TB_CA_M_ATCH"."atch_file_path" IS '첨부파일경로';

-- 첨부파일명
COMMENT ON COLUMN "TB_CA_M_ATCH"."atch_file_nm" IS '첨부파일명';

-- 첨부파일확장자명
COMMENT ON COLUMN "TB_CA_M_ATCH"."atch_file_extn_nm" IS '첨부파일확장자명';

-- 첨부파일내용
COMMENT ON COLUMN "TB_CA_M_ATCH"."atch_file_cn" IS '첨부파일내용';

-- 첨부파일크기
COMMENT ON COLUMN "TB_CA_M_ATCH"."atch_file_sz" IS '첨부파일크기';

-- 등록자아이디
COMMENT ON COLUMN "TB_CA_M_ATCH"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_CA_M_ATCH"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_CA_M_ATCH"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_CA_M_ATCH"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_CA_M_ATCH"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_CA_M_ATCH"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 공통_첨부파일기본 기본키
CREATE UNIQUE INDEX "PK_TB_CA_M_ATCH"
	ON "TB_CA_M_ATCH"
	( -- 공통_첨부파일기본
		"atch_file_sn" ASC NULLS LAST -- 첨부파일일련번호
	);

-- 공통_첨부파일기본 기본키
COMMENT ON INDEX "PK_TB_CA_M_ATCH" IS '공통_첨부파일기본 기본키';

-- 공통_첨부파일기본
ALTER TABLE "TB_CA_M_ATCH"
	ADD CONSTRAINT "PK_TB_CA_M_ATCH"
		-- 공통_첨부파일기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_CA_M_ATCH"
	NOT DEFERRABLE;

-- 공통_첨부파일기본 기본키
COMMENT ON CONSTRAINT "PK_TB_CA_M_ATCH" ON "TB_CA_M_ATCH" IS '공통_첨부파일기본 기본키';

-- 대국민포털_양식기본
CREATE TABLE "TB_PP_M_FORM"
(
	"form_sn"        NUMERIC(22,0) NOT NULL, -- 양식일련번호
	"task_cd"        CHAR(20)      NULL,     -- 업무코드
	"form_nm"        VARCHAR(40)   NULL,     -- 양식명
	"form_path"      VARCHAR(4000) NULL,     -- 양식경로
	"use_yn"         CHAR(1)       NOT NULL, -- 사용여부
	"rgtr_id"        VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"         TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"   VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"        VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"       TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id" VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_양식기본
COMMENT ON TABLE "TB_PP_M_FORM" IS '대국민포털_양식기본';

-- 양식일련번호
COMMENT ON COLUMN "TB_PP_M_FORM"."form_sn" IS '양식일련번호';

-- 업무코드
COMMENT ON COLUMN "TB_PP_M_FORM"."task_cd" IS '업무코드';

-- 양식명
COMMENT ON COLUMN "TB_PP_M_FORM"."form_nm" IS '양식명';

-- 양식경로
COMMENT ON COLUMN "TB_PP_M_FORM"."form_path" IS '양식경로';

-- 사용여부
COMMENT ON COLUMN "TB_PP_M_FORM"."use_yn" IS '사용여부';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_FORM"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_FORM"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_FORM"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_FORM"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_FORM"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_FORM"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_양식기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_FORM"
	ON "TB_PP_M_FORM"
	( -- 대국민포털_양식기본
		"form_sn" ASC NULLS LAST -- 양식일련번호
	);

-- 대국민포털_양식기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_FORM" IS '대국민포털_양식기본 기본키';

-- 대국민포털_양식기본
ALTER TABLE "TB_PP_M_FORM"
	ADD CONSTRAINT "PK_TB_PP_M_FORM"
		-- 대국민포털_양식기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_FORM"
	NOT DEFERRABLE;

-- 대국민포털_양식기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_FORM" ON "TB_PP_M_FORM" IS '대국민포털_양식기본 기본키';

-- 대국민포털_팝업기본
CREATE TABLE "TB_PP_M_POPUP"
(
	"popup_sn"            NUMERIC(10,0) NOT NULL, -- 팝업일련번호
	"popup_ttl"           VARCHAR(100)  NULL,     -- 팝업제목
	"popup_pstg_bgng_ymd" TIMESTAMP     NOT NULL, -- 팝업게시시작일자
	"popup_pstg_end_ymd"  TIMESTAMP     NOT NULL, -- 팝업게시종료일자
	"popup_lnkg_addr"     VARCHAR(4000) NULL,     -- 팝업연결주소
	"popup_seq"           NUMERIC(10,0) NOT NULL, -- 팝업순서
	"popup_pstg_yn"       CHAR(1)       NOT NULL, -- 팝업게시여부
	"popup_npag_yn"       CHAR(1)       NOT NULL, -- 팝업새창여부
	"popup_expln"         VARCHAR(4000) NULL,     -- 팝업설명
	"atch_file_id"        VARCHAR(20)   NULL,     -- 첨부파일아이디
	"wrtr_dept_nm"        VARCHAR(40)   NULL,     -- 작성자부서명
	"mdfr_dept_nm"        VARCHAR(40)   NULL,     -- 수정자부서명
	"rgtr_id"             VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"              TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"        VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"             VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"            TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id"      VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_팝업기본
COMMENT ON TABLE "TB_PP_M_POPUP" IS '대국민포털_팝업기본';

-- 팝업일련번호
COMMENT ON COLUMN "TB_PP_M_POPUP"."popup_sn" IS '팝업일련번호';

-- 팝업제목
COMMENT ON COLUMN "TB_PP_M_POPUP"."popup_ttl" IS '팝업제목';

-- 팝업게시시작일자
COMMENT ON COLUMN "TB_PP_M_POPUP"."popup_pstg_bgng_ymd" IS '팝업게시시작일자';

-- 팝업게시종료일자
COMMENT ON COLUMN "TB_PP_M_POPUP"."popup_pstg_end_ymd" IS '팝업게시종료일자';

-- 팝업연결주소
COMMENT ON COLUMN "TB_PP_M_POPUP"."popup_lnkg_addr" IS '팝업연결주소';

-- 팝업순서
COMMENT ON COLUMN "TB_PP_M_POPUP"."popup_seq" IS '팝업순서';

-- 팝업게시여부
COMMENT ON COLUMN "TB_PP_M_POPUP"."popup_pstg_yn" IS '팝업게시여부';

-- 팝업새창여부
COMMENT ON COLUMN "TB_PP_M_POPUP"."popup_npag_yn" IS '팝업새창여부';

-- 팝업설명
COMMENT ON COLUMN "TB_PP_M_POPUP"."popup_expln" IS '팝업설명';

-- 첨부파일아이디
COMMENT ON COLUMN "TB_PP_M_POPUP"."atch_file_id" IS '첨부파일아이디';

-- 작성자부서명
COMMENT ON COLUMN "TB_PP_M_POPUP"."wrtr_dept_nm" IS '작성자부서명';

-- 수정자부서명
COMMENT ON COLUMN "TB_PP_M_POPUP"."mdfr_dept_nm" IS '수정자부서명';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_POPUP"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_POPUP"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_POPUP"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_POPUP"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_POPUP"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_POPUP"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_팝업기본 기본키2
CREATE UNIQUE INDEX "PK_TB_PP_M_POPUP"
	ON "TB_PP_M_POPUP"
	( -- 대국민포털_팝업기본
		"popup_sn" ASC NULLS LAST -- 팝업일련번호
	);

-- 대국민포털_팝업기본 기본키2
COMMENT ON INDEX "PK_TB_PP_M_POPUP" IS '대국민포털_팝업기본 기본키2';

-- 대국민포털_팝업기본
ALTER TABLE "TB_PP_M_POPUP"
	ADD CONSTRAINT "PK_TB_PP_M_POPUP"
		-- 대국민포털_팝업기본 기본키2
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_POPUP"
	NOT DEFERRABLE;

-- 대국민포털_팝업기본 기본키2
COMMENT ON CONSTRAINT "PK_TB_PP_M_POPUP" ON "TB_PP_M_POPUP" IS '대국민포털_팝업기본 기본키2';

-- 대국민포털_회원정보기본
CREATE TABLE "TB_PP_M_MBR_INFO"
(
	"mbr_no"             VARCHAR(10)   NOT NULL, -- 회원번호
	"mbr_id"             VARCHAR(20)   NOT NULL, -- 회원아이디
	"mbr_encpt_flnm"     VARCHAR(20)   NOT NULL, -- 회원암호화성명
	"mbr_encpt_eml"      VARCHAR(100)  NULL,     -- 회원암호화이메일
	"mbr_enpswd"         VARCHAR(100)  NOT NULL, -- 회원암호화비밀번호
	"mbr_encpt_telno"    VARCHAR(11)   NULL,     -- 회원암호화전화번호
	"mbr_type_cd"        CHAR(1)       NOT NULL, -- 회원유형코드
	"mbr_join_stts"      CHAR(1)       NOT NULL, -- 회원가입상태
	"mbr_join_dt"        TIMESTAMP     NOT NULL, -- 회원가입일시
	"mbr_whdwl_rsn"      VARCHAR(4000) NULL,     -- 회원탈퇴사유
	"mbr_whdwl_dt"       TIMESTAMP     NULL,     -- 회원탈퇴일시
	"bfr_enpswd"         VARCHAR(100)  NULL,     -- 이전암호화비밀번호
	"pswd_chg_dt"        TIMESTAMP     NULL,     -- 비밀번호변경일시
	"pswd_err_nmtm"      NUMERIC(2,0)  NULL,     -- 비밀번호오류횟수
	"link_info_idntf_id" VARCHAR(100)  NULL,     -- 연계정보식별아이디
	"cert_token"         VARCHAR(40)   NULL,     -- 인증토큰
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
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."mbr_encpt_flnm" IS '회원암호화성명';

-- 회원암호화이메일
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."mbr_encpt_eml" IS '회원암호화이메일';

-- 회원암호화비밀번호
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."mbr_enpswd" IS '회원암호화비밀번호';

-- 회원암호화전화번호
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."mbr_encpt_telno" IS '회원암호화전화번호';

-- 회원유형코드
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."mbr_type_cd" IS '회원유형코드';

-- 회원가입상태
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."mbr_join_stts" IS '회원가입상태';

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
COMMENT ON COLUMN "TB_PP_M_MBR_INFO"."cert_token" IS '인증토큰';

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

-- 대국민포털_게시판권한기본
CREATE TABLE "TB_PP_M_BBS_AUTHRT"
(
	"bbs_id"         VARCHAR(20)  NOT NULL, -- 게시판아이디
	"authrt_cd"      CHAR(20)     NOT NULL, -- 권한코드
	"rgtr_id"        VARCHAR(20)  NULL,     -- 등록자아이디
	"reg_dt"         TIMESTAMP    NULL,     -- 등록일시
	"reg_prgrm_id"   VARCHAR(100) NULL,     -- 등록프로그램아이디
	"mdfr_id"        VARCHAR(20)  NULL,     -- 수정자아이디
	"mdfcn_dt"       TIMESTAMP    NULL,     -- 수정일시
	"mdfcn_prgrm_id" VARCHAR(100) NULL      -- 수정프로그램아이디
);

-- 대국민포털_게시판권한기본
COMMENT ON TABLE "TB_PP_M_BBS_AUTHRT" IS '대국민포털_게시판권한기본';

-- 게시판아이디
COMMENT ON COLUMN "TB_PP_M_BBS_AUTHRT"."bbs_id" IS '게시판아이디';

-- 권한코드
COMMENT ON COLUMN "TB_PP_M_BBS_AUTHRT"."authrt_cd" IS '권한코드';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_BBS_AUTHRT"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_BBS_AUTHRT"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_BBS_AUTHRT"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_BBS_AUTHRT"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_BBS_AUTHRT"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_BBS_AUTHRT"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_게시판권한기본 기본키2
CREATE UNIQUE INDEX "PK_TB_PP_M_BBS_AUTHRT"
	ON "TB_PP_M_BBS_AUTHRT"
	( -- 대국민포털_게시판권한기본
		"bbs_id" ASC NULLS LAST, -- 게시판아이디
		"authrt_cd" ASC NULLS LAST -- 권한코드
	);

-- 대국민포털_게시판권한기본 기본키2
COMMENT ON INDEX "PK_TB_PP_M_BBS_AUTHRT" IS '대국민포털_게시판권한기본 기본키2';

-- 대국민포털_게시판권한기본
ALTER TABLE "TB_PP_M_BBS_AUTHRT"
	ADD CONSTRAINT "PK_TB_PP_M_BBS_AUTHRT"
		-- 대국민포털_게시판권한기본 기본키2
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_BBS_AUTHRT"
	NOT DEFERRABLE;

-- 대국민포털_게시판권한기본 기본키2
COMMENT ON CONSTRAINT "PK_TB_PP_M_BBS_AUTHRT" ON "TB_PP_M_BBS_AUTHRT" IS '대국민포털_게시판권한기본 기본키2';

-- 대국민포털_법정대리인정보기본
CREATE TABLE "TB_PP_M_STTY_AGT_INFO"
(
	"mbr_no"               VARCHAR(10)  NOT NULL, -- 회원번호
	"stty_agt_nm"          VARCHAR(20)  NULL,     -- 법정대리인명
	"stty_agt_encpt_telno" VARCHAR(11)  NULL,     -- 법정대리인암호화전화번호
	"stty_agt_rel"         VARCHAR(20)  NULL,     -- 법정대리인관계
	"link_info_idntf_id"   VARCHAR(100) NULL,     -- 연계정보식별아이디
	"cert_token"           VARCHAR(40)  NULL,     -- 인증토큰
	"rgtr_id"              VARCHAR(20)  NULL,     -- 등록자아이디
	"reg_dt"               TIMESTAMP    NULL,     -- 등록일시
	"reg_prgrm_id"         VARCHAR(100) NULL,     -- 등록프로그램아이디
	"mdfr_id"              VARCHAR(20)  NULL,     -- 수정자아이디
	"mdfcn_dt"             TIMESTAMP    NULL,     -- 수정일시
	"mdfcn_prgrm_id"       VARCHAR(100) NULL      -- 수정프로그램아이디
);

-- 대국민포털_법정대리인정보기본
COMMENT ON TABLE "TB_PP_M_STTY_AGT_INFO" IS '대국민포털_법정대리인정보기본';

-- 회원번호
COMMENT ON COLUMN "TB_PP_M_STTY_AGT_INFO"."mbr_no" IS '회원번호';

-- 법정대리인명
COMMENT ON COLUMN "TB_PP_M_STTY_AGT_INFO"."stty_agt_nm" IS '법정대리인명';

-- 법정대리인암호화전화번호
COMMENT ON COLUMN "TB_PP_M_STTY_AGT_INFO"."stty_agt_encpt_telno" IS '법정대리인암호화전화번호';

-- 법정대리인관계
COMMENT ON COLUMN "TB_PP_M_STTY_AGT_INFO"."stty_agt_rel" IS '법정대리인관계';

-- 연계정보식별아이디
COMMENT ON COLUMN "TB_PP_M_STTY_AGT_INFO"."link_info_idntf_id" IS '연계정보식별아이디';

-- 인증토큰
COMMENT ON COLUMN "TB_PP_M_STTY_AGT_INFO"."cert_token" IS '인증토큰';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_STTY_AGT_INFO"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_STTY_AGT_INFO"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_STTY_AGT_INFO"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_STTY_AGT_INFO"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_STTY_AGT_INFO"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_STTY_AGT_INFO"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_법정대리인정보기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_STTY_AGT_INFO"
	ON "TB_PP_M_STTY_AGT_INFO"
	( -- 대국민포털_법정대리인정보기본
		"mbr_no" ASC NULLS LAST -- 회원번호
	);

-- 대국민포털_법정대리인정보기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_STTY_AGT_INFO" IS '대국민포털_법정대리인정보기본 기본키';

-- 대국민포털_법정대리인정보기본
ALTER TABLE "TB_PP_M_STTY_AGT_INFO"
	ADD CONSTRAINT "PK_TB_PP_M_STTY_AGT_INFO"
		-- 대국민포털_법정대리인정보기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_STTY_AGT_INFO"
	NOT DEFERRABLE;

-- 대국민포털_법정대리인정보기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_STTY_AGT_INFO" ON "TB_PP_M_STTY_AGT_INFO" IS '대국민포털_법정대리인정보기본 기본키';

-- 대국민포털_전문가정보기본
CREATE TABLE "TB_PP_M_EXPRT_INFO"
(
	"mbr_no"                    VARCHAR(10)   NOT NULL, -- 회원번호
	"brno"                      CHAR(10)      NOT NULL, -- 사업자등록번호
	"exprt_ogdp_inst_encpt_eml" VARCHAR(40)   NULL,     -- 전문가소속기관암호화이메일
	"exprt_hdof_yn"             CHAR(1)       NOT NULL, -- 전문가재직여부
	"exprt_aprv_stts_yn"        CHAR(1)       NOT NULL, -- 전문가승인상태여부
	"aprv_prcs_ymd"             TIMESTAMP     NULL,     -- 승인처리일자
	"rjct_rsn"                  VARCHAR(4000) NULL,     -- 반려사유
	"atch_file_id"              VARCHAR(20)   NULL,     -- 첨부파일아이디
	"rgtr_id"                   VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"                    TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"              VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"                   VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"                  TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id"            VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_전문가정보기본
COMMENT ON TABLE "TB_PP_M_EXPRT_INFO" IS '대국민포털_전문가정보기본';

-- 회원번호
COMMENT ON COLUMN "TB_PP_M_EXPRT_INFO"."mbr_no" IS '회원번호';

-- 사업자등록번호
COMMENT ON COLUMN "TB_PP_M_EXPRT_INFO"."brno" IS '사업자등록번호';

-- 전문가소속기관암호화이메일
COMMENT ON COLUMN "TB_PP_M_EXPRT_INFO"."exprt_ogdp_inst_encpt_eml" IS '전문가소속기관암호화이메일';

-- 전문가재직여부
COMMENT ON COLUMN "TB_PP_M_EXPRT_INFO"."exprt_hdof_yn" IS '전문가재직여부';

-- 전문가승인상태여부
COMMENT ON COLUMN "TB_PP_M_EXPRT_INFO"."exprt_aprv_stts_yn" IS '전문가승인상태여부';

-- 승인처리일자
COMMENT ON COLUMN "TB_PP_M_EXPRT_INFO"."aprv_prcs_ymd" IS '승인처리일자';

-- 반려사유
COMMENT ON COLUMN "TB_PP_M_EXPRT_INFO"."rjct_rsn" IS '반려사유';

-- 첨부파일아이디
COMMENT ON COLUMN "TB_PP_M_EXPRT_INFO"."atch_file_id" IS '첨부파일아이디';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_EXPRT_INFO"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_EXPRT_INFO"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_EXPRT_INFO"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_EXPRT_INFO"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_EXPRT_INFO"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_EXPRT_INFO"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_전문가정보기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_EXPRT_INFO"
	ON "TB_PP_M_EXPRT_INFO"
	( -- 대국민포털_전문가정보기본
		"mbr_no" ASC NULLS LAST -- 회원번호
	);

-- 대국민포털_전문가정보기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_EXPRT_INFO" IS '대국민포털_전문가정보기본 기본키';

-- 대국민포털_전문가정보기본
ALTER TABLE "TB_PP_M_EXPRT_INFO"
	ADD CONSTRAINT "PK_TB_PP_M_EXPRT_INFO"
		-- 대국민포털_전문가정보기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_EXPRT_INFO"
	NOT DEFERRABLE;

-- 대국민포털_전문가정보기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_EXPRT_INFO" ON "TB_PP_M_EXPRT_INFO" IS '대국민포털_전문가정보기본 기본키';

-- 공통_공통코드기본
CREATE TABLE "TB_CA_M_COM_CD"
(
	"com_cd" CHAR(12) NOT NULL -- 공통코드
);

-- 공통_공통코드기본
COMMENT ON TABLE "TB_CA_M_COM_CD" IS '공통_공통코드기본';

-- 공통코드
COMMENT ON COLUMN "TB_CA_M_COM_CD"."com_cd" IS '공통코드';

-- 공통_공통코드기본 기본키
CREATE UNIQUE INDEX "PK_TB_CA_M_COM_CD"
	ON "TB_CA_M_COM_CD"
	( -- 공통_공통코드기본
		"com_cd" ASC NULLS LAST -- 공통코드
	);

-- 공통_공통코드기본 기본키
COMMENT ON INDEX "PK_TB_CA_M_COM_CD" IS '공통_공통코드기본 기본키';

-- 공통_공통코드기본
ALTER TABLE "TB_CA_M_COM_CD"
	ADD CONSTRAINT "PK_TB_CA_M_COM_CD"
		-- 공통_공통코드기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_CA_M_COM_CD"
	NOT DEFERRABLE;

-- 공통_공통코드기본 기본키
COMMENT ON CONSTRAINT "PK_TB_CA_M_COM_CD" ON "TB_CA_M_COM_CD" IS '공통_공통코드기본 기본키';

-- 대국민포털_기관정보기본
CREATE TABLE "TB_PP_M_INST"
(
	"brno"           CHAR(10)     NOT NULL, -- 사업자등록번호
	"inst_nm"        VARCHAR(200) NOT NULL, -- 기관명
	"del_yn"         CHAR(1)      NOT NULL, -- 삭제여부
	"rgtr_id"        VARCHAR(20)  NULL,     -- 등록자아이디
	"reg_dt"         TIMESTAMP    NULL,     -- 등록일시
	"reg_prgrm_id"   VARCHAR(100) NULL,     -- 등록프로그램아이디
	"mdfr_id"        VARCHAR(20)  NULL,     -- 수정자아이디
	"mdfcn_dt"       TIMESTAMP    NULL,     -- 수정일시
	"mdfcn_prgrm_id" VARCHAR(100) NULL      -- 수정프로그램아이디
);

-- 대국민포털_기관정보기본
COMMENT ON TABLE "TB_PP_M_INST" IS '대국민포털_기관정보기본';

-- 사업자등록번호
COMMENT ON COLUMN "TB_PP_M_INST"."brno" IS '사업자등록번호';

-- 기관명
COMMENT ON COLUMN "TB_PP_M_INST"."inst_nm" IS '기관명';

-- 삭제여부
COMMENT ON COLUMN "TB_PP_M_INST"."del_yn" IS '삭제여부';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_INST"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_INST"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_INST"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_INST"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_INST"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_INST"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_기관정보기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_INST"
	ON "TB_PP_M_INST"
	( -- 대국민포털_기관정보기본
		"brno" ASC NULLS LAST -- 사업자등록번호
	);

-- 대국민포털_기관정보기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_INST" IS '대국민포털_기관정보기본 기본키';

-- 대국민포털_기관정보기본
ALTER TABLE "TB_PP_M_INST"
	ADD CONSTRAINT "PK_TB_PP_M_INST"
		-- 대국민포털_기관정보기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_INST"
	NOT DEFERRABLE;

-- 대국민포털_기관정보기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_INST" ON "TB_PP_M_INST" IS '대국민포털_기관정보기본 기본키';

-- 대국민포털_만족도조사기본
CREATE TABLE "TB_PP_M_DGSTFN_EXMN"
(
	"dgstfn_exmn_sn" NUMERIC(22,0) NOT NULL, -- 만족도조사일련번호
	"menu_sn"        NUMERIC(10,0) NOT NULL, -- 메뉴일련번호
	"dgstfn_scr"     NUMERIC(2,0)  NOT NULL, -- 만족도점수
	"rgtr_id"        VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"         TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"   VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"        VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"       TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id" VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_만족도조사기본
COMMENT ON TABLE "TB_PP_M_DGSTFN_EXMN" IS '대국민포털_만족도조사기본';

-- 만족도조사일련번호
COMMENT ON COLUMN "TB_PP_M_DGSTFN_EXMN"."dgstfn_exmn_sn" IS '만족도조사일련번호';

-- 메뉴일련번호
COMMENT ON COLUMN "TB_PP_M_DGSTFN_EXMN"."menu_sn" IS '메뉴일련번호';

-- 만족도점수
COMMENT ON COLUMN "TB_PP_M_DGSTFN_EXMN"."dgstfn_scr" IS '만족도점수';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_DGSTFN_EXMN"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_DGSTFN_EXMN"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DGSTFN_EXMN"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_DGSTFN_EXMN"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_DGSTFN_EXMN"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DGSTFN_EXMN"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_만족도조사기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_DGSTFN_EXMN"
	ON "TB_PP_M_DGSTFN_EXMN"
	( -- 대국민포털_만족도조사기본
		"dgstfn_exmn_sn" ASC NULLS LAST -- 만족도조사일련번호
	);

-- 대국민포털_만족도조사기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_DGSTFN_EXMN" IS '대국민포털_만족도조사기본 기본키';

-- 대국민포털_만족도조사기본
ALTER TABLE "TB_PP_M_DGSTFN_EXMN"
	ADD CONSTRAINT "PK_TB_PP_M_DGSTFN_EXMN"
		-- 대국민포털_만족도조사기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_DGSTFN_EXMN"
	NOT DEFERRABLE;

-- 대국민포털_만족도조사기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_DGSTFN_EXMN" ON "TB_PP_M_DGSTFN_EXMN" IS '대국민포털_만족도조사기본 기본키';

-- 대국민포털_의견제안
CREATE TABLE "TB_PP_M_OPNN"
(
	"opnn_sn"          NUMERIC(22,0) NOT NULL, -- 의견일련번호
	"wrtr_encpt_flnm"  VARCHAR(20)   NULL,     -- 작성자암호화성명
	"wrtr_encpt_telno" VARCHAR(11)   NULL,     -- 작성자암호화전화번호
	"wrt_se_cd"        CHAR(3)       NOT NULL, -- 작성구분코드
	"pbpt_cn"          VARCHAR(4000) NULL,     -- 문제점내용
	"dmnd_mttr"        VARCHAR(4000) NULL,     -- 요청사항
	"dmnd_mttr_dtl_cn" TEXT          NULL,     -- 요청사항상세내용
	"ref_mttr"         VARCHAR(4000) NULL,     -- 참고사항
	"atch_file_sn"     VARCHAR(50)   NULL,     -- 첨부파일일련번호
	"rgtr_id"          VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"           TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"     VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"          VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"         TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id"   VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_의견제안
COMMENT ON TABLE "TB_PP_M_OPNN" IS '대국민포털_의견제안';

-- 의견일련번호
COMMENT ON COLUMN "TB_PP_M_OPNN"."opnn_sn" IS '의견일련번호';

-- 작성자암호화성명
COMMENT ON COLUMN "TB_PP_M_OPNN"."wrtr_encpt_flnm" IS '작성자암호화성명';

-- 작성자암호화전화번호
COMMENT ON COLUMN "TB_PP_M_OPNN"."wrtr_encpt_telno" IS '작성자암호화전화번호';

-- 작성구분코드
COMMENT ON COLUMN "TB_PP_M_OPNN"."wrt_se_cd" IS '작성구분코드';

-- 문제점내용
COMMENT ON COLUMN "TB_PP_M_OPNN"."pbpt_cn" IS '문제점내용';

-- 요청사항
COMMENT ON COLUMN "TB_PP_M_OPNN"."dmnd_mttr" IS '요청사항';

-- 요청사항상세내용
COMMENT ON COLUMN "TB_PP_M_OPNN"."dmnd_mttr_dtl_cn" IS '요청사항상세내용';

-- 참고사항
COMMENT ON COLUMN "TB_PP_M_OPNN"."ref_mttr" IS '참고사항';

-- 첨부파일일련번호
COMMENT ON COLUMN "TB_PP_M_OPNN"."atch_file_sn" IS '첨부파일일련번호';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_OPNN"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_OPNN"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_OPNN"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_OPNN"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_OPNN"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_OPNN"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_의견제안 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_OPNN"
	ON "TB_PP_M_OPNN"
	( -- 대국민포털_의견제안
		"opnn_sn" ASC NULLS LAST -- 의견일련번호
	);

-- 대국민포털_의견제안 기본키
COMMENT ON INDEX "PK_TB_PP_M_OPNN" IS '대국민포털_의견제안 기본키';

-- 대국민포털_의견제안
ALTER TABLE "TB_PP_M_OPNN"
	ADD CONSTRAINT "PK_TB_PP_M_OPNN"
		-- 대국민포털_의견제안 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_OPNN"
	NOT DEFERRABLE;

-- 대국민포털_의견제안 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_OPNN" ON "TB_PP_M_OPNN" IS '대국민포털_의견제안 기본키';

-- 대국민포털_개인정보접근이력기본
CREATE TABLE "TB_PP_M_PRVC_ACS_HSTRY"
(
	"prvc_acs_sn"    NUMERIC(10,0) NOT NULL, -- 개인정보접근일련번호
	"inq_crtr_ymd"   TIMESTAMP     NOT NULL, -- 조회기준일자
	"srvc_cd"        CHAR(2)       NOT NULL, -- 서비스코드
	"menu_sn"        VARCHAR(20)   NULL,     -- 메뉴일련번호
	"methods_nm"     VARCHAR(100)  NOT NULL, -- 메소드명
	"inq_info"       VARCHAR(4000) NOT NULL, -- 조회정보
	"rqstr_id"       VARCHAR(20)   NOT NULL, -- 요청자아이디
	"rqstr_ip_addr"  VARCHAR(100)  NULL,     -- 요청자IP주소
	"inq_cnd"        VARCHAR(4000) NOT NULL, -- 조회조건
	"inq_telgm"      TEXT          NOT NULL, -- 조회전문
	"rgtr_id"        VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"         TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"   VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"        VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"       TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id" VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_개인정보접근이력기본
COMMENT ON TABLE "TB_PP_M_PRVC_ACS_HSTRY" IS '대국민포털_개인정보접근이력기본';

-- 개인정보접근일련번호
COMMENT ON COLUMN "TB_PP_M_PRVC_ACS_HSTRY"."prvc_acs_sn" IS '개인정보접근일련번호';

-- 조회기준일자
COMMENT ON COLUMN "TB_PP_M_PRVC_ACS_HSTRY"."inq_crtr_ymd" IS '조회기준일자';

-- 서비스코드
COMMENT ON COLUMN "TB_PP_M_PRVC_ACS_HSTRY"."srvc_cd" IS '서비스코드';

-- 메뉴일련번호
COMMENT ON COLUMN "TB_PP_M_PRVC_ACS_HSTRY"."menu_sn" IS '메뉴일련번호';

-- 메소드명
COMMENT ON COLUMN "TB_PP_M_PRVC_ACS_HSTRY"."methods_nm" IS '메소드명';

-- 조회정보
COMMENT ON COLUMN "TB_PP_M_PRVC_ACS_HSTRY"."inq_info" IS '조회정보';

-- 요청자아이디
COMMENT ON COLUMN "TB_PP_M_PRVC_ACS_HSTRY"."rqstr_id" IS '요청자아이디';

-- 요청자IP주소
COMMENT ON COLUMN "TB_PP_M_PRVC_ACS_HSTRY"."rqstr_ip_addr" IS '요청자IP주소';

-- 조회조건
COMMENT ON COLUMN "TB_PP_M_PRVC_ACS_HSTRY"."inq_cnd" IS '조회조건';

-- 조회전문
COMMENT ON COLUMN "TB_PP_M_PRVC_ACS_HSTRY"."inq_telgm" IS '조회전문';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_PRVC_ACS_HSTRY"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_PRVC_ACS_HSTRY"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_PRVC_ACS_HSTRY"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_PRVC_ACS_HSTRY"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_PRVC_ACS_HSTRY"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_PRVC_ACS_HSTRY"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_개인정보접근이력기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_PRVC_ACS_HSTRY"
	ON "TB_PP_M_PRVC_ACS_HSTRY"
	( -- 대국민포털_개인정보접근이력기본
		"prvc_acs_sn" ASC NULLS LAST -- 개인정보접근일련번호
	);

-- 대국민포털_개인정보접근이력기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_PRVC_ACS_HSTRY" IS '대국민포털_개인정보접근이력기본 기본키';

-- 대국민포털_개인정보접근이력기본
ALTER TABLE "TB_PP_M_PRVC_ACS_HSTRY"
	ADD CONSTRAINT "PK_TB_PP_M_PRVC_ACS_HSTRY"
		-- 대국민포털_개인정보접근이력기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_PRVC_ACS_HSTRY"
	NOT DEFERRABLE;

-- 대국민포털_개인정보접근이력기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_PRVC_ACS_HSTRY" ON "TB_PP_M_PRVC_ACS_HSTRY" IS '대국민포털_개인정보접근이력기본 기본키';

-- 대국민포털_권한변경이력기본
CREATE TABLE "TB_PP_M_AUTHRT_CHG_HSTRY"
(
	"authrt_chg_sn"   NUMERIC(10,0) NOT NULL, -- 권한변경일련번호
	"authrt_cd"       CHAR(20)      NOT NULL, -- 권한코드
	"menu_sn"         VARCHAR(20)   NULL,     -- 메뉴일련번호
	"aplcn_trgt_type" CHAR(5)       NOT NULL, -- 적용대상유형
	"chg_role_list"   VARCHAR(4000) NULL,     -- 변경역할목록
	"aplcn_trgt"      VARCHAR(20)   NULL,     -- 적용대상
	"chg_type"        CHAR(5)       NOT NULL, -- 변경유형
	"rmrk"            VARCHAR(4000) NOT NULL, -- 비고
	"rgtr_id"         VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"          TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"    VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"         VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"        TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id"  VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_권한변경이력기본
COMMENT ON TABLE "TB_PP_M_AUTHRT_CHG_HSTRY" IS '대국민포털_권한변경이력기본';

-- 권한변경일련번호
COMMENT ON COLUMN "TB_PP_M_AUTHRT_CHG_HSTRY"."authrt_chg_sn" IS '권한변경일련번호';

-- 권한코드
COMMENT ON COLUMN "TB_PP_M_AUTHRT_CHG_HSTRY"."authrt_cd" IS '권한코드';

-- 메뉴일련번호
COMMENT ON COLUMN "TB_PP_M_AUTHRT_CHG_HSTRY"."menu_sn" IS '메뉴일련번호';

-- 적용대상유형
COMMENT ON COLUMN "TB_PP_M_AUTHRT_CHG_HSTRY"."aplcn_trgt_type" IS '적용대상유형';

-- 변경역할목록
COMMENT ON COLUMN "TB_PP_M_AUTHRT_CHG_HSTRY"."chg_role_list" IS '변경역할목록';

-- 적용대상
COMMENT ON COLUMN "TB_PP_M_AUTHRT_CHG_HSTRY"."aplcn_trgt" IS '적용대상';

-- 변경유형
COMMENT ON COLUMN "TB_PP_M_AUTHRT_CHG_HSTRY"."chg_type" IS '변경유형';

-- 비고
COMMENT ON COLUMN "TB_PP_M_AUTHRT_CHG_HSTRY"."rmrk" IS '비고';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_AUTHRT_CHG_HSTRY"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_AUTHRT_CHG_HSTRY"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_AUTHRT_CHG_HSTRY"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_AUTHRT_CHG_HSTRY"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_AUTHRT_CHG_HSTRY"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_AUTHRT_CHG_HSTRY"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_권한변경이력기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_AUTHRT_CHG_HSTRY"
	ON "TB_PP_M_AUTHRT_CHG_HSTRY"
	( -- 대국민포털_권한변경이력기본
		"authrt_chg_sn" ASC NULLS LAST -- 권한변경일련번호
	);

-- 대국민포털_권한변경이력기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_AUTHRT_CHG_HSTRY" IS '대국민포털_권한변경이력기본 기본키';

-- 대국민포털_권한변경이력기본
ALTER TABLE "TB_PP_M_AUTHRT_CHG_HSTRY"
	ADD CONSTRAINT "PK_TB_PP_M_AUTHRT_CHG_HSTRY"
		-- 대국민포털_권한변경이력기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_AUTHRT_CHG_HSTRY"
	NOT DEFERRABLE;

-- 대국민포털_권한변경이력기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_AUTHRT_CHG_HSTRY" ON "TB_PP_M_AUTHRT_CHG_HSTRY" IS '대국민포털_권한변경이력기본 기본키';

-- 대국민포털_도메인기본
CREATE TABLE "TB_PP_M_DMN"
(
	"com_std_dmn_nm"       VARCHAR(40)   NOT NULL, -- 공통표준도메인명
	"sys_se_nm"            VARCHAR(40)   NULL,     -- 시스템구분명
	"artcl_sou_nm"         VARCHAR(40)   NULL,     -- 항목원천명
	"com_std_dmn_clsf_nm"  VARCHAR(40)   NULL,     -- 공통표준도메인분류명
	"com_std_dmn_group_nm" VARCHAR(40)   NULL,     -- 공통표준도메인그룹명
	"com_std_dmn_expln"    VARCHAR(4000) NULL,     -- 공통표준도메인설명
	"dmn_type_nm"          VARCHAR(40)   NULL,     -- 도메인유형명
	"dmn_len"              NUMERIC(10,0) NULL,     -- 도메인길이
	"dmn_dcpt_len"         NUMERIC(10,0) NULL,     -- 도메인소수점길이
	"rgtr_id"              VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"               TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"         VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"              VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"             TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id"       VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_도메인기본
COMMENT ON TABLE "TB_PP_M_DMN" IS '대국민포털_도메인기본';

-- 공통표준도메인명
COMMENT ON COLUMN "TB_PP_M_DMN"."com_std_dmn_nm" IS '공통표준도메인명';

-- 시스템구분명
COMMENT ON COLUMN "TB_PP_M_DMN"."sys_se_nm" IS '시스템구분명';

-- 항목원천명
COMMENT ON COLUMN "TB_PP_M_DMN"."artcl_sou_nm" IS '항목원천명';

-- 공통표준도메인분류명
COMMENT ON COLUMN "TB_PP_M_DMN"."com_std_dmn_clsf_nm" IS '공통표준도메인분류명';

-- 공통표준도메인그룹명
COMMENT ON COLUMN "TB_PP_M_DMN"."com_std_dmn_group_nm" IS '공통표준도메인그룹명';

-- 공통표준도메인설명
COMMENT ON COLUMN "TB_PP_M_DMN"."com_std_dmn_expln" IS '공통표준도메인설명';

-- 도메인유형명
COMMENT ON COLUMN "TB_PP_M_DMN"."dmn_type_nm" IS '도메인유형명';

-- 도메인길이
COMMENT ON COLUMN "TB_PP_M_DMN"."dmn_len" IS '도메인길이';

-- 도메인소수점길이
COMMENT ON COLUMN "TB_PP_M_DMN"."dmn_dcpt_len" IS '도메인소수점길이';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_DMN"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_DMN"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DMN"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_DMN"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_DMN"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_DMN"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_도메인기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_DMN"
	ON "TB_PP_M_DMN"
	( -- 대국민포털_도메인기본
		"com_std_dmn_nm" ASC NULLS LAST -- 공통표준도메인명
	);

-- 대국민포털_도메인기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_DMN" IS '대국민포털_도메인기본 기본키';

-- 대국민포털_도메인기본
ALTER TABLE "TB_PP_M_DMN"
	ADD CONSTRAINT "PK_TB_PP_M_DMN"
		-- 대국민포털_도메인기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_DMN"
	NOT DEFERRABLE;

-- 대국민포털_도메인기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_DMN" ON "TB_PP_M_DMN" IS '대국민포털_도메인기본 기본키';

-- 대국민포털_단어기본
CREATE TABLE "TB_PP_M_WORD"
(
	"com_std_word_nm"          VARCHAR(40)   NOT NULL, -- 공통표준단어명
	"sys_se_nm"                VARCHAR(40)   NULL,     -- 시스템구분명
	"artcl_sou_nm"             VARCHAR(40)   NULL,     -- 항목원천명
	"com_std_word_eng_abbr_nm" VARCHAR(40)   NULL,     -- 공통표준단어영문약어명
	"com_std_word_eng_nm"      VARCHAR(40)   NULL,     -- 공통표준단어영문명
	"com_std_word_expln"       VARCHAR(4000) NULL,     -- 공통표준단어설명
	"frm_word_yn"              CHAR(1)       NULL,     -- 형식단어여부
	"rgtr_id"                  VARCHAR(20)   NULL,     -- 등록자아이디
	"reg_dt"                   TIMESTAMP     NULL,     -- 등록일시
	"reg_prgrm_id"             VARCHAR(100)  NULL,     -- 등록프로그램아이디
	"mdfr_id"                  VARCHAR(20)   NULL,     -- 수정자아이디
	"mdfcn_dt"                 TIMESTAMP     NULL,     -- 수정일시
	"mdfcn_prgrm_id"           VARCHAR(100)  NULL      -- 수정프로그램아이디
);

-- 대국민포털_단어기본
COMMENT ON TABLE "TB_PP_M_WORD" IS '대국민포털_단어기본';

-- 공통표준단어명
COMMENT ON COLUMN "TB_PP_M_WORD"."com_std_word_nm" IS '공통표준단어명';

-- 시스템구분명
COMMENT ON COLUMN "TB_PP_M_WORD"."sys_se_nm" IS '시스템구분명';

-- 항목원천명
COMMENT ON COLUMN "TB_PP_M_WORD"."artcl_sou_nm" IS '항목원천명';

-- 공통표준단어영문약어명
COMMENT ON COLUMN "TB_PP_M_WORD"."com_std_word_eng_abbr_nm" IS '공통표준단어영문약어명';

-- 공통표준단어영문명
COMMENT ON COLUMN "TB_PP_M_WORD"."com_std_word_eng_nm" IS '공통표준단어영문명';

-- 공통표준단어설명
COMMENT ON COLUMN "TB_PP_M_WORD"."com_std_word_expln" IS '공통표준단어설명';

-- 형식단어여부
COMMENT ON COLUMN "TB_PP_M_WORD"."frm_word_yn" IS '형식단어여부';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_WORD"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_WORD"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_WORD"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_WORD"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_WORD"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_WORD"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_단어기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_WORD"
	ON "TB_PP_M_WORD"
	( -- 대국민포털_단어기본
		"com_std_word_nm" ASC NULLS LAST -- 공통표준단어명
	);

-- 대국민포털_단어기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_WORD" IS '대국민포털_단어기본 기본키';

-- 대국민포털_단어기본
ALTER TABLE "TB_PP_M_WORD"
	ADD CONSTRAINT "PK_TB_PP_M_WORD"
		-- 대국민포털_단어기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_WORD"
	NOT DEFERRABLE;

-- 대국민포털_단어기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_WORD" ON "TB_PP_M_WORD" IS '대국민포털_단어기본 기본키';

-- 대국민포털_용어기본
CREATE TABLE "TB_PP_M_TRM"
(
	"std_trm_nm"          VARCHAR(40)  NOT NULL, -- 표준용어명
	"sys_se_nm"           VARCHAR(40)  NULL,     -- 시스템구분명
	"artcl_sou_nm"        VARCHAR(40)  NULL,     -- 항목원천명
	"std_trm_eng_abbr_nm" VARCHAR(40)  NULL,     -- 표준용어영문약어명
	"atrb_type_nm"        VARCHAR(40)  NULL,     -- 속성유형명
	"com_std_dmn_nm"      VARCHAR(40)  NULL,     -- 공통표준도메인명
	"rgtr_id"             VARCHAR(20)  NULL,     -- 등록자아이디
	"reg_dt"              TIMESTAMP    NULL,     -- 등록일시
	"reg_prgrm_id"        VARCHAR(100) NULL,     -- 등록프로그램아이디
	"mdfr_id"             VARCHAR(20)  NULL,     -- 수정자아이디
	"mdfcn_dt"            TIMESTAMP    NULL,     -- 수정일시
	"mdfcn_prgrm_id"      VARCHAR(100) NULL      -- 수정프로그램아이디
);

-- 대국민포털_용어기본
COMMENT ON TABLE "TB_PP_M_TRM" IS '대국민포털_용어기본';

-- 표준용어명
COMMENT ON COLUMN "TB_PP_M_TRM"."std_trm_nm" IS '표준용어명';

-- 시스템구분명
COMMENT ON COLUMN "TB_PP_M_TRM"."sys_se_nm" IS '시스템구분명';

-- 항목원천명
COMMENT ON COLUMN "TB_PP_M_TRM"."artcl_sou_nm" IS '항목원천명';

-- 표준용어영문약어명
COMMENT ON COLUMN "TB_PP_M_TRM"."std_trm_eng_abbr_nm" IS '표준용어영문약어명';

-- 속성유형명
COMMENT ON COLUMN "TB_PP_M_TRM"."atrb_type_nm" IS '속성유형명';

-- 공통표준도메인명
COMMENT ON COLUMN "TB_PP_M_TRM"."com_std_dmn_nm" IS '공통표준도메인명';

-- 등록자아이디
COMMENT ON COLUMN "TB_PP_M_TRM"."rgtr_id" IS '등록자아이디';

-- 등록일시
COMMENT ON COLUMN "TB_PP_M_TRM"."reg_dt" IS '등록일시';

-- 등록프로그램아이디
COMMENT ON COLUMN "TB_PP_M_TRM"."reg_prgrm_id" IS '등록프로그램아이디';

-- 수정자아이디
COMMENT ON COLUMN "TB_PP_M_TRM"."mdfr_id" IS '수정자아이디';

-- 수정일시
COMMENT ON COLUMN "TB_PP_M_TRM"."mdfcn_dt" IS '수정일시';

-- 수정프로그램아이디
COMMENT ON COLUMN "TB_PP_M_TRM"."mdfcn_prgrm_id" IS '수정프로그램아이디';

-- 대국민포털_용어기본 기본키
CREATE UNIQUE INDEX "PK_TB_PP_M_TRM"
	ON "TB_PP_M_TRM"
	( -- 대국민포털_용어기본
		"std_trm_nm" ASC NULLS LAST -- 표준용어명
	);

-- 대국민포털_용어기본 기본키
COMMENT ON INDEX "PK_TB_PP_M_TRM" IS '대국민포털_용어기본 기본키';

-- 대국민포털_용어기본
ALTER TABLE "TB_PP_M_TRM"
	ADD CONSTRAINT "PK_TB_PP_M_TRM"
		-- 대국민포털_용어기본 기본키
	PRIMARY KEY
	USING INDEX "PK_TB_PP_M_TRM"
	NOT DEFERRABLE;

-- 대국민포털_용어기본 기본키
COMMENT ON CONSTRAINT "PK_TB_PP_M_TRM" ON "TB_PP_M_TRM" IS '대국민포털_용어기본 기본키';

-- 대국민포털_게시물기본
ALTER TABLE "TB_PP_M_PST"
	ADD CONSTRAINT "FK_TB_PP_M_BBS_TO_TB_PP_M_PST"
	 -- 대국민포털_게시판기본 -> 대국민포털_게시물기본
		FOREIGN KEY (
			"bbs_id" -- 게시판아이디
		)
		REFERENCES "TB_PP_M_BBS" ( -- 대국민포털_게시판기본
			"bbs_id" -- 게시판아이디
		);

-- 대국민포털_게시판기본 -> 대국민포털_게시물기본
COMMENT ON CONSTRAINT "FK_TB_PP_M_BBS_TO_TB_PP_M_PST" ON "TB_PP_M_PST" IS '대국민포털_게시판기본 -> 대국민포털_게시물기본';

-- 대국민포털_관리자정보기본
ALTER TABLE "TB_PP_M_EMP"
	ADD CONSTRAINT "FK_TB_PP_M_ORGCHT_TO_TB_PP_M_EMP"
	 -- 대국민포털_KIDS조직도기본 -> 대국민포털_관리자정보기본
		FOREIGN KEY (
			"emp_no" -- 직원번호
		)
		REFERENCES "TB_PP_M_ORGCHT" ( -- 대국민포털_KIDS조직도기본
			"emp_no" -- 직원번호
		);

-- 대국민포털_KIDS조직도기본 -> 대국민포털_관리자정보기본
COMMENT ON CONSTRAINT "FK_TB_PP_M_ORGCHT_TO_TB_PP_M_EMP" ON "TB_PP_M_EMP" IS '대국민포털_KIDS조직도기본 -> 대국민포털_관리자정보기본';

-- 대국민포털_권한메뉴기본
ALTER TABLE "TB_PP_M_AUTHRT_MENU"
	ADD CONSTRAINT "FK_TB_PP_M_AUTHRT_TO_TB_PP_M_AUTHRT_MENU"
	 -- 대국민포털_권한기본 -> 대국민포털_권한메뉴기본
		FOREIGN KEY (
			"authrt_cd" -- 권한코드
		)
		REFERENCES "TB_PP_M_AUTHRT" ( -- 대국민포털_권한기본
			"authrt_cd" -- 권한코드
		);

-- 대국민포털_권한기본 -> 대국민포털_권한메뉴기본
COMMENT ON CONSTRAINT "FK_TB_PP_M_AUTHRT_TO_TB_PP_M_AUTHRT_MENU" ON "TB_PP_M_AUTHRT_MENU" IS '대국민포털_권한기본 -> 대국민포털_권한메뉴기본';

-- 대국민포털_권한메뉴기본
ALTER TABLE "TB_PP_M_AUTHRT_MENU"
	ADD CONSTRAINT "FK_TB_PP_M_MENU_TO_TB_PP_M_AUTHRT_MENU"
	 -- 대국민포털_메뉴기본 -> 대국민포털_권한메뉴기본
		FOREIGN KEY (
			"menu_sn" -- 메뉴일련번호
		)
		REFERENCES "TB_PP_M_MENU" ( -- 대국민포털_메뉴기본
			"menu_sn" -- 메뉴일련번호
		);

-- 대국민포털_메뉴기본 -> 대국민포털_권한메뉴기본
COMMENT ON CONSTRAINT "FK_TB_PP_M_MENU_TO_TB_PP_M_AUTHRT_MENU" ON "TB_PP_M_AUTHRT_MENU" IS '대국민포털_메뉴기본 -> 대국민포털_권한메뉴기본';

-- 대국민포털_기관업무기본
ALTER TABLE "TB_PP_M_INST_TASK"
	ADD CONSTRAINT "FK_TB_PP_M_INST_TO_TB_PP_M_INST_TASK"
	 -- 대국민포털_기관정보기본 -> 대국민포털_기관업무기본
		FOREIGN KEY (
			"brno" -- 사업자등록번호
		)
		REFERENCES "TB_PP_M_INST" ( -- 대국민포털_기관정보기본
			"brno" -- 사업자등록번호
		);

-- 대국민포털_기관정보기본 -> 대국민포털_기관업무기본
COMMENT ON CONSTRAINT "FK_TB_PP_M_INST_TO_TB_PP_M_INST_TASK" ON "TB_PP_M_INST_TASK" IS '대국민포털_기관정보기본 -> 대국민포털_기관업무기본';

-- 대국민포털_담당자권한기본
ALTER TABLE "TB_PP_M_PIC_AUTHRT"
	ADD CONSTRAINT "FK_TB_PP_M_AUTHRT_TO_TB_PP_M_PIC_AUTHRT"
	 -- 대국민포털_권한기본 -> 대국민포털_담당자권한기본2
		FOREIGN KEY (
			"authrt_cd" -- 권한코드
		)
		REFERENCES "TB_PP_M_AUTHRT" ( -- 대국민포털_권한기본
			"authrt_cd" -- 권한코드
		);

-- 대국민포털_권한기본 -> 대국민포털_담당자권한기본2
COMMENT ON CONSTRAINT "FK_TB_PP_M_AUTHRT_TO_TB_PP_M_PIC_AUTHRT" ON "TB_PP_M_PIC_AUTHRT" IS '대국민포털_권한기본 -> 대국민포털_담당자권한기본2';

-- 대국민포털_담당자권한기본
ALTER TABLE "TB_PP_M_PIC_AUTHRT"
	ADD CONSTRAINT "FK_TB_PP_M_ORGCHT_TO_TB_PP_M_PIC_AUTHRT"
	 -- 대국민포털_KIDS조직도기본 -> 대국민포털_담당자권한기본
		FOREIGN KEY (
			"emp_no" -- 직원번호
		)
		REFERENCES "TB_PP_M_ORGCHT" ( -- 대국민포털_KIDS조직도기본
			"emp_no" -- 직원번호
		);

-- 대국민포털_KIDS조직도기본 -> 대국민포털_담당자권한기본
COMMENT ON CONSTRAINT "FK_TB_PP_M_ORGCHT_TO_TB_PP_M_PIC_AUTHRT" ON "TB_PP_M_PIC_AUTHRT" IS '대국민포털_KIDS조직도기본 -> 대국민포털_담당자권한기본';

-- 대국민포털_댓글기본
ALTER TABLE "TB_PP_M_CMNT"
	ADD CONSTRAINT "FK_TB_PP_M_PST_TO_TB_PP_M_CMNT"
	 -- 대국민포털_게시물기본 -> 대국민포털_댓글기본
		FOREIGN KEY (
			"pst_sn" -- 게시물일련번호
		)
		REFERENCES "TB_PP_M_PST" ( -- 대국민포털_게시물기본
			"pst_sn" -- 게시물일련번호
		);

-- 대국민포털_게시물기본 -> 대국민포털_댓글기본
COMMENT ON CONSTRAINT "FK_TB_PP_M_PST_TO_TB_PP_M_CMNT" ON "TB_PP_M_CMNT" IS '대국민포털_게시물기본 -> 대국민포털_댓글기본';

-- 대국민포털_메뉴상세
ALTER TABLE "TB_PP_D_MENU"
	ADD CONSTRAINT "FK_TB_PP_M_MENU_TO_TB_PP_D_MENU"
	 -- 대국민포털_메뉴기본 -> 대국민포털_메뉴상세
		FOREIGN KEY (
			"menu_sn" -- 메뉴일련번호
		)
		REFERENCES "TB_PP_M_MENU" ( -- 대국민포털_메뉴기본
			"menu_sn" -- 메뉴일련번호
		);

-- 대국민포털_메뉴기본 -> 대국민포털_메뉴상세
COMMENT ON CONSTRAINT "FK_TB_PP_M_MENU_TO_TB_PP_D_MENU" ON "TB_PP_D_MENU" IS '대국민포털_메뉴기본 -> 대국민포털_메뉴상세';

-- 대국민포털_권한메뉴롤기본
ALTER TABLE "TB_PP_M_AUTHRT_MENU_ROLE"
	ADD CONSTRAINT "FK_TB_PP_M_ROLE_TO_TB_PP_M_AUTHRT_MENU_ROLE"
	 -- 대국민포털_역할기본 -> 대국민포털_권한메뉴롤기본
		FOREIGN KEY (
			"role_cd" -- 역할코드
		)
		REFERENCES "TB_PP_M_ROLE" ( -- 대국민포털_역할기본
			"role_cd" -- 역할코드
		);

-- 대국민포털_역할기본 -> 대국민포털_권한메뉴롤기본
COMMENT ON CONSTRAINT "FK_TB_PP_M_ROLE_TO_TB_PP_M_AUTHRT_MENU_ROLE" ON "TB_PP_M_AUTHRT_MENU_ROLE" IS '대국민포털_역할기본 -> 대국민포털_권한메뉴롤기본';

-- 대국민포털_권한메뉴롤기본
ALTER TABLE "TB_PP_M_AUTHRT_MENU_ROLE"
	ADD CONSTRAINT "FK_TB_PP_M_AUTHRT_MENU_TO_TB_PP_M_AUTHRT_MENU_ROLE"
	 -- 대국민포털_권한메뉴기본 -> 대국민포털_권한메뉴롤기본
		FOREIGN KEY (
			"authrt_cd", -- 권한코드
			"menu_sn"    -- 메뉴일련번호
		)
		REFERENCES "TB_PP_M_AUTHRT_MENU" ( -- 대국민포털_권한메뉴기본
			"authrt_cd", -- 권한코드
			"menu_sn"    -- 메뉴일련번호
		);

-- 대국민포털_권한메뉴기본 -> 대국민포털_권한메뉴롤기본
COMMENT ON CONSTRAINT "FK_TB_PP_M_AUTHRT_MENU_TO_TB_PP_M_AUTHRT_MENU_ROLE" ON "TB_PP_M_AUTHRT_MENU_ROLE" IS '대국민포털_권한메뉴기본 -> 대국민포털_권한메뉴롤기본';

-- 대국민포털_부서권한기본
ALTER TABLE "TB_PP_M_DEPT_AUTHRT"
	ADD CONSTRAINT "FK_TB_PP_M_AUTHRT_TO_TB_PP_M_DEPT_AUTHRT"
	 -- 대국민포털_권한기본 -> 대국민포털_부서권한기본2
		FOREIGN KEY (
			"authrt_cd" -- 권한코드
		)
		REFERENCES "TB_PP_M_AUTHRT" ( -- 대국민포털_권한기본
			"authrt_cd" -- 권한코드
		);

-- 대국민포털_권한기본 -> 대국민포털_부서권한기본2
COMMENT ON CONSTRAINT "FK_TB_PP_M_AUTHRT_TO_TB_PP_M_DEPT_AUTHRT" ON "TB_PP_M_DEPT_AUTHRT" IS '대국민포털_권한기본 -> 대국민포털_부서권한기본2';

-- 대국민포털_약관법령기본
ALTER TABLE "TB_PP_M_TRMS_STT"
	ADD CONSTRAINT "FK_TB_PP_M_TASK_CD_TO_TB_PP_M_TRMS_STT"
	 -- 대국민포털_업무코드기본 -> 대국민포털_약관법령기본2
		FOREIGN KEY (
			"trms_stt_cd" -- 약관법령코드
		)
		REFERENCES "TB_PP_M_TASK_CD" ( -- 대국민포털_업무코드기본
			"task_cd" -- 업무코드
		);

-- 대국민포털_업무코드기본 -> 대국민포털_약관법령기본2
COMMENT ON CONSTRAINT "FK_TB_PP_M_TASK_CD_TO_TB_PP_M_TRMS_STT" ON "TB_PP_M_TRMS_STT" IS '대국민포털_업무코드기본 -> 대국민포털_약관법령기본2';

-- 대국민포털_전문가권한기본
ALTER TABLE "TB_PP_M_EXPRT_AUTHRT"
	ADD CONSTRAINT "FK_TB_PP_M_AUTHRT_TO_TB_PP_M_EXPRT_AUTHRT"
	 -- 대국민포털_권한기본 -> 대국민포털_전문가권한기본2
		FOREIGN KEY (
			"authrt_cd" -- 권한코드
		)
		REFERENCES "TB_PP_M_AUTHRT" ( -- 대국민포털_권한기본
			"authrt_cd" -- 권한코드
		);

-- 대국민포털_권한기본 -> 대국민포털_전문가권한기본2
COMMENT ON CONSTRAINT "FK_TB_PP_M_AUTHRT_TO_TB_PP_M_EXPRT_AUTHRT" ON "TB_PP_M_EXPRT_AUTHRT" IS '대국민포털_권한기본 -> 대국민포털_전문가권한기본2';

-- 대국민포털_전문가권한기본
ALTER TABLE "TB_PP_M_EXPRT_AUTHRT"
	ADD CONSTRAINT "FK_TB_PP_M_MBR_INFO_TO_TB_PP_M_EXPRT_AUTHRT"
	 -- 대국민포털_회원정보기본 -> 대국민포털_전문가권한기본
		FOREIGN KEY (
			"mbr_no" -- 회원번호
		)
		REFERENCES "TB_PP_M_MBR_INFO" ( -- 대국민포털_회원정보기본
			"mbr_no" -- 회원번호
		);

-- 대국민포털_회원정보기본 -> 대국민포털_전문가권한기본
COMMENT ON CONSTRAINT "FK_TB_PP_M_MBR_INFO_TO_TB_PP_M_EXPRT_AUTHRT" ON "TB_PP_M_EXPRT_AUTHRT" IS '대국민포털_회원정보기본 -> 대국민포털_전문가권한기본';

-- 대국민포털_전문가업무기본
ALTER TABLE "TB_PP_M_EXPRT_TASK"
	ADD CONSTRAINT "FK_TB_PP_M_EXPRT_INFO_TO_TB_PP_M_EXPRT_TASK"
	 -- 대국민포털_전문가정보기본 -> 대국민포털_전문가업무기본
		FOREIGN KEY (
			"mbr_no" -- 회원번호
		)
		REFERENCES "TB_PP_M_EXPRT_INFO" ( -- 대국민포털_전문가정보기본
			"mbr_no" -- 회원번호
		);

-- 대국민포털_전문가정보기본 -> 대국민포털_전문가업무기본
COMMENT ON CONSTRAINT "FK_TB_PP_M_EXPRT_INFO_TO_TB_PP_M_EXPRT_TASK" ON "TB_PP_M_EXPRT_TASK" IS '대국민포털_전문가정보기본 -> 대국민포털_전문가업무기본';

-- 대국민포털_양식기본
ALTER TABLE "TB_PP_M_FORM"
	ADD CONSTRAINT "FK_TB_PP_M_TASK_CD_TO_TB_PP_M_FORM"
	 -- 대국민포털_업무코드기본 -> 대국민포털_양식기본
		FOREIGN KEY (
			"task_cd" -- 업무코드
		)
		REFERENCES "TB_PP_M_TASK_CD" ( -- 대국민포털_업무코드기본
			"task_cd" -- 업무코드
		);

-- 대국민포털_업무코드기본 -> 대국민포털_양식기본
COMMENT ON CONSTRAINT "FK_TB_PP_M_TASK_CD_TO_TB_PP_M_FORM" ON "TB_PP_M_FORM" IS '대국민포털_업무코드기본 -> 대국민포털_양식기본';

-- 대국민포털_게시판권한기본
ALTER TABLE "TB_PP_M_BBS_AUTHRT"
	ADD CONSTRAINT "FK_TB_PP_M_AUTHRT_TO_TB_PP_M_BBS_AUTHRT"
	 -- 대국민포털_권한기본 -> 대국민포털_게시판권한기본2
		FOREIGN KEY (
			"authrt_cd" -- 권한코드
		)
		REFERENCES "TB_PP_M_AUTHRT" ( -- 대국민포털_권한기본
			"authrt_cd" -- 권한코드
		);

-- 대국민포털_권한기본 -> 대국민포털_게시판권한기본2
COMMENT ON CONSTRAINT "FK_TB_PP_M_AUTHRT_TO_TB_PP_M_BBS_AUTHRT" ON "TB_PP_M_BBS_AUTHRT" IS '대국민포털_권한기본 -> 대국민포털_게시판권한기본2';

-- 대국민포털_게시판권한기본
ALTER TABLE "TB_PP_M_BBS_AUTHRT"
	ADD CONSTRAINT "FK_TB_PP_M_BBS_TO_TB_PP_M_BBS_AUTHRT"
	 -- 대국민포털_게시판기본 -> 대국민포털_게시판권한기본2
		FOREIGN KEY (
			"bbs_id" -- 게시판아이디
		)
		REFERENCES "TB_PP_M_BBS" ( -- 대국민포털_게시판기본
			"bbs_id" -- 게시판아이디
		);

-- 대국민포털_게시판기본 -> 대국민포털_게시판권한기본2
COMMENT ON CONSTRAINT "FK_TB_PP_M_BBS_TO_TB_PP_M_BBS_AUTHRT" ON "TB_PP_M_BBS_AUTHRT" IS '대국민포털_게시판기본 -> 대국민포털_게시판권한기본2';

-- 대국민포털_법정대리인정보기본
ALTER TABLE "TB_PP_M_STTY_AGT_INFO"
	ADD CONSTRAINT "FK_TB_PP_M_MBR_INFO_TO_TB_PP_M_STTY_AGT_INFO"
	 -- 대국민포털_회원정보기본 -> 대국민포털_법정대리인정보기본
		FOREIGN KEY (
			"mbr_no" -- 회원번호
		)
		REFERENCES "TB_PP_M_MBR_INFO" ( -- 대국민포털_회원정보기본
			"mbr_no" -- 회원번호
		);

-- 대국민포털_회원정보기본 -> 대국민포털_법정대리인정보기본
COMMENT ON CONSTRAINT "FK_TB_PP_M_MBR_INFO_TO_TB_PP_M_STTY_AGT_INFO" ON "TB_PP_M_STTY_AGT_INFO" IS '대국민포털_회원정보기본 -> 대국민포털_법정대리인정보기본';

-- 대국민포털_전문가정보기본
ALTER TABLE "TB_PP_M_EXPRT_INFO"
	ADD CONSTRAINT "FK_TB_PP_M_MBR_INFO_TO_TB_PP_M_EXPRT_INFO"
	 -- 대국민포털_회원정보기본 -> 대국민포털_전문가정보기본
		FOREIGN KEY (
			"mbr_no" -- 회원번호
		)
		REFERENCES "TB_PP_M_MBR_INFO" ( -- 대국민포털_회원정보기본
			"mbr_no" -- 회원번호
		);

-- 대국민포털_회원정보기본 -> 대국민포털_전문가정보기본
COMMENT ON CONSTRAINT "FK_TB_PP_M_MBR_INFO_TO_TB_PP_M_EXPRT_INFO" ON "TB_PP_M_EXPRT_INFO" IS '대국민포털_회원정보기본 -> 대국민포털_전문가정보기본';

-- 대국민포털_전문가정보기본
ALTER TABLE "TB_PP_M_EXPRT_INFO"
	ADD CONSTRAINT "FK_TB_PP_M_INST_TO_TB_PP_M_EXPRT_INFO"
	 -- 대국민포털_기관정보기본 -> 대국민포털_전문가정보기본
		FOREIGN KEY (
			"brno" -- 사업자등록번호
		)
		REFERENCES "TB_PP_M_INST" ( -- 대국민포털_기관정보기본
			"brno" -- 사업자등록번호
		);

-- 대국민포털_기관정보기본 -> 대국민포털_전문가정보기본
COMMENT ON CONSTRAINT "FK_TB_PP_M_INST_TO_TB_PP_M_EXPRT_INFO" ON "TB_PP_M_EXPRT_INFO" IS '대국민포털_기관정보기본 -> 대국민포털_전문가정보기본';

-- 대국민포털_만족도조사기본
ALTER TABLE "TB_PP_M_DGSTFN_EXMN"
	ADD CONSTRAINT "FK_TB_PP_M_MENU_TO_TB_PP_M_DGSTFN_EXMN"
	 -- 대국민포털_메뉴기본 -> 대국민포털_만족도조사기본
		FOREIGN KEY (
			"menu_sn" -- 메뉴일련번호
		)
		REFERENCES "TB_PP_M_MENU" ( -- 대국민포털_메뉴기본
			"menu_sn" -- 메뉴일련번호
		);

-- 대국민포털_메뉴기본 -> 대국민포털_만족도조사기본
COMMENT ON CONSTRAINT "FK_TB_PP_M_MENU_TO_TB_PP_M_DGSTFN_EXMN" ON "TB_PP_M_DGSTFN_EXMN" IS '대국민포털_메뉴기본 -> 대국민포털_만족도조사기본';
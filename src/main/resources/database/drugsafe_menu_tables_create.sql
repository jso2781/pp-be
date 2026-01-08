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

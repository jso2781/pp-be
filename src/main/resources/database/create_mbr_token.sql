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
/*
    mbr_no varchar(10) NOT NULL,
    mbr_id varchar(20) NOT NULL,
    mbr_encpt_flnm varchar(20) NOT NULL,
    mbr_encpt_eml varchar(100) NULL,
    mbr_enpswd varchar(100) NOT NULL,
    mbr_encpt_telno varchar(11) NULL,
    mbr_type_cd bpchar(1) NOT NULL,
    mbr_join_stts bpchar(1) NOT NULL,
    mbr_join_dt timestamp NOT NULL,
    mbr_whdwl_rsn varchar(4000) NULL,
    mbr_whdwl_dt timestamp NULL,
    bfr_enpswd varchar(100) NULL,
    pswd_chg_dt timestamp NULL,
    pswd_err_nmtm numeric(2) NULL,
    link_info_idntf_id varchar(100) NULL,
    cert_token varchar(40) NULL,
    rgtr_id varchar(20) NULL,
    reg_dt timestamp NULL,
    reg_prgrm_id varchar(100) NULL,
    mdfr_id varchar(20) NULL,
    mdfcn_dt timestamp NULL,
    mdfcn_prgrm_id varchar(100) NULL,
    CONSTRAINT "PK_TB_PP_M_MBR_INFO" PRIMARY KEY (mbr_no)
 */
INSERT INTO "KIDS_OWN"."TB_PP_M_MBR_INFO"
(mbr_no, mbr_id, mbr_encpt_flnm, mbr_encpt_eml, mbr_enpswd, mbr_encpt_telno, mbr_type_cd, mbr_join_stts, mbr_join_dt, mbr_whdwl_rsn, mbr_whdwl_dt, bfr_enpswd, pswd_chg_dt, pswd_err_nmtm, link_info_idntf_id, cert_token, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('1000000001', 'superuser', 'superuser', 'superuser@drugsafe.co.kr', 'superuser123', '01023238282', 'S', 'Y', CURRENT_TIMESTAMP, null, null, 'superuser123', CURRENT_TIMESTAMP, 0, '연계정보식별ID', '인증토큰', 'superuser', CURRENT_TIMESTAMP, 'SYSTEM', 'superuser', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO "KIDS_OWN"."TB_PP_M_MBR_INFO"
(mbr_no, mbr_id, mbr_encpt_flnm, mbr_encpt_eml, mbr_enpswd, mbr_encpt_telno, mbr_type_cd, mbr_join_stts, mbr_join_dt, mbr_whdwl_rsn, mbr_whdwl_dt, bfr_enpswd, pswd_chg_dt, pswd_err_nmtm, link_info_idntf_id, cert_token, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('1000000002', 'admin', 'admin', 'admin@drugsafe.co.kr', 'admin123', '01023237676', 'M', 'Y', CURRENT_TIMESTAMP, null, null, 'admin123', CURRENT_TIMESTAMP, 0, '연계정보식별ID', '인증토큰', 'admin', CURRENT_TIMESTAMP, 'SYSTEM', 'admin', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO "KIDS_OWN"."TB_PP_M_MBR_INFO"
(mbr_no, mbr_id, mbr_encpt_flnm, mbr_encpt_eml, mbr_enpswd, mbr_encpt_telno, mbr_type_cd, mbr_join_stts, mbr_join_dt, mbr_whdwl_rsn, mbr_whdwl_dt, bfr_enpswd, pswd_chg_dt, pswd_err_nmtm, link_info_idntf_id, cert_token, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('1000000003', 'jso2781', '조성옥', 'jso2781@drugsafe.co.kr', '!7mw8kw8mw7kw', '01065052781', 'U', 'Y', CURRENT_TIMESTAMP, null, null, '!7mw8kw8mw7kw', CURRENT_TIMESTAMP, 0, '연계정보식별ID', '인증토큰', 'jso2781', CURRENT_TIMESTAMP, 'SYSTEM', 'jso2781', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO "KIDS_OWN"."TB_PP_M_MBR_INFO"
(mbr_no, mbr_id, mbr_encpt_flnm, mbr_encpt_eml, mbr_enpswd, mbr_encpt_telno, mbr_type_cd, mbr_join_stts, mbr_join_dt, mbr_whdwl_rsn, mbr_whdwl_dt, bfr_enpswd, pswd_chg_dt, pswd_err_nmtm, link_info_idntf_id, cert_token, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('1000000004', 'hong123', '홍길동', 'jso2781@drugsafe.co.kr', 'hong123456', '01033237656', 'E', 'Y', CURRENT_TIMESTAMP, null, null, 'hong123456', CURRENT_TIMESTAMP, 0, '연계정보식별ID', '인증토큰', 'hong123', CURRENT_TIMESTAMP, 'SYSTEM', 'hong123', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO "KIDS_OWN"."TB_PP_M_MBR_INFO"
(mbr_no, mbr_id, mbr_encpt_flnm, mbr_encpt_eml, mbr_enpswd, mbr_encpt_telno, mbr_type_cd, mbr_join_stts, mbr_join_dt, mbr_whdwl_rsn, mbr_whdwl_dt, bfr_enpswd, pswd_chg_dt, pswd_err_nmtm, link_info_idntf_id, cert_token, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('1000000005', 'sin123', '신부장', 'sin123@drugsafe.co.kr', 'sin123456', '01033237656', 'A', 'Y', CURRENT_TIMESTAMP, null, null, 'sin123456', CURRENT_TIMESTAMP, 0, '연계정보식별ID', '인증토큰', 'sin123', CURRENT_TIMESTAMP, 'SYSTEM', 'sin123', CURRENT_TIMESTAMP, 'SYSTEM');


-- 대국민포털_기관정보기본
/*
    brno bpchar(10) NOT NULL,
    inst_nm varchar(200) NOT NULL,
    del_yn bpchar(1) NOT NULL,
    rgtr_id varchar(20) NULL,
    reg_dt timestamp NULL,
    reg_prgrm_id varchar(100) NULL,
    mdfr_id varchar(20) NULL,
    mdfcn_dt timestamp NULL,
    mdfcn_prgrm_id varchar(100) NULL,
    CONSTRAINT "PK_TB_PP_M_INST" PRIMARY KEY (brno)
 */
INSERT INTO "KIDS_OWN"."TB_PP_M_INST"
(brno, inst_nm, del_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
values('1000000001', '한국의약품안전관리원', 'N', 'admin', CURRENT_TIMESTAMP, 'SYSTEM', 'admin', CURRENT_TIMESTAMP, 'SYSTEM')
;

/*
    brno bpchar(10) NOT NULL,
    task_se_cd varchar(10) NOT NULL,
    mbr_id varchar(20) NULL,
    use_yn bpchar(1) NOT NULL,
    rgtr_id varchar(20) NULL,
    reg_dt timestamp NULL,
    reg_prgrm_id varchar(100) NULL,
    mdfr_id varchar(20) NULL,
    mdfcn_dt timestamp NULL,
    mdfcn_prgrm_id varchar(100) NULL,
    CONSTRAINT "PK_TB_PP_M_INST_TASK" PRIMARY KEY (brno, task_se_cd),
    CONSTRAINT "FK_TB_PP_M_INST_TO_TB_PP_M_INST_TASK" FOREIGN KEY (brno) REFERENCES "KIDS_OWN"."TB_PP_M_INST"(brno)
*/
INSERT INTO "KIDS_OWN"."TB_PP_M_INST_TASK"
(brno, task_se_cd, mbr_id, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('1000000001', 'edu', 'hong123', 'Y', 'admin', CURRENT_TIMESTAMP, 'SYSTEM', 'admin', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO "KIDS_OWN"."TB_PP_M_INST_TASK"
(brno, task_se_cd, mbr_id, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('1000000001', 'relief', 'hong123', 'Y', 'admin', CURRENT_TIMESTAMP, 'SYSTEM', 'admin', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO "KIDS_OWN"."TB_PP_M_INST_TASK"
(brno, task_se_cd, mbr_id, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('1000000001', 'safety', 'hong123', 'Y', 'admin', CURRENT_TIMESTAMP, 'SYSTEM', 'admin', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO "KIDS_OWN"."TB_PP_M_INST_TASK"
(brno, task_se_cd, mbr_id, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('1000000001', 'dur', 'hong123', 'Y', 'admin', CURRENT_TIMESTAMP, 'SYSTEM', 'admin', CURRENT_TIMESTAMP, 'SYSTEM');


-- 대국민포털_전문가업무기본
/*
    exprt_task_sn numeric(10) NOT NULL,
    mbr_no varchar(10) NULL,
    task_se_cd varchar(10) NOT NULL,
    brno bpchar(10) NULL,
    exprt_aprv_stts_yn bpchar(1) NOT NULL,
    aprv_prcs_ymd timestamp NULL,
    rjct_rsn varchar(4000) NULL,
    wrtr_dept_nm varchar(40) NULL,
    mdfr_dept_nm varchar(40) NULL,
    rgtr_id varchar(20) NULL,
    reg_dt timestamp NULL,
    reg_prgrm_id varchar(100) NULL,
    mdfr_id varchar(20) NULL,
    mdfcn_dt timestamp NULL,
    mdfcn_prgrm_id varchar(100) NULL,
    CONSTRAINT "PK_TB_PP_M_EXPRT_TASK" PRIMARY KEY (exprt_task_sn),
    CONSTRAINT "FK_TB_PP_M_EXPRT_INFO_TO_TB_PP_M_EXPRT_TASK" FOREIGN KEY (mbr_no) REFERENCES "KIDS_OWN"."TB_PP_M_EXPRT_INFO"(mbr_no)
 */
INSERT INTO "KIDS_OWN"."TB_PP_M_EXPRT_TASK"
(exprt_task_sn, mbr_no, task_se_cd, brno, exprt_aprv_stts_yn, aprv_prcs_ymd, rjct_rsn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(1000000011, '1000000004', 'relief', '1000000001', 'Y', CURRENT_TIMESTAMP, null, 'relief team', 'relief team', 'admin', CURRENT_TIMESTAMP, 'SYSTEM', 'admin', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO "KIDS_OWN"."TB_PP_M_EXPRT_TASK"
(exprt_task_sn, mbr_no, task_se_cd, brno, exprt_aprv_stts_yn, aprv_prcs_ymd, rjct_rsn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(1000000012, '1000000004', 'safety', '1000000001', 'Y', CURRENT_TIMESTAMP, null, 'safety team', 'safety team', 'admin', CURRENT_TIMESTAMP, 'SYSTEM', 'admin', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO "KIDS_OWN"."TB_PP_M_EXPRT_TASK"
(exprt_task_sn, mbr_no, task_se_cd, brno, exprt_aprv_stts_yn, aprv_prcs_ymd, rjct_rsn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(1000000013, '1000000004', 'edu', '1000000001', 'Y', CURRENT_TIMESTAMP, null, 'education team', 'education team', 'admin', CURRENT_TIMESTAMP, 'SYSTEM', 'admin', CURRENT_TIMESTAMP, 'SYSTEM');


INSERT INTO "KIDS_OWN"."TB_PP_M_EXPRT_TASK"
(exprt_task_sn, mbr_no, task_se_cd, brno, exprt_aprv_stts_yn, aprv_prcs_ymd, rjct_rsn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(1000000014, '1000000005', 'relief', '1000000001', 'Y', CURRENT_TIMESTAMP, null, 'relief team', 'relief team', 'admin', CURRENT_TIMESTAMP, 'SYSTEM', 'admin', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO "KIDS_OWN"."TB_PP_M_EXPRT_TASK"
(exprt_task_sn, mbr_no, task_se_cd, brno, exprt_aprv_stts_yn, aprv_prcs_ymd, rjct_rsn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(1000000015, '1000000005', 'safety', '1000000001', 'Y', CURRENT_TIMESTAMP, null, 'safety team', 'safety team', 'admin', CURRENT_TIMESTAMP, 'SYSTEM', 'admin', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO "KIDS_OWN"."TB_PP_M_EXPRT_TASK"
(exprt_task_sn, mbr_no, task_se_cd, brno, exprt_aprv_stts_yn, aprv_prcs_ymd, rjct_rsn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(1000000016, '1000000005', 'dur', '1000000001', 'Y', CURRENT_TIMESTAMP, null, 'education team', 'education team', 'admin', CURRENT_TIMESTAMP, 'SYSTEM', 'admin', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO "KIDS_OWN"."TB_PP_M_EXPRT_TASK"
(exprt_task_sn, mbr_no, task_se_cd, brno, exprt_aprv_stts_yn, aprv_prcs_ymd, rjct_rsn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(1000000017, '1000000005', 'edu', '1000000001', 'Y', CURRENT_TIMESTAMP, null, 'education team', 'education team', 'admin', CURRENT_TIMESTAMP, 'SYSTEM', 'admin', CURRENT_TIMESTAMP, 'SYSTEM');

/*
    mbr_no varchar(10) NOT NULL,
    brno bpchar(10) NOT NULL,
    exprt_ogdp_inst_encpt_eml varchar(40) NULL,
    exprt_hdof_yn bpchar(1) NOT NULL,
    exprt_aprv_stts_yn bpchar(1) NOT NULL,
    aprv_prcs_ymd timestamp NULL,
    rjct_rsn varchar(4000) NULL,
    atch_file_id varchar(20) NULL,
    rgtr_id varchar(20) NULL,
    reg_dt timestamp NULL,
    reg_prgrm_id varchar(100) NULL,
    mdfr_id varchar(20) NULL,
    mdfcn_dt timestamp NULL,
    mdfcn_prgrm_id varchar(100) NULL,
    CONSTRAINT "PK_TB_PP_M_EXPRT_INFO" PRIMARY KEY (mbr_no),
    CONSTRAINT "FK_TB_PP_M_INST_TO_TB_PP_M_EXPRT_INFO" FOREIGN KEY (brno) REFERENCES "KIDS_OWN"."TB_PP_M_INST"(brno),
    CONSTRAINT "FK_TB_PP_M_MBR_INFO_TO_TB_PP_M_EXPRT_INFO" FOREIGN KEY (mbr_no) REFERENCES "KIDS_OWN"."TB_PP_M_MBR_INFO"(mbr_no)
 */
INSERT INTO "KIDS_OWN"."TB_PP_M_EXPRT_INFO"
(mbr_no, brno, exprt_ogdp_inst_encpt_eml, exprt_hdof_yn, exprt_aprv_stts_yn, aprv_prcs_ymd, rjct_rsn, atch_file_id, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('1000000004', '1000000001', 'hong123@drugsafe.co.kr', 'Y', 'Y', CURRENT_TIMESTAMP, null, null, 'admin', CURRENT_TIMESTAMP, 'SYSTEM', 'admin', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO "KIDS_OWN"."TB_PP_M_EXPRT_INFO"
(mbr_no, brno, exprt_ogdp_inst_encpt_eml, exprt_hdof_yn, exprt_aprv_stts_yn, aprv_prcs_ymd, rjct_rsn, atch_file_id, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('1000000005', '1000000001', 'sin123@drugsafe.co.kr', 'Y', 'Y', CURRENT_TIMESTAMP, null, null, 'admin', CURRENT_TIMESTAMP, 'SYSTEM', 'admin', CURRENT_TIMESTAMP, 'SYSTEM');


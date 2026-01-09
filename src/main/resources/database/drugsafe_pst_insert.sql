delete from "TB_PP_M_PST";
delete from "TB_PP_M_BBS";


INSERT INTO "KIDS_OWN"."TB_PP_M_BBS"
(bbs_id, bbs_nm, bbs_atrb, bbs_expln, bbs_smry, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('BBS_COM_001', '공지사항 게시판', '공지사항 게시판    ', '공지사항 게시판', '공지사항 게시판', 'Y', 'Y', 'Y', 'Y', 3, 'ko', 'Y', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_BBS"
(bbs_id, bbs_nm, bbs_atrb, bbs_expln, bbs_smry, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('BBS_COM_002', '자료실 게시판', '자료실 게시판     ', '자료실 게시판', '자료실 게시판', 'Y', 'Y', 'Y', 'Y', 3, 'ko', 'Y', '', NULL, NULL, NULL, NULL, NULL);


INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(1, 'BBS_COM_001', '공지_게시글1', '공지_게시글1_내용', 15, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-01 14:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(2, 'BBS_COM_001', '공지_게시글2', '공지_게시글2_내용', 25, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-02 14:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(3, 'BBS_COM_001', '공지_게시글3', '공지_게시글3_내용', 35, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-03 14:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(4, 'BBS_COM_002', '자료_게시글4', '자료_게시글4_내용', 45, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-04 14:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(5, 'BBS_COM_002', '자료_게시글5', '자료_게시글5_내용', 55, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-05 14:22:51.030', NULL, NULL, NULL, NULL);
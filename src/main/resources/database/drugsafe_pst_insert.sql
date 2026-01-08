delete from "TB_PP_M_PST";
delete from "TB_PP_M_BBS";

INSERT INTO "KIDS_OWN"."TB_PP_M_BBS"
(bbs_id, bbs_nm, bbs_atrb, bbs_expln, bbs_smry, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('BBS_NTC_01', '공지사항 게시판', '공지사항 게시판', '공지사항 게시판', '공지사항 게시판', 'Y', 'Y', 'Y', 'Y', 3, 'ko', 'Y', '', NULL, NULL, NULL, NULL, NULL);

INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(1, 'BBS_NTC_01', '테스트 게시글1_제목1', '테스트 게시글1_내용1', 10, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-03 14:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(2, 'BBS_NTC_01', '테스트 게시글2_제목2', '테스트 게시글2_내용2', 20, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-04 14:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(3, 'BBS_NTC_01', '테스트 게시글3_제목3', '테스트 게시글3_내용3', 30, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-05 14:22:51.030', NULL, NULL, NULL, NULL);
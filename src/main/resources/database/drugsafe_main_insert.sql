delete from "TB_PP_M_PST";
delete from "TB_PP_M_BBS";
delete from "TB_PP_M_POPUP";
delete from "TB_CA_M_ATCH";
delete from "TB_PP_M_TASK_CD" where task_cd in ('MN_IMG', 'MN_BBS1', 'MN_BBS2', 'MN_BBS3', 'MN_BBS4');



INSERT INTO "KIDS_OWN"."TB_PP_M_TASK_CD"
(task_cd, task_cd_nm, up_task_cd, task_cd_vl, task_cd_expln, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('MN_BBS1             ', '사용자포털 홍보존 게시판 ID', NULL, 'BBS_GAL_002', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_TASK_CD"
(task_cd, task_cd_nm, up_task_cd, task_cd_vl, task_cd_expln, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('MN_BBS2             ', '사용자포털 SNS 유튜브 게시판 ID', NULL, 'BBS_VDO_002', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_TASK_CD"
(task_cd, task_cd_nm, up_task_cd, task_cd_vl, task_cd_expln, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('MN_BBS3             ', '사용자포털 SNS 인스타 게시판 ID', NULL, 'BBS_GAL_003', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_TASK_CD"
(task_cd, task_cd_nm, up_task_cd, task_cd_vl, task_cd_expln, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('MN_BBS4             ', '사용자포털 SNS 블로그 게시판 ID', NULL, 'BBS_GAL_004', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_TASK_CD"
(task_cd, task_cd_nm, up_task_cd, task_cd_vl, task_cd_expln, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('MN_IMG              ', '사용자포털 메인페이지 상단 이미지 경로', NULL, 'http://localhost:8080/pp/api/atch/thumb/fileTest/20260112/main03.jpg', NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);



INSERT INTO "KIDS_OWN"."TB_CA_M_ATCH"
(atch_file_sn, menu_sn, menu_type, atch_file_uld_hr, atch_file_use_yn, atch_file_path, atch_file_nm, atch_file_extn_nm, atch_file_cn, atch_file_sz, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(1, 36, 'PAGE', '2026-01-11 15:22:51.030', 'Y', 'fileTest\20260112\', 'test.txt', 'txt', '테스트내용1', 1500, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_CA_M_ATCH"
(atch_file_sn, menu_sn, menu_type, atch_file_uld_hr, atch_file_use_yn, atch_file_path, atch_file_nm, atch_file_extn_nm, atch_file_cn, atch_file_sz, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(2, 36, 'PAGE', '2026-01-11 15:22:51.030', 'Y', 'fileTest\20260112\', 'imageTest_tsla_logo.png', 'png', '테스트내용2', 33569, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_CA_M_ATCH"
(atch_file_sn, menu_sn, menu_type, atch_file_uld_hr, atch_file_use_yn, atch_file_path, atch_file_nm, atch_file_extn_nm, atch_file_cn, atch_file_sz, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(3, 36, 'PAGE', '2026-01-11 15:22:51.030', 'Y', 'fileTest\20260112\', 'imageTest_car_logo2.png', 'png', '테스트내용2', 33569, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_CA_M_ATCH"
(atch_file_sn, menu_sn, menu_type, atch_file_uld_hr, atch_file_use_yn, atch_file_path, atch_file_nm, atch_file_extn_nm, atch_file_cn, atch_file_sz, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(4, 36, 'PAGE', '2026-01-11 15:22:51.030', 'Y', 'fileTest\20260112\', 'imageTest_tsla.png', 'png', '테스트내용2', 33569, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_CA_M_ATCH"
(atch_file_sn, menu_sn, menu_type, atch_file_uld_hr, atch_file_use_yn, atch_file_path, atch_file_nm, atch_file_extn_nm, atch_file_cn, atch_file_sz, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(5, 36, 'PAGE', '2026-01-11 15:22:51.030', 'Y', 'fileTest\20260112\', 'imageTest_tsla2.png', 'png', '테스트내용2', 33569, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_CA_M_ATCH"
(atch_file_sn, menu_sn, menu_type, atch_file_uld_hr, atch_file_use_yn, atch_file_path, atch_file_nm, atch_file_extn_nm, atch_file_cn, atch_file_sz, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(6, 36, 'PAGE', '2026-01-11 15:22:51.030', 'Y', 'fileTest\20260112\', 'imageTest_youtube_logo.png', 'png', '테스트내용2', 33569, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_CA_M_ATCH"
(atch_file_sn, menu_sn, menu_type, atch_file_uld_hr, atch_file_use_yn, atch_file_path, atch_file_nm, atch_file_extn_nm, atch_file_cn, atch_file_sz, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(7, 36, 'PAGE', '2026-01-11 15:22:51.030', 'Y', 'fileTest\20260112\', 'pop1.png', 'png', '테스트내용2', 33569, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_CA_M_ATCH"
(atch_file_sn, menu_sn, menu_type, atch_file_uld_hr, atch_file_use_yn, atch_file_path, atch_file_nm, atch_file_extn_nm, atch_file_cn, atch_file_sz, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(8, 36, 'PAGE', '2026-01-11 15:22:51.030', 'Y', 'fileTest\20260112\', 'pop2.png', 'png', '테스트내용2', 33569, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_CA_M_ATCH"
(atch_file_sn, menu_sn, menu_type, atch_file_uld_hr, atch_file_use_yn, atch_file_path, atch_file_nm, atch_file_extn_nm, atch_file_cn, atch_file_sz, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(9, 36, 'PAGE', '2026-01-11 15:22:51.030', 'Y', 'fileTest\20260112\', 'pop3.png', 'png', '테스트내용2', 33569, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_CA_M_ATCH"
(atch_file_sn, menu_sn, menu_type, atch_file_uld_hr, atch_file_use_yn, atch_file_path, atch_file_nm, atch_file_extn_nm, atch_file_cn, atch_file_sz, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(10, 36, 'PAGE', '2026-01-11 15:22:51.030', 'Y', 'fileTest\20260112\', 'imageTest_insta.png', 'png', '테스트내용2', 33569, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_CA_M_ATCH"
(atch_file_sn, menu_sn, menu_type, atch_file_uld_hr, atch_file_use_yn, atch_file_path, atch_file_nm, atch_file_extn_nm, atch_file_cn, atch_file_sz, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(11, 36, 'PAGE', '2026-01-11 15:22:51.030', 'Y', 'fileTest\20260112\', 'imageTest_blog.png', 'png', '테스트내용2', 33569, NULL, NULL, NULL, NULL, NULL, NULL);



INSERT INTO "KIDS_OWN"."TB_PP_M_POPUP"
(popup_sn, popup_ttl, popup_pstg_bgng_ymd, popup_pstg_end_ymd, popup_lnkg_addr, popup_seq, popup_pstg_yn, popup_npag_yn, popup_expln, atch_file_id, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(1, '사용자 팝업1', '2026-01-20 13:03:54.254', '2026-04-25 13:03:54.254', 'https://naver.com', 1, 'Y', 'N', 'test', '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_POPUP"
(popup_sn, popup_ttl, popup_pstg_bgng_ymd, popup_pstg_end_ymd, popup_lnkg_addr, popup_seq, popup_pstg_yn, popup_npag_yn, popup_expln, atch_file_id, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(2, '사용자 팝업2', '2026-01-20 13:03:54.254', '2026-04-25 13:03:54.254', 'https://naver.com', 2, 'Y', 'N', 'test', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_POPUP"
(popup_sn, popup_ttl, popup_pstg_bgng_ymd, popup_pstg_end_ymd, popup_lnkg_addr, popup_seq, popup_pstg_yn, popup_npag_yn, popup_expln, atch_file_id, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(3, '사용자 팝업3', '2026-01-20 13:03:54.254', '2026-04-25 13:03:54.254', 'https://naver.com', 3, 'Y', 'N', 'test', '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_POPUP"
(popup_sn, popup_ttl, popup_pstg_bgng_ymd, popup_pstg_end_ymd, popup_lnkg_addr, popup_seq, popup_pstg_yn, popup_npag_yn, popup_expln, atch_file_id, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(4, '사용자 팝업4', '2026-01-20 13:03:54.254', '2026-04-25 13:03:54.254', 'https://naver.com', 4, 'Y', 'N', 'test', '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);



INSERT INTO "KIDS_OWN"."TB_PP_M_BBS"
(bbs_id, bbs_nm, bbs_atrb, bbs_expln, bbs_smry, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('BBS_COM_001', '공지사항 게시판', '공지사항 게시판    ', '공지사항 게시판', '공지사항 게시판', 'Y', 'Y', 'Y', 'Y', 3, 'ko', 'Y', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_BBS"
(bbs_id, bbs_nm, bbs_atrb, bbs_expln, bbs_smry, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('BBS_COM_002', '채용게시판', '채용게시판       ', '채용게시판', '채용게시판', 'Y', 'Y', 'Y', 'Y', 3, 'ko', 'Y', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_BBS"
(bbs_id, bbs_nm, bbs_atrb, bbs_expln, bbs_smry, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('BBS_COM_003', '기관소식 뉴스레터', '기관소식 뉴스레터   ', '기관소식 뉴스레터', '기관소식 뉴스레터', 'Y', 'Y', 'Y', 'Y', 3, 'ko', 'Y', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_BBS"
(bbs_id, bbs_nm, bbs_atrb, bbs_expln, bbs_smry, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('BBS_COM_004', '기관소식 보도자료', '기관소식 보도자료   ', '기관소식 보도자료', '기관소식 보도자료', 'Y', 'Y', 'Y', 'Y', 3, 'ko', 'Y', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_BBS"
(bbs_id, bbs_nm, bbs_atrb, bbs_expln, bbs_smry, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('BBS_GAL_001', '기관소식 카드뉴스', '기관소식 카드뉴스   ', '기관소식 카드뉴스', '기관소식 카드뉴스', 'Y', 'Y', 'Y', 'Y', 3, 'ko', 'Y', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_BBS"
(bbs_id, bbs_nm, bbs_atrb, bbs_expln, bbs_smry, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('BBS_GAL_002', '메인화면 홍보존', '메인화면 홍보존    ', '메인화면 홍보존', '메인화면 홍보존', 'Y', 'Y', 'Y', 'Y', 3, 'ko', 'Y', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_BBS"
(bbs_id, bbs_nm, bbs_atrb, bbs_expln, bbs_smry, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('BBS_GAL_003', '메인화면 SNS 인스타', '메인화면 SNS 인스타', '메인화면 SNS 인스타', '메인화면 SNS 인스타', 'Y', 'Y', 'Y', 'Y', 3, 'ko', 'Y', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_BBS"
(bbs_id, bbs_nm, bbs_atrb, bbs_expln, bbs_smry, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('BBS_GAL_004', '메인화면 SNS 블로그', '메인화면 SNS 블로그', '메인화면 SNS 블로그', '메인화면 SNS 블로그', 'Y', 'Y', 'Y', 'Y', 3, 'ko', 'Y', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_BBS"
(bbs_id, bbs_nm, bbs_atrb, bbs_expln, bbs_smry, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('BBS_VDO_001', '기관소식 동영상', '기관소식 동영상    ', '기관소식 동영상', '기관소식 동영상', 'Y', 'Y', 'Y', 'Y', 3, 'ko', 'Y', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_BBS"
(bbs_id, bbs_nm, bbs_atrb, bbs_expln, bbs_smry, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('BBS_VDO_002', '메인화면 SNS 유튜브', '메인화면 SNS 유튜브', '메인화면 SNS 유튜브', '메인화면 SNS 유튜브', 'Y', 'Y', 'Y', 'Y', 3, 'ko', 'Y', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_BBS"
(bbs_id, bbs_nm, bbs_atrb, bbs_expln, bbs_smry, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES('BBS_COM_005', '기관소식 자료실 게시판', '기관소식 자료실 게시판', '기관소식 자료실 게시판', '기관소식 자료실 게시판', 'Y', 'Y', 'Y', 'Y', 3, 'ko', 'Y', '', NULL, NULL, NULL, NULL, NULL);



INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(1, 'BBS_COM_001', '공지_게시글1', '공지_게시글1_내용', 15, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-01 14:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(36, 'BBS_VDO_002', 'SNS 유튜브4', 'SNS 유튜브4', 61, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-13 10:22:51.030', NULL, NULL, NULL, 'https://youtu.be/yrzrCw6aMVc?si=1Fhj3hS7hUfBwyQ3');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(4, 'BBS_COM_002', '채용_게시글4', '채용_게시글4_내용', 49, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-04 14:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(27, 'BBS_GAL_001', '카드뉴스1', '카드뉴스1', 46, '1', '4', '2', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-01 10:01:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(37, 'BBS_VDO_002', 'SNS 유튜브5', 'SNS 유튜브5', 61, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-14 10:22:51.030', NULL, NULL, NULL, 'https://youtu.be/yrzrCw6aMVc?si=1Fhj3hS7hUfBwyQ3');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(28, 'BBS_GAL_001', '카드뉴스2', '카드뉴스2', 87, '1', '5', '3', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-02 10:02:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(29, 'BBS_GAL_001', '카드뉴스3', '카드뉴스3', 717, '1', '4', '2', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-03 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(6, 'BBS_COM_001', '공지_게시글4', '공지_게시글4_내용', 35, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-06 14:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(30, 'BBS_GAL_002', '홍보존1', '홍보존1', 61, '1', NULL, '3', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-04 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(8, 'BBS_COM_001', '공지_게시글6', '공지_게시글6_내용', 35, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-08 14:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(9, 'BBS_COM_001', '공지_게시글7', '공지_게시글7_내용', 35, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-09 14:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(42, 'BBS_GAL_003', 'SNS 인스타5', 'SNS 인스타5', 61, '1', NULL, '10', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-06 10:22:51.030', NULL, NULL, NULL, 'https://www.instagram.com/from_jjlee');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(10, 'BBS_COM_001', '공지_게시글8', '공지_게시글8_내용', 43, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-10 14:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(33, 'BBS_VDO_002', 'SNS 유튜브1', 'SNS 유튜브1', 61, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-10 10:22:51.030', NULL, NULL, NULL, 'https://youtu.be/yrzrCw6aMVc?si=1Fhj3hS7hUfBwyQ3');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(43, 'BBS_GAL_004', 'SNS 블로그1', 'SNS 블로그1', 61, '1', NULL, '11', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-06 10:22:51.030', NULL, NULL, NULL, 'https://blog.naver.com/lodi_labs/223675194056');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(31, 'BBS_GAL_002', '홍보존2', '홍보존2', 61, '1', NULL, '4', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-05 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(32, 'BBS_GAL_002', '홍보존3', '홍보존3', 61, '1', NULL, '5', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-06 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(2, 'BBS_COM_001', '공지_게시글2', '공지_게시글2_내용', 31, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-02 14:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(15, 'BBS_COM_003', '뉴스레터1', '뉴스레터1', 61, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-01 10:01:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(16, 'BBS_COM_003', '뉴스레터2', '뉴스레터2', 61, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-02 10:02:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(34, 'BBS_VDO_002', 'SNS 유튜브2', 'SNS 유튜브2', 61, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-11 10:22:51.030', NULL, NULL, NULL, 'https://youtu.be/yrzrCw6aMVc?si=1Fhj3hS7hUfBwyQ3');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(17, 'BBS_COM_003', '뉴스레터3', '뉴스레터3', 61, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-03 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(18, 'BBS_COM_003', '뉴스레터4', '뉴스레터4', 61, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-04 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(19, 'BBS_COM_003', '뉴스레터5', '뉴스레터5', 61, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-05 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(20, 'BBS_COM_003', '뉴스레터6', '뉴스레터6', 61, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-06 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(21, 'BBS_COM_004', '보도자료1', '보도자료1', 61, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-01 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(22, 'BBS_COM_004', '보도자료2', '보도자료2', 61, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-02 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(5, 'BBS_COM_002', '채용_게시글5', '채용_게시글5_내용', 69, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-05 14:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(23, 'BBS_COM_004', '보도자료3', '보도자료3', 61, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-03 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(24, 'BBS_COM_004', '보도자료4', '보도자료4', 61, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-04 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(25, 'BBS_COM_004', '보도자료5', '보도자료5', 61, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-05 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(3, 'BBS_COM_001', '공지_게시글3', '공지_게시글3_내용', 37, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-03 14:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(26, 'BBS_COM_004', '보도자료6', '보도자료6', 61, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-06 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(35, 'BBS_VDO_002', 'SNS 유튜브3', 'SNS 유튜브3', 61, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-12 10:22:51.030', NULL, NULL, NULL, 'https://youtu.be/yrzrCw6aMVc?si=1Fhj3hS7hUfBwyQ3');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(14, 'BBS_COM_001', '공지_게시글12', '공지_게시글12_내용', 77, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-12 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(13, 'BBS_COM_001', '공지_게시글11', '공지_게시글11_내용', 40, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-11 16:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(12, 'BBS_COM_001', '공지_게시글10_첨부파일 테스트', '공지_게시글10_내용', 149, '1', '1', NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-11 15:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(11, 'BBS_COM_001', '공지_게시글9', '공지_게시글9_내용', 37, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-11 14:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(38, 'BBS_GAL_003', 'SNS 인스타1', 'SNS 인스타1', 61, '1', NULL, '10', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-06 10:22:51.030', NULL, NULL, NULL, 'https://www.instagram.com/from_jjlee');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(39, 'BBS_GAL_003', 'SNS 인스타2', 'SNS 인스타2', 61, '1', NULL, '10', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-06 10:22:51.030', NULL, NULL, NULL, 'https://www.instagram.com/from_jjlee');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(40, 'BBS_GAL_003', 'SNS 인스타3', 'SNS 인스타3', 61, '1', NULL, '10', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-06 10:22:51.030', NULL, NULL, NULL, 'https://www.instagram.com/from_jjlee');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(41, 'BBS_GAL_003', 'SNS 인스타4', 'SNS 인스타4', 61, '1', NULL, '10', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-06 10:22:51.030', NULL, NULL, NULL, 'https://www.instagram.com/from_jjlee');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(49, 'BBS_COM_005', '자료실 2', '자료실 2', 61, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-07 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(51, 'BBS_COM_005', '자료실 4', '자료실 4', 61, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-09 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(65, 'BBS_VDO_001', '동영상 2', '동영상 내용', 107, '1', '', '6', 'Y', 'N', '개발팀', '', 'test001', '2026-01-02 10:22:51.030', '', NULL, NULL, 'https://www.youtube.com/watch?v=QnvQX9fonhI');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(71, 'BBS_VDO_001', '동영상 8', '동영상 내용', 101, '1', '', '6', 'Y', 'N', '개발팀', '', 'test001', '2026-01-08 10:22:51.030', '', NULL, NULL, 'https://www.youtube.com/watch?v=QnvQX9fonhI');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(72, 'BBS_VDO_001', '동영상 9', '동영상 내용', 101, '1', '', '6', 'Y', 'N', '개발팀', '', 'test001', '2026-01-09 10:22:51.030', NULL, NULL, NULL, 'https://www.youtube.com/watch?v=QnvQX9fonhI');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(7, 'BBS_COM_001', '공지_게시글5_html 테스트', '<p><img src="https://www.drugsafe.or.kr/cmm/fms/FileDown.do?atchFileId=FILE_000000000079512&amp;fileSn=0" class="editorUploadImage"><br></p><p><br></p><p>2025년 한국의약품안전관리원 포스터·카툰 공모전에&nbsp;</p><p>참여해주신 모든 분께 감사드립니다.&nbsp;</p><p>최종 7개 작품이 선정 되었으며,&nbsp;</p><p>많은 응모와 관심 감사드립니다.&nbsp;</p><p><br>							 								</p><p> 									<a href="http://www.kogl.or.kr/info/licenseType4.do" target="_blank"><img alt="제4유형" src="https://www.hira.or.kr/images/contents/img_opentype04.png"></a>&nbsp; 본 저작물은 "공공누리"  									<a href="http://www.kogl.or.kr/info/licenseType4.do" target="_blank">제4유형:출처표시 상업적 이용금지 변경금지</a> 조건에 따라 이용할 수 있습니다. 								</p>', 47, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-07 14:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(53, 'BBS_COM_005', '자료실 6', '자료실 6', 73, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-11 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(52, 'BBS_COM_005', '자료실 5', '자료실 5', 63, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-10 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(64, 'BBS_VDO_001', '동영상 1', '동영상 내용', 101, '1', '', '6', 'Y', 'N', '개발팀', '', 'test001', '2026-01-01 10:22:51.030', '', NULL, NULL, 'https://www.youtube.com/watch?v=QnvQX9fonhI');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(67, 'BBS_VDO_001', '동영상 4', '동영상 내용', 105, '1', '', '6', 'Y', 'N', '개발팀', '', 'test001', '2026-01-04 10:22:51.030', '', NULL, NULL, 'https://www.youtube.com/watch?v=QnvQX9fonhI');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(66, 'BBS_VDO_001', '동영상 3', '동영상 내용', 101, '1', '', '6', 'Y', 'N', '개발팀', '', 'test001', '2026-01-03 10:22:51.030', '', NULL, NULL, 'https://www.youtube.com/watch?v=QnvQX9fonhI');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(54, 'BBS_GAL_001', '카드뉴스4', '카드뉴스3', 717, '1', '5', '3', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-04 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(55, 'BBS_GAL_001', '카드뉴스5', '카드뉴스3', 715, '1', '4', '2', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-05 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(56, 'BBS_GAL_001', '카드뉴스6', '카드뉴스3', 717, '1', '5', '3', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-06 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(57, 'BBS_GAL_001', '카드뉴스7', '카드뉴스3', 731, '1', '4', '2', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-07 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(58, 'BBS_GAL_001', '카드뉴스8', '카드뉴스3', 717, '1', '5', '3', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-08 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(59, 'BBS_GAL_001', '카드뉴스9', '카드뉴스3', 719, '1', '4', '2', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-09 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(60, 'BBS_GAL_001', '카드뉴스10', '카드뉴스3', 727, '1', '5', '3', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-10 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(61, 'BBS_GAL_001', '카드뉴스11', '카드뉴스3', 721, '1', '4', '2', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-11 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(68, 'BBS_VDO_001', '동영상 5', '동영상 내용', 101, '1', '', '6', 'Y', 'N', '개발팀', '', 'test001', '2026-01-05 10:22:51.030', '', NULL, NULL, 'https://www.youtube.com/watch?v=QnvQX9fonhI');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(69, 'BBS_VDO_001', '동영상 6', '동영상 내용', 101, '1', '', '6', 'Y', 'N', '개발팀', '', 'test001', '2026-01-06 10:22:51.030', '', NULL, NULL, 'https://www.youtube.com/watch?v=QnvQX9fonhI');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(63, 'BBS_GAL_001', '카드뉴스13', '카드뉴스3', 731, '1', '4', '2', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-13 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(70, 'BBS_VDO_001', '동영상 7', '동영상 내용', 105, '1', '', '6', 'Y', 'N', '개발팀', '', 'test001', '2026-01-07 10:22:51.030', NULL, NULL, NULL, 'https://www.youtube.com/watch?v=QnvQX9fonhI');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(62, 'BBS_GAL_001', '카드뉴스12', '카드뉴스3', 741, '1', '5', '3', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-12 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(46, 'BBS_GAL_004', 'SNS 블로그4', 'SNS 블로그4', 61, '1', NULL, '11', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-06 10:22:51.030', NULL, NULL, NULL, 'https://blog.naver.com/lodi_labs/223675194056');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(50, 'BBS_COM_005', '자료실 3', '자료실 3', 65, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-08 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(48, 'BBS_COM_005', '자료실 1', '자료실 1', 67, '1', NULL, NULL, 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-06 10:22:51.030', NULL, NULL, NULL, NULL);
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(47, 'BBS_GAL_004', 'SNS 블로그5', 'SNS 블로그5', 61, '1', NULL, '11', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-06 10:22:51.030', NULL, NULL, NULL, 'https://blog.naver.com/lodi_labs/223675194056');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(44, 'BBS_GAL_004', 'SNS 블로그2', 'SNS 블로그2', 61, '1', NULL, '11', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-06 10:22:51.030', NULL, NULL, NULL, 'https://blog.naver.com/lodi_labs/223675194056');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(45, 'BBS_GAL_004', 'SNS 블로그3', 'SNS 블로그3', 61, '1', NULL, '11', 'Y', 'N', '개발팀', NULL, 'test001', '2026-01-06 10:22:51.030', NULL, NULL, NULL, 'https://blog.naver.com/lodi_labs/223675194056');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(73, 'BBS_VDO_001', '동영상 10', '동영상 내용', 111, '1', '', '6', 'Y', 'N', '개발팀', '', 'test001', '2026-01-10 10:22:51.030', NULL, NULL, NULL, 'https://youtu.be/yrzrCw6aMVc?si=1Fhj3hS7hUfBwyQ3');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(74, 'BBS_VDO_001', '동영상 11', '동영상 내용', 111, '1', '', '6', 'Y', 'N', '개발팀', '', 'test001', '2026-01-11 10:22:51.030', NULL, NULL, NULL, 'https://www.youtube.com/watch?v=2wxN9ebBTUU');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(75, 'BBS_VDO_001', '동영상 12', '동영상 내용', 113, '1', '', '6', 'Y', 'N', '개발팀', '', 'test001', '2026-01-12 10:22:51.030', NULL, NULL, NULL, 'https://www.youtube.com/watch?v=zOMKgzkmdD4');
INSERT INTO "KIDS_OWN"."TB_PP_M_PST"
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_id, thmb_id, ntc_yn, del_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
VALUES(76, 'BBS_VDO_001', '동영상 13', '동영상 내용', 119, '1', '', '6', 'Y', 'N', '개발팀', '', 'test001', '2026-01-13 10:22:51.030', NULL, NULL, NULL, 'https://www.youtube.com/shorts/Ed0vxG-GTSU');
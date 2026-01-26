delete from TB_PP_M_PST;
delete from TB_PP_M_BBS;
delete from TB_PP_M_POPUP;
delete from tb_ca_e_file_trsm;
delete from tb_ca_e_file_group_trsm;
delete from TB_PP_M_TASK_CD where task_cd in ('MN_IMG', 'MN_BBS1', 'MN_BBS2', 'MN_BBS3', 'MN_BBS4');



INSERT INTO kids_own.tb_pp_m_task_cd
(task_cd, task_cd_nm, up_task_cd, task_cd_vl, task_cd_expln, use_yn, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES('MN_BBS1             ', '사용자포털 홍보존 게시판 ID', NULL, 'BBS_GAL_002', NULL, 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_pp_m_task_cd
(task_cd, task_cd_nm, up_task_cd, task_cd_vl, task_cd_expln, use_yn, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES('MN_BBS2             ', '사용자포털 SNS 유튜브 게시판 ID', NULL, 'BBS_VDO_002', NULL, 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_pp_m_task_cd
(task_cd, task_cd_nm, up_task_cd, task_cd_vl, task_cd_expln, use_yn, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES('MN_BBS3             ', '사용자포털 SNS 인스타 게시판 ID', NULL, 'BBS_GAL_003', NULL, 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_pp_m_task_cd
(task_cd, task_cd_nm, up_task_cd, task_cd_vl, task_cd_expln, use_yn, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES('MN_BBS4             ', '사용자포털 SNS 블로그 게시판 ID', NULL, 'BBS_GAL_004', NULL, 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_pp_m_task_cd
(task_cd, task_cd_nm, up_task_cd, task_cd_vl, task_cd_expln, use_yn, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES('MN_IMG              ', '사용자포털 메인페이지 상단 이미지 경로', NULL, 'http://localhost:8080/pp/api/atch/thumb/fileTest/20260112/main03.jpg', NULL, 'Y', NULL, NULL, NULL, NULL);


INSERT INTO kids_own.tb_ca_e_file_group_trsm
(atch_file_group_id, task_se_cd, task_se_trgt_id, use_yn, reg_dt, rgtr_id, mdfcn_dt, mdfr_id)
VALUES('1', '', NULL, ' ', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_ca_e_file_group_trsm
(atch_file_group_id, task_se_cd, task_se_trgt_id, use_yn, reg_dt, rgtr_id, mdfcn_dt, mdfr_id)
VALUES('2', '', NULL, ' ', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_ca_e_file_group_trsm
(atch_file_group_id, task_se_cd, task_se_trgt_id, use_yn, reg_dt, rgtr_id, mdfcn_dt, mdfr_id)
VALUES('3', '', NULL, ' ', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_ca_e_file_group_trsm
(atch_file_group_id, task_se_cd, task_se_trgt_id, use_yn, reg_dt, rgtr_id, mdfcn_dt, mdfr_id)
VALUES('4', '', NULL, ' ', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_ca_e_file_group_trsm
(atch_file_group_id, task_se_cd, task_se_trgt_id, use_yn, reg_dt, rgtr_id, mdfcn_dt, mdfr_id)
VALUES('5', '', NULL, ' ', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_ca_e_file_group_trsm
(atch_file_group_id, task_se_cd, task_se_trgt_id, use_yn, reg_dt, rgtr_id, mdfcn_dt, mdfr_id)
VALUES('6', '', NULL, ' ', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_ca_e_file_group_trsm
(atch_file_group_id, task_se_cd, task_se_trgt_id, use_yn, reg_dt, rgtr_id, mdfcn_dt, mdfr_id)
VALUES('7', '', NULL, ' ', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_ca_e_file_group_trsm
(atch_file_group_id, task_se_cd, task_se_trgt_id, use_yn, reg_dt, rgtr_id, mdfcn_dt, mdfr_id)
VALUES('8', '', NULL, ' ', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_ca_e_file_group_trsm
(atch_file_group_id, task_se_cd, task_se_trgt_id, use_yn, reg_dt, rgtr_id, mdfcn_dt, mdfr_id)
VALUES('9', '', NULL, ' ', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_ca_e_file_group_trsm
(atch_file_group_id, task_se_cd, task_se_trgt_id, use_yn, reg_dt, rgtr_id, mdfcn_dt, mdfr_id)
VALUES('10', '', NULL, ' ', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_ca_e_file_group_trsm
(atch_file_group_id, task_se_cd, task_se_trgt_id, use_yn, reg_dt, rgtr_id, mdfcn_dt, mdfr_id)
VALUES('11', '', NULL, ' ', NULL, NULL, NULL, NULL);


INSERT INTO kids_own.tb_ca_e_file_trsm
(atch_file_id, atch_file_group_id, file_seq, file_strg_path_dsctn, encd_file_nm, prvc_incl_yn, file_nm, file_extn_nm, file_cn, file_sz, crt_dt, use_yn, reg_dt, rgtr_id, mdfcn_dt, mdfr_id)
VALUES('1', '1', 1, 'fileTest\20260112\', 'encodingFileName', 'N', 'test.txt', 'txt', '파일내용', 135975, NULL, 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_ca_e_file_trsm
(atch_file_id, atch_file_group_id, file_seq, file_strg_path_dsctn, encd_file_nm, prvc_incl_yn, file_nm, file_extn_nm, file_cn, file_sz, crt_dt, use_yn, reg_dt, rgtr_id, mdfcn_dt, mdfr_id)
VALUES('2', '2', 1, 'fileTest\20260112\', 'encodingFileName', 'N', 'imageTest_tsla_logo.png', 'png', '파일내용', 135975, NULL, 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_ca_e_file_trsm
(atch_file_id, atch_file_group_id, file_seq, file_strg_path_dsctn, encd_file_nm, prvc_incl_yn, file_nm, file_extn_nm, file_cn, file_sz, crt_dt, use_yn, reg_dt, rgtr_id, mdfcn_dt, mdfr_id)
VALUES('3', '3', 1, 'fileTest\20260112\', 'encodingFileName', 'N', 'imageTest_car_logo2.png', 'png', '파일내용', 135975, NULL, 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_ca_e_file_trsm
(atch_file_id, atch_file_group_id, file_seq, file_strg_path_dsctn, encd_file_nm, prvc_incl_yn, file_nm, file_extn_nm, file_cn, file_sz, crt_dt, use_yn, reg_dt, rgtr_id, mdfcn_dt, mdfr_id)
VALUES('4', '4', 1, 'fileTest\20260112\', 'encodingFileName', 'N', 'imageTest_tsla.png', 'png', '파일내용', 135975, NULL, 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_ca_e_file_trsm
(atch_file_id, atch_file_group_id, file_seq, file_strg_path_dsctn, encd_file_nm, prvc_incl_yn, file_nm, file_extn_nm, file_cn, file_sz, crt_dt, use_yn, reg_dt, rgtr_id, mdfcn_dt, mdfr_id)
VALUES('5', '5', 1, 'fileTest\20260112\', 'encodingFileName', 'N', 'imageTest_tsla2.png', 'png', '파일내용', 135975, NULL, 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_ca_e_file_trsm
(atch_file_id, atch_file_group_id, file_seq, file_strg_path_dsctn, encd_file_nm, prvc_incl_yn, file_nm, file_extn_nm, file_cn, file_sz, crt_dt, use_yn, reg_dt, rgtr_id, mdfcn_dt, mdfr_id)
VALUES('6', '6', 1, 'fileTest\20260112\', 'encodingFileName', 'N', 'imageTest_youtube_logo.png', 'png', '파일내용', 135975, NULL, 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_ca_e_file_trsm
(atch_file_id, atch_file_group_id, file_seq, file_strg_path_dsctn, encd_file_nm, prvc_incl_yn, file_nm, file_extn_nm, file_cn, file_sz, crt_dt, use_yn, reg_dt, rgtr_id, mdfcn_dt, mdfr_id)
VALUES('7', '7', 1, 'fileTest\20260112\', 'encodingFileName', 'N', 'pop1.png', 'png', '파일내용', 135975, NULL, 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_ca_e_file_trsm
(atch_file_id, atch_file_group_id, file_seq, file_strg_path_dsctn, encd_file_nm, prvc_incl_yn, file_nm, file_extn_nm, file_cn, file_sz, crt_dt, use_yn, reg_dt, rgtr_id, mdfcn_dt, mdfr_id)
VALUES('8', '8', 1, 'fileTest\20260112\', 'encodingFileName', 'N', 'pop2.png', 'png', '파일내용', 135975, NULL, 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_ca_e_file_trsm
(atch_file_id, atch_file_group_id, file_seq, file_strg_path_dsctn, encd_file_nm, prvc_incl_yn, file_nm, file_extn_nm, file_cn, file_sz, crt_dt, use_yn, reg_dt, rgtr_id, mdfcn_dt, mdfr_id)
VALUES('9', '9', 1, 'fileTest\20260112\', 'encodingFileName', 'N', 'pop3.png', 'png', '파일내용', 135975, NULL, 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_ca_e_file_trsm
(atch_file_id, atch_file_group_id, file_seq, file_strg_path_dsctn, encd_file_nm, prvc_incl_yn, file_nm, file_extn_nm, file_cn, file_sz, crt_dt, use_yn, reg_dt, rgtr_id, mdfcn_dt, mdfr_id)
VALUES('10', '10', 1, 'fileTest\20260112\', 'encodingFileName', 'N', 'imageTest_insta.png', 'png', '파일내용', 135975, NULL, 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_ca_e_file_trsm
(atch_file_id, atch_file_group_id, file_seq, file_strg_path_dsctn, encd_file_nm, prvc_incl_yn, file_nm, file_extn_nm, file_cn, file_sz, crt_dt, use_yn, reg_dt, rgtr_id, mdfcn_dt, mdfr_id)
VALUES('11', '11', 1, 'fileTest\20260112\', 'encodingFileName', 'N', 'imageTest_blog.png', 'png', '파일내용', 135975, NULL, 'Y', NULL, NULL, NULL, NULL);



INSERT INTO kids_own.tb_pp_m_popup
(popup_sn, popup_ttl, popup_pstg_bgng_dt, popup_pstg_end_dt, popup_lnkg_addr, popup_seq, popup_pstg_yn, popup_npag_yn, popup_expln, atch_file_group_id, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(1, '사용자팝업1', '2026-01-20 13:03:54.254', '2026-04-25 13:03:54.254', 'https://naver.com', 1, 'Y', 'N', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_pp_m_popup
(popup_sn, popup_ttl, popup_pstg_bgng_dt, popup_pstg_end_dt, popup_lnkg_addr, popup_seq, popup_pstg_yn, popup_npag_yn, popup_expln, atch_file_group_id, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(2, '사용자팝업2', '2026-01-20 13:03:54.254', '2026-04-25 13:03:54.254', 'https://naver.com', 2, 'Y', 'N', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_pp_m_popup
(popup_sn, popup_ttl, popup_pstg_bgng_dt, popup_pstg_end_dt, popup_lnkg_addr, popup_seq, popup_pstg_yn, popup_npag_yn, popup_expln, atch_file_group_id, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(3, '사용자팝업3', '2026-01-20 13:03:54.254', '2026-04-25 13:03:54.254', 'https://naver.com', 3, 'Y', 'N', NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_pp_m_popup
(popup_sn, popup_ttl, popup_pstg_bgng_dt, popup_pstg_end_dt, popup_lnkg_addr, popup_seq, popup_pstg_yn, popup_npag_yn, popup_expln, atch_file_group_id, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(4, '사용자팝업4', '2026-01-20 13:03:54.254', '2026-04-25 13:03:54.254', 'https://naver.com', 4, 'Y', 'N', NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL);



INSERT INTO kids_own.tb_pp_m_bbs
(bbs_id, bbs_nm, bbs_atrb_cd, bbs_expln, bbs_smry_cn, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES('BBS_COM_001', '공지사항 게시판', '1  ', NULL, NULL, 'N', 'Y', 'Y', 'Y', NULL, 'ko ', 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_pp_m_bbs
(bbs_id, bbs_nm, bbs_atrb_cd, bbs_expln, bbs_smry_cn, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES('BBS_COM_002', '채용게시판', '1  ', NULL, NULL, 'N', 'Y', 'Y', 'Y', NULL, 'ko ', 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_pp_m_bbs
(bbs_id, bbs_nm, bbs_atrb_cd, bbs_expln, bbs_smry_cn, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES('BBS_COM_003', '기관소식 뉴스레터', '1  ', NULL, NULL, 'N', 'Y', 'Y', 'Y', NULL, 'ko ', 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_pp_m_bbs
(bbs_id, bbs_nm, bbs_atrb_cd, bbs_expln, bbs_smry_cn, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES('BBS_COM_004', '기관소식 보도자료', '1  ', NULL, NULL, 'N', 'Y', 'Y', 'Y', NULL, 'ko ', 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_pp_m_bbs
(bbs_id, bbs_nm, bbs_atrb_cd, bbs_expln, bbs_smry_cn, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES('BBS_GAL_001', '기관소식 카드뉴스', '1  ', NULL, NULL, 'N', 'Y', 'Y', 'Y', NULL, 'ko ', 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_pp_m_bbs
(bbs_id, bbs_nm, bbs_atrb_cd, bbs_expln, bbs_smry_cn, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES('BBS_GAL_002', '메인화면 홍보존', '1  ', NULL, NULL, 'N', 'Y', 'Y', 'Y', NULL, 'ko ', 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_pp_m_bbs
(bbs_id, bbs_nm, bbs_atrb_cd, bbs_expln, bbs_smry_cn, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES('BBS_GAL_003', '메인화면 SNS 인스타', '1  ', NULL, NULL, 'N', 'Y', 'Y', 'Y', NULL, 'ko ', 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_pp_m_bbs
(bbs_id, bbs_nm, bbs_atrb_cd, bbs_expln, bbs_smry_cn, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES('BBS_GAL_004', '메인화면 SNS 블로그', '1  ', NULL, NULL, 'N', 'Y', 'Y', 'Y', NULL, 'ko ', 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_pp_m_bbs
(bbs_id, bbs_nm, bbs_atrb_cd, bbs_expln, bbs_smry_cn, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES('BBS_VDO_001', '기관소식 동영상', '1  ', NULL, NULL, 'N', 'Y', 'Y', 'Y', NULL, 'ko ', 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_pp_m_bbs
(bbs_id, bbs_nm, bbs_atrb_cd, bbs_expln, bbs_smry_cn, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES('BBS_VDO_002', '메인화면 SNS 유튜브', '1  ', NULL, NULL, 'N', 'Y', 'Y', 'Y', NULL, 'ko ', 'Y', NULL, NULL, NULL, NULL);



INSERT INTO kids_own.tb_pp_m_pst
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_group_id, thmb_id, fix_yn, fix_bgng_ymd, fix_end_ymd, vdo_url_addr, expsr_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(1, 'BBS_COM_001', '공지_게시글1', '공지_게시글1_내용', 15, '1', NULL, NULL, 'N', NULL, NULL, NULL, 'Y', '개발팀', NULL, 'test001', '2026-01-01 14:22:51.030', NULL, NULL);
INSERT INTO kids_own.tb_pp_m_pst
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_group_id, thmb_id, fix_yn, fix_bgng_ymd, fix_end_ymd, vdo_url_addr, expsr_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(2, 'BBS_COM_001', '공지_게시글2', '공지_게시글2_내용', 31, '1', NULL, NULL, 'N', NULL, NULL, NULL, 'Y', '개발팀', NULL, 'test001', '2026-01-02 14:22:51.030', NULL, NULL);
INSERT INTO kids_own.tb_pp_m_pst
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_group_id, thmb_id, fix_yn, fix_bgng_ymd, fix_end_ymd, vdo_url_addr, expsr_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(3, 'BBS_COM_001', '공지_게시글3', '공지_게시글3_내용', 37, '1', NULL, NULL, 'N', NULL, NULL, NULL, 'Y', '개발팀', NULL, 'test001', '2026-01-03 14:22:51.030', NULL, NULL);
INSERT INTO kids_own.tb_pp_m_pst
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_group_id, thmb_id, fix_yn, fix_bgng_ymd, fix_end_ymd, vdo_url_addr, expsr_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(4, 'BBS_COM_001', '공지_게시글4', '공지_게시글4_내용', 49, '1', NULL, NULL, 'N', NULL, NULL, NULL, 'Y', '개발팀', NULL, 'test001', '2026-01-04 14:22:51.030', NULL, NULL);
INSERT INTO kids_own.tb_pp_m_pst
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_group_id, thmb_id, fix_yn, fix_bgng_ymd, fix_end_ymd, vdo_url_addr, expsr_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(5, 'BBS_COM_001', '공지_게시글5', '공지_게시글5_내용', 50, '1', NULL, NULL, 'N', NULL, NULL, NULL, 'Y', '개발팀', NULL, 'test001', '2026-01-05 14:22:51.030', NULL, NULL);
INSERT INTO kids_own.tb_pp_m_pst
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_group_id, thmb_id, fix_yn, fix_bgng_ymd, fix_end_ymd, vdo_url_addr, expsr_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(6, 'BBS_COM_001', '공지_게시글6', '공지_게시글6_내용', 50, '1', NULL, NULL, 'N', NULL, NULL, NULL, 'Y', '개발팀', NULL, 'test001', '2026-01-06 14:22:51.030', NULL, NULL);
INSERT INTO kids_own.tb_pp_m_pst
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_group_id, thmb_id, fix_yn, fix_bgng_ymd, fix_end_ymd, vdo_url_addr, expsr_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(7, 'BBS_COM_001', '공지_게시글7', '공지_게시글7_내용', 50, '1', NULL, NULL, 'N', NULL, NULL, NULL, 'Y', '개발팀', NULL, 'test001', '2026-01-07 14:22:51.030', NULL, NULL);
INSERT INTO kids_own.tb_pp_m_pst
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_group_id, thmb_id, fix_yn, fix_bgng_ymd, fix_end_ymd, vdo_url_addr, expsr_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(8, 'BBS_COM_001', '공지_게시글8', '공지_게시글8_내용', 50, '1', NULL, NULL, 'N', NULL, NULL, NULL, 'Y', '개발팀', NULL, 'test001', '2026-01-08 14:22:51.030', NULL, NULL);
INSERT INTO kids_own.tb_pp_m_pst
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_group_id, thmb_id, fix_yn, fix_bgng_ymd, fix_end_ymd, vdo_url_addr, expsr_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(9, 'BBS_COM_001', '공지_게시글9', '공지_게시글9_내용', 50, '1', NULL, NULL, 'N', NULL, NULL, NULL, 'Y', '개발팀', NULL, 'test001', '2026-01-09 14:22:51.030', NULL, NULL);
INSERT INTO kids_own.tb_pp_m_pst
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_group_id, thmb_id, fix_yn, fix_bgng_ymd, fix_end_ymd, vdo_url_addr, expsr_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(10, 'BBS_COM_001', '공지_게시글10', '공지_게시글10_내용', 50, '1', NULL, NULL, 'N', NULL, NULL, NULL, 'Y', '개발팀', NULL, 'test001', '2026-01-10 14:22:51.030', NULL, NULL);
INSERT INTO kids_own.tb_pp_m_pst
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_group_id, thmb_id, fix_yn, fix_bgng_ymd, fix_end_ymd, vdo_url_addr, expsr_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(11, 'BBS_COM_001', '공지_게시글11', '공지_게시글11_내용', 50, '1', NULL, NULL, 'N', NULL, NULL, NULL, 'Y', '개발팀', NULL, 'test001', '2026-01-11 14:22:51.030', NULL, NULL);
INSERT INTO kids_own.tb_pp_m_pst
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_group_id, thmb_id, fix_yn, fix_bgng_ymd, fix_end_ymd, vdo_url_addr, expsr_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(12, 'BBS_COM_001', '공지_게시글12', '공지_게시글12_내용', 50, '1', NULL, NULL, 'N', NULL, NULL, NULL, 'Y', '개발팀', NULL, 'test001', '2026-01-12 14:22:51.030', NULL, NULL);
INSERT INTO kids_own.tb_pp_m_pst
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_group_id, thmb_id, fix_yn, fix_bgng_ymd, fix_end_ymd, vdo_url_addr, expsr_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(13, 'BBS_COM_001', '채용_게시글1', '채용_게시글1_내용', 50, '1', NULL, NULL, 'N', NULL, NULL, NULL, 'Y', '개발팀', NULL, 'test001', '2026-01-01 14:22:51.030', NULL, NULL);
INSERT INTO kids_own.tb_pp_m_pst
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_group_id, thmb_id, fix_yn, fix_bgng_ymd, fix_end_ymd, vdo_url_addr, expsr_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(14, 'BBS_COM_001', '채용_게시글2', '채용_게시글2_내용', 50, '1', NULL, NULL, 'N', NULL, NULL, NULL, 'Y', '개발팀', NULL, 'test001', '2026-01-02 14:22:51.030', NULL, NULL);
INSERT INTO kids_own.tb_pp_m_pst
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_group_id, thmb_id, fix_yn, fix_bgng_ymd, fix_end_ymd, vdo_url_addr, expsr_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(15, 'BBS_COM_001', '채용_게시글3', '채용_게시글3_내용', 50, '1', NULL, NULL, 'N', NULL, NULL, NULL, 'Y', '개발팀', NULL, 'test001', '2026-01-03 14:22:51.030', NULL, NULL);
INSERT INTO kids_own.tb_pp_m_pst
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_group_id, thmb_id, fix_yn, fix_bgng_ymd, fix_end_ymd, vdo_url_addr, expsr_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(16, 'BBS_COM_001', '뉴스레터_게시글1', '뉴스레터_게시글1_내용', 50, '1', NULL, NULL, 'N', NULL, NULL, NULL, 'Y', '개발팀', NULL, 'test001', '2026-01-04 14:22:51.030', NULL, NULL);
INSERT INTO kids_own.tb_pp_m_pst
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_group_id, thmb_id, fix_yn, fix_bgng_ymd, fix_end_ymd, vdo_url_addr, expsr_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(17, 'BBS_COM_001', '뉴스레터_게시글2', '뉴스레터_게시글2_내용', 50, '1', NULL, NULL, 'N', NULL, NULL, NULL, 'Y', '개발팀', NULL, 'test001', '2026-01-05 14:22:51.030', NULL, NULL);
INSERT INTO kids_own.tb_pp_m_pst
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_group_id, thmb_id, fix_yn, fix_bgng_ymd, fix_end_ymd, vdo_url_addr, expsr_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(18, 'BBS_COM_001', '뉴스레터_게시글3', '뉴스레터_게시글3_내용', 50, '1', NULL, NULL, 'N', NULL, NULL, NULL, 'Y', '개발팀', NULL, 'test001', '2026-01-06 14:22:51.030', NULL, NULL);
INSERT INTO kids_own.tb_pp_m_pst
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_group_id, thmb_id, fix_yn, fix_bgng_ymd, fix_end_ymd, vdo_url_addr, expsr_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(19, 'BBS_COM_001', '뉴스레터_게시글4', '뉴스레터_게시글4_내용', 50, '1', NULL, NULL, 'N', NULL, NULL, NULL, 'Y', '개발팀', NULL, 'test001', '2026-01-07 14:22:51.030', NULL, NULL);
INSERT INTO kids_own.tb_pp_m_pst
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_group_id, thmb_id, fix_yn, fix_bgng_ymd, fix_end_ymd, vdo_url_addr, expsr_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(20, 'BBS_COM_001', '뉴스레터_게시글5', '뉴스레터_게시글5_내용', 50, '1', NULL, NULL, 'N', NULL, NULL, NULL, 'Y', '개발팀', NULL, 'test001', '2026-01-08 14:22:51.030', NULL, NULL);
INSERT INTO kids_own.tb_pp_m_pst
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_group_id, thmb_id, fix_yn, fix_bgng_ymd, fix_end_ymd, vdo_url_addr, expsr_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(21, 'BBS_COM_001', '보도자료_게시글1', '보도_게시글1_내용', 50, '1', NULL, NULL, 'N', NULL, NULL, NULL, 'Y', '개발팀', NULL, 'test001', '2026-01-09 14:22:51.030', NULL, NULL);
INSERT INTO kids_own.tb_pp_m_pst
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_group_id, thmb_id, fix_yn, fix_bgng_ymd, fix_end_ymd, vdo_url_addr, expsr_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(22, 'BBS_COM_001', '보도자료_게시글2', '보도_게시글2_내용', 50, '1', NULL, NULL, 'N', NULL, NULL, NULL, 'Y', '개발팀', NULL, 'test001', '2026-01-10 14:22:51.030', NULL, NULL);
INSERT INTO kids_own.tb_pp_m_pst
(pst_sn, bbs_id, pst_ttl, pst_cn, pst_inq_cnt, pst_kogl_cprgt_type_cd, atch_file_group_id, thmb_id, fix_yn, fix_bgng_ymd, fix_end_ymd, vdo_url_addr, expsr_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES(23, 'BBS_COM_001', '보도자료_게시글3', '보도_게시글3_내용', 50, '1', NULL, NULL, 'N', NULL, NULL, NULL, 'Y', '개발팀', NULL, 'test001', '2026-01-11 14:22:51.030', NULL, NULL);
INSERT INTO kids_own.tb_pp_m_bbs
(bbs_id, bbs_nm, bbs_atrb_cd, bbs_expln, bbs_smry_cn, cmnt_use_yn, inq_cnt_expsr_yn, dept_expsr_yn, file_atch_yn, atch_psblty_file_cnt, lang_se_cd, use_yn, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES('BBS_COM_005', '기관소식 자료실 게시판', '1  ', NULL, NULL, 'N', 'Y', 'Y', 'Y', NULL, 'ko ', 'Y', NULL, NULL, NULL, NULL);






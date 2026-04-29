

SELECT length(atch_file_group_id) as len, count(*) as cnt, MAX(atch_file_group_id) as maxVal FROM kids_own.tb_ca_e_file_group_trsm where length(atch_file_group_id) <= 10
group by length(atch_file_group_id)
order by 1 asc

SELECT setval('sq_ca_atch_file_group_id', 13198, true);
SELECT setval('sq_ca_atch_file_id', COALESCE((SELECT MAX(atch_file_id::integer) FROM kids_own.tb_ca_e_file_trsm where length(atch_file_id) < 10), '1'), true);
SELECT setval('sq_ca_cntn_log_sn', COALESCE((SELECT MAX(prvc_hstry_sn)::INTEGER FROM kids_own.tb_ca_l_cntn_info_log), 1), true);
SELECT setval('sq_ca_eml_sndng_hist_sn', COALESCE((SELECT MAX(eml_sndng_hstry_sn)::INTEGER FROM kids_own.tb_ca_m_eml_sndng_hist), 1), true);
SELECT setval('sq_ca_eml_sndng_sn', COALESCE((SELECT MAX(eml_sndng_sn)::INTEGER FROM kids_own.tb_ca_m_eml_sndng), 1), true);
SELECT setval('sq_ca_menu_utztn_sn', COALESCE((SELECT MAX(menu_utztn_sn)::INTEGER FROM kids_own.tb_ca_l_task_acs_hstry), 1), true);
--SELECT setval('sq_ca_msg_img_sn', COALESCE((SELECT MAX(authrt_chg_sn) FROM kids_own.tb_pp_m_authrt_chg_hstry), 1), true);
SELECT setval('sq_ca_otpt_sn', COALESCE((SELECT MAX(otpt_sn)::INTEGER FROM kids_own.tb_ca_e_doc_otpt), 1), true);
--SELECT setval('sq_ca_prvc_hstry_mdfcn_sn', COALESCE((SELECT MAX(authrt_chg_sn) FROM kids_own.tb_pp_m_authrt_chg_hstry), 1), true);
--SELECT setval('sq_ca_prvc_hstry_sn', COALESCE((SELECT MAX(authrt_chg_sn) FROM kids_own.tb_pp_m_authrt_chg_hstry), 1), true);
--SELECT setval('sq_ca_seqno', COALESCE((SELECT MAX(authrt_chg_sn) FROM kids_own.tb_pp_m_authrt_chg_hstry), 1), true);
SELECT setval('sq_ca_sess_log_sn', COALESCE((SELECT MAX(sess_log_sn)::INTEGER FROM kids_own.tb_ca_l_sesn_log_info_mng), 1), true);
SELECT setval('sq_ca_token_sn', COALESCE((SELECT MAX(token_sn)::INTEGER FROM kids_own.tb_ca_m_mbr_token), 1), true);


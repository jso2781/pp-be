-- kids_own.sq_ca_atch_file_group_id definition

-- DROP SEQUENCE kids_own.sq_ca_atch_file_group_id;

CREATE SEQUENCE kids_own.sq_ca_atch_file_group_id
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_ca_atch_file_group_id OWNER TO kids_own;
GRANT ALL ON SEQUENCE kids_own.sq_ca_atch_file_group_id TO kids_own;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_group_id TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_group_id TO bo_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_group_id TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_group_id TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_group_id TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_group_id TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_group_id TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_group_id TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_group_id TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_group_id TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_group_id TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_group_id TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_group_id TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_group_id TO ca_dev;


-- kids_own.sq_ca_atch_file_id definition

-- DROP SEQUENCE kids_own.sq_ca_atch_file_id;

CREATE SEQUENCE kids_own.sq_ca_atch_file_id
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_ca_atch_file_id OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_ca_atch_file_id TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_id TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_id TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_id TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_id TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_id TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_id TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_id TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_id TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_id TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_id TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_id TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_id TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_id TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_atch_file_id TO bo_dev;


-- kids_own.sq_ca_cntn_log_sn definition

-- DROP SEQUENCE kids_own.sq_ca_cntn_log_sn;

CREATE SEQUENCE kids_own.sq_ca_cntn_log_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_ca_cntn_log_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_ca_cntn_log_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_cntn_log_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_cntn_log_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_cntn_log_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_cntn_log_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_cntn_log_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_cntn_log_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_cntn_log_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_cntn_log_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_cntn_log_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_cntn_log_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_cntn_log_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_cntn_log_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_cntn_log_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_cntn_log_sn TO bo_dev;


-- kids_own.sq_ca_eml_sndng_hist_sn definition

-- DROP SEQUENCE kids_own.sq_ca_eml_sndng_hist_sn;

CREATE SEQUENCE kids_own.sq_ca_eml_sndng_hist_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_ca_eml_sndng_hist_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_ca_eml_sndng_hist_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_hist_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_hist_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_hist_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_hist_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_hist_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_hist_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_hist_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_hist_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_hist_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_hist_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_hist_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_hist_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_hist_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_hist_sn TO bo_dev;


-- kids_own.sq_ca_eml_sndng_sn definition

-- DROP SEQUENCE kids_own.sq_ca_eml_sndng_sn;

CREATE SEQUENCE kids_own.sq_ca_eml_sndng_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_ca_eml_sndng_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_ca_eml_sndng_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_eml_sndng_sn TO bo_dev;


-- kids_own.sq_ca_menu_utztn_sn definition

-- DROP SEQUENCE kids_own.sq_ca_menu_utztn_sn;

CREATE SEQUENCE kids_own.sq_ca_menu_utztn_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_ca_menu_utztn_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_ca_menu_utztn_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_menu_utztn_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_menu_utztn_sn TO bo_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_menu_utztn_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_menu_utztn_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_menu_utztn_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_menu_utztn_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_menu_utztn_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_menu_utztn_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_menu_utztn_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_menu_utztn_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_menu_utztn_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_menu_utztn_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_menu_utztn_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_menu_utztn_sn TO ca_dev;


-- kids_own.sq_ca_msg_img_sn definition

-- DROP SEQUENCE kids_own.sq_ca_msg_img_sn;

CREATE SEQUENCE kids_own.sq_ca_msg_img_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_ca_msg_img_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_ca_msg_img_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_msg_img_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_msg_img_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_msg_img_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_msg_img_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_msg_img_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_msg_img_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_msg_img_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_msg_img_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_msg_img_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_msg_img_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_msg_img_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_msg_img_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_msg_img_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_msg_img_sn TO bo_dev;


-- kids_own.sq_ca_otpt_sn definition

-- DROP SEQUENCE kids_own.sq_ca_otpt_sn;

CREATE SEQUENCE kids_own.sq_ca_otpt_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_ca_otpt_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_ca_otpt_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_otpt_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_otpt_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_otpt_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_otpt_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_otpt_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_otpt_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_otpt_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_otpt_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_otpt_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_otpt_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_otpt_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_otpt_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_otpt_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_otpt_sn TO bo_dev;


-- kids_own.sq_ca_prvc_hstry_mdfcn_sn definition

-- DROP SEQUENCE kids_own.sq_ca_prvc_hstry_mdfcn_sn;

CREATE SEQUENCE kids_own.sq_ca_prvc_hstry_mdfcn_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_ca_prvc_hstry_mdfcn_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_ca_prvc_hstry_mdfcn_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_mdfcn_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_mdfcn_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_mdfcn_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_mdfcn_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_mdfcn_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_mdfcn_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_mdfcn_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_mdfcn_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_mdfcn_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_mdfcn_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_mdfcn_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_mdfcn_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_mdfcn_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_mdfcn_sn TO bo_dev;


-- kids_own.sq_ca_prvc_hstry_sn definition

-- DROP SEQUENCE kids_own.sq_ca_prvc_hstry_sn;

CREATE SEQUENCE kids_own.sq_ca_prvc_hstry_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_ca_prvc_hstry_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_ca_prvc_hstry_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_prvc_hstry_sn TO bo_dev;


-- kids_own.sq_ca_seqno definition

-- DROP SEQUENCE kids_own.sq_ca_seqno;

CREATE SEQUENCE kids_own.sq_ca_seqno
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_ca_seqno OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_ca_seqno TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_seqno TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_seqno TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_seqno TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_seqno TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_seqno TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_seqno TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_seqno TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_seqno TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_seqno TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_seqno TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_seqno TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_seqno TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_seqno TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_seqno TO bo_dev;


-- kids_own.sq_ca_sess_log_sn definition

-- DROP SEQUENCE kids_own.sq_ca_sess_log_sn;

CREATE SEQUENCE kids_own.sq_ca_sess_log_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_ca_sess_log_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_ca_sess_log_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_sess_log_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_sess_log_sn TO bo_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_sess_log_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_sess_log_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_sess_log_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_sess_log_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_sess_log_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_sess_log_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_sess_log_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_sess_log_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_sess_log_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_sess_log_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_sess_log_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_sess_log_sn TO ca_dev;


-- kids_own.sq_ca_token_sn definition

-- DROP SEQUENCE kids_own.sq_ca_token_sn;

CREATE SEQUENCE kids_own.sq_ca_token_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_ca_token_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_ca_token_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_token_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_token_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_token_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_token_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_token_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_token_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_token_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_token_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_token_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_token_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_token_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_token_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_token_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_ca_token_sn TO bo_dev;


-- kids_own.sq_pp_admin_prd_cutn_sn definition

-- DROP SEQUENCE kids_own.sq_pp_admin_prd_cutn_sn;

CREATE SEQUENCE kids_own.sq_pp_admin_prd_cutn_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_admin_prd_cutn_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_admin_prd_cutn_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_admin_prd_cutn_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_admin_prd_cutn_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_admin_prd_cutn_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_admin_prd_cutn_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_admin_prd_cutn_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_admin_prd_cutn_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_admin_prd_cutn_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_admin_prd_cutn_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_admin_prd_cutn_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_admin_prd_cutn_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_admin_prd_cutn_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_admin_prd_cutn_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_admin_prd_cutn_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_admin_prd_cutn_sn TO bo_dev;


-- kids_own.sq_pp_age_condi_sn definition

-- DROP SEQUENCE kids_own.sq_pp_age_condi_sn;

CREATE SEQUENCE kids_own.sq_pp_age_condi_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_age_condi_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_age_condi_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_age_condi_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_age_condi_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_age_condi_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_age_condi_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_age_condi_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_age_condi_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_age_condi_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_age_condi_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_age_condi_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_age_condi_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_age_condi_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_age_condi_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_age_condi_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_age_condi_sn TO bo_dev;


-- kids_own.sq_pp_authrt_chg_sn definition

-- DROP SEQUENCE kids_own.sq_pp_authrt_chg_sn;

CREATE SEQUENCE kids_own.sq_pp_authrt_chg_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_authrt_chg_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_authrt_chg_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_authrt_chg_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_authrt_chg_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_authrt_chg_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_authrt_chg_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_authrt_chg_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_authrt_chg_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_authrt_chg_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_authrt_chg_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_authrt_chg_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_authrt_chg_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_authrt_chg_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_authrt_chg_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_authrt_chg_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_authrt_chg_sn TO bo_dev;


-- kids_own.sq_pp_bzmn_task_mng_no definition

-- DROP SEQUENCE kids_own.sq_pp_bzmn_task_mng_no;

CREATE SEQUENCE kids_own.sq_pp_bzmn_task_mng_no
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_bzmn_task_mng_no OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_bzmn_task_mng_no TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_bzmn_task_mng_no TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_bzmn_task_mng_no TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_bzmn_task_mng_no TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_bzmn_task_mng_no TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_bzmn_task_mng_no TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_bzmn_task_mng_no TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_bzmn_task_mng_no TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_bzmn_task_mng_no TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_bzmn_task_mng_no TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_bzmn_task_mng_no TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_bzmn_task_mng_no TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_bzmn_task_mng_no TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_bzmn_task_mng_no TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_bzmn_task_mng_no TO bo_dev;


-- kids_own.sq_pp_cmnt_sn definition

-- DROP SEQUENCE kids_own.sq_pp_cmnt_sn;

CREATE SEQUENCE kids_own.sq_pp_cmnt_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_cmnt_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_cmnt_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cmnt_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cmnt_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cmnt_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cmnt_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cmnt_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cmnt_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cmnt_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cmnt_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cmnt_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cmnt_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cmnt_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cmnt_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cmnt_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cmnt_sn TO bo_dev;


-- kids_own.sq_pp_cpct_cutn_sn definition

-- DROP SEQUENCE kids_own.sq_pp_cpct_cutn_sn;

CREATE SEQUENCE kids_own.sq_pp_cpct_cutn_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_cpct_cutn_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_cpct_cutn_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cpct_cutn_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cpct_cutn_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cpct_cutn_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cpct_cutn_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cpct_cutn_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cpct_cutn_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cpct_cutn_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cpct_cutn_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cpct_cutn_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cpct_cutn_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cpct_cutn_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cpct_cutn_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cpct_cutn_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cpct_cutn_sn TO bo_dev;


-- kids_own.sq_pp_cth_condi_sn definition

-- DROP SEQUENCE kids_own.sq_pp_cth_condi_sn;

CREATE SEQUENCE kids_own.sq_pp_cth_condi_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_cth_condi_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_cth_condi_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cth_condi_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cth_condi_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cth_condi_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cth_condi_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cth_condi_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cth_condi_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cth_condi_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cth_condi_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cth_condi_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cth_condi_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cth_condi_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cth_condi_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cth_condi_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_cth_condi_sn TO bo_dev;


-- kids_own.sq_pp_dclr_sn definition

-- DROP SEQUENCE kids_own.sq_pp_dclr_sn;

CREATE SEQUENCE kids_own.sq_pp_dclr_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_dclr_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_dclr_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dclr_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dclr_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dclr_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dclr_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dclr_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dclr_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dclr_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dclr_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dclr_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dclr_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dclr_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dclr_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dclr_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dclr_sn TO bo_dev;


-- kids_own.sq_pp_dgstfn_exmn_sn definition

-- DROP SEQUENCE kids_own.sq_pp_dgstfn_exmn_sn;

CREATE SEQUENCE kids_own.sq_pp_dgstfn_exmn_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_dgstfn_exmn_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_dgstfn_exmn_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dgstfn_exmn_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dgstfn_exmn_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dgstfn_exmn_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dgstfn_exmn_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dgstfn_exmn_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dgstfn_exmn_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dgstfn_exmn_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dgstfn_exmn_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dgstfn_exmn_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dgstfn_exmn_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dgstfn_exmn_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dgstfn_exmn_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dgstfn_exmn_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_dgstfn_exmn_sn TO bo_dev;


-- kids_own.sq_pp_eff_group_dpcn_sn definition

-- DROP SEQUENCE kids_own.sq_pp_eff_group_dpcn_sn;

CREATE SEQUENCE kids_own.sq_pp_eff_group_dpcn_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_eff_group_dpcn_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_eff_group_dpcn_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_eff_group_dpcn_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_eff_group_dpcn_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_eff_group_dpcn_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_eff_group_dpcn_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_eff_group_dpcn_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_eff_group_dpcn_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_eff_group_dpcn_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_eff_group_dpcn_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_eff_group_dpcn_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_eff_group_dpcn_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_eff_group_dpcn_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_eff_group_dpcn_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_eff_group_dpcn_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_eff_group_dpcn_sn TO bo_dev;


-- kids_own.sq_pp_exprt_no definition

-- DROP SEQUENCE kids_own.sq_pp_exprt_no;

CREATE SEQUENCE kids_own.sq_pp_exprt_no
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_exprt_no OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_exprt_no TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_no TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_no TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_no TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_no TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_no TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_no TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_no TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_no TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_no TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_no TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_no TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_no TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_no TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_no TO bo_dev;


-- kids_own.sq_pp_exprt_task_sn definition

-- DROP SEQUENCE kids_own.sq_pp_exprt_task_sn;

CREATE SEQUENCE kids_own.sq_pp_exprt_task_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_exprt_task_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_exprt_task_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_task_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_task_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_task_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_task_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_task_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_task_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_task_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_task_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_task_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_task_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_task_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_task_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_task_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_exprt_task_sn TO bo_dev;


-- kids_own.sq_pp_faq_sn definition

-- DROP SEQUENCE kids_own.sq_pp_faq_sn;

CREATE SEQUENCE kids_own.sq_pp_faq_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_faq_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_faq_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_faq_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_faq_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_faq_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_faq_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_faq_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_faq_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_faq_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_faq_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_faq_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_faq_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_faq_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_faq_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_faq_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_faq_sn TO bo_dev;


-- kids_own.sq_pp_file_sn definition

-- DROP SEQUENCE kids_own.sq_pp_file_sn;

CREATE SEQUENCE kids_own.sq_pp_file_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_file_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_file_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_file_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_file_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_file_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_file_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_file_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_file_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_file_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_file_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_file_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_file_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_file_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_file_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_file_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_file_sn TO bo_dev;


-- kids_own.sq_pp_form_sn definition

-- DROP SEQUENCE kids_own.sq_pp_form_sn;

CREATE SEQUENCE kids_own.sq_pp_form_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_form_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_form_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_form_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_form_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_form_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_form_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_form_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_form_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_form_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_form_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_form_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_form_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_form_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_form_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_form_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_form_sn TO bo_dev;


-- kids_own.sq_pp_lacp_sn definition

-- DROP SEQUENCE kids_own.sq_pp_lacp_sn;

CREATE SEQUENCE kids_own.sq_pp_lacp_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_lacp_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_lacp_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_lacp_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_lacp_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_lacp_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_lacp_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_lacp_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_lacp_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_lacp_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_lacp_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_lacp_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_lacp_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_lacp_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_lacp_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_lacp_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_lacp_sn TO bo_dev;


-- kids_own.sq_pp_mbr_no_1 definition

-- DROP SEQUENCE kids_own.sq_pp_mbr_no_1;

CREATE SEQUENCE kids_own.sq_pp_mbr_no_1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_mbr_no_1 OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_mbr_no_1 TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_mbr_no_1 TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_mbr_no_1 TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_mbr_no_1 TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_mbr_no_1 TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_mbr_no_1 TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_mbr_no_1 TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_mbr_no_1 TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_mbr_no_1 TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_mbr_no_1 TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_mbr_no_1 TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_mbr_no_1 TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_mbr_no_1 TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_mbr_no_1 TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_mbr_no_1 TO bo_dev;


-- kids_own.sq_pp_opnn_sn definition

-- DROP SEQUENCE kids_own.sq_pp_opnn_sn;

CREATE SEQUENCE kids_own.sq_pp_opnn_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_opnn_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_opnn_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_opnn_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_opnn_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_opnn_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_opnn_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_opnn_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_opnn_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_opnn_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_opnn_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_opnn_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_opnn_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_opnn_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_opnn_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_opnn_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_opnn_sn TO bo_dev;


-- kids_own.sq_pp_order_no_1 definition

-- DROP SEQUENCE kids_own.sq_pp_order_no_1;

CREATE SEQUENCE kids_own.sq_pp_order_no_1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_order_no_1 OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_order_no_1 TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_order_no_1 TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_order_no_1 TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_order_no_1 TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_order_no_1 TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_order_no_1 TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_order_no_1 TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_order_no_1 TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_order_no_1 TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_order_no_1 TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_order_no_1 TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_order_no_1 TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_order_no_1 TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_order_no_1 TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_order_no_1 TO bo_dev;


-- kids_own.sq_pp_pgw_condi_sn definition

-- DROP SEQUENCE kids_own.sq_pp_pgw_condi_sn;

CREATE SEQUENCE kids_own.sq_pp_pgw_condi_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_pgw_condi_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_pgw_condi_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pgw_condi_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pgw_condi_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pgw_condi_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pgw_condi_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pgw_condi_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pgw_condi_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pgw_condi_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pgw_condi_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pgw_condi_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pgw_condi_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pgw_condi_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pgw_condi_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pgw_condi_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pgw_condi_sn TO bo_dev;


-- kids_own.sq_pp_popup_sn definition

-- DROP SEQUENCE kids_own.sq_pp_popup_sn;

CREATE SEQUENCE kids_own.sq_pp_popup_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_popup_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_popup_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_popup_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_popup_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_popup_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_popup_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_popup_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_popup_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_popup_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_popup_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_popup_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_popup_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_popup_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_popup_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_popup_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_popup_sn TO bo_dev;


-- kids_own.sq_pp_pst_sn definition

-- DROP SEQUENCE kids_own.sq_pp_pst_sn;

CREATE SEQUENCE kids_own.sq_pp_pst_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_pst_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_pst_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pst_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pst_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pst_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pst_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pst_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pst_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pst_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pst_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pst_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pst_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pst_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pst_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pst_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_pst_sn TO bo_dev;


-- kids_own.sq_pp_snctz_cutn_sn definition

-- DROP SEQUENCE kids_own.sq_pp_snctz_cutn_sn;

CREATE SEQUENCE kids_own.sq_pp_snctz_cutn_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_snctz_cutn_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_snctz_cutn_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_snctz_cutn_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_snctz_cutn_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_snctz_cutn_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_snctz_cutn_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_snctz_cutn_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_snctz_cutn_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_snctz_cutn_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_snctz_cutn_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_snctz_cutn_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_snctz_cutn_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_snctz_cutn_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_snctz_cutn_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_snctz_cutn_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_snctz_cutn_sn TO bo_dev;


-- kids_own.sq_pp_tb_pp_m_conts_sn definition

-- DROP SEQUENCE kids_own.sq_pp_tb_pp_m_conts_sn;

CREATE SEQUENCE kids_own.sq_pp_tb_pp_m_conts_sn
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_tb_pp_m_conts_sn OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_tb_pp_m_conts_sn TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_tb_pp_m_conts_sn TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_tb_pp_m_conts_sn TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_tb_pp_m_conts_sn TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_tb_pp_m_conts_sn TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_tb_pp_m_conts_sn TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_tb_pp_m_conts_sn TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_tb_pp_m_conts_sn TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_tb_pp_m_conts_sn TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_tb_pp_m_conts_sn TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_tb_pp_m_conts_sn TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_tb_pp_m_conts_sn TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_tb_pp_m_conts_sn TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_tb_pp_m_conts_sn TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_tb_pp_m_conts_sn TO bo_dev;


-- kids_own.sq_pp_trms_stt_sn_1 definition

-- DROP SEQUENCE kids_own.sq_pp_trms_stt_sn_1;

CREATE SEQUENCE kids_own.sq_pp_trms_stt_sn_1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE kids_own.sq_pp_trms_stt_sn_1 OWNER TO postgres;
GRANT ALL ON SEQUENCE kids_own.sq_pp_trms_stt_sn_1 TO postgres;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_trms_stt_sn_1 TO cm_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_trms_stt_sn_1 TO cr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_trms_stt_sn_1 TO dr_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_trms_stt_sn_1 TO ex_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_trms_stt_sn_1 TO pp_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_trms_stt_sn_1 TO cm_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_trms_stt_sn_1 TO cr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_trms_stt_sn_1 TO dr_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_trms_stt_sn_1 TO ex_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_trms_stt_sn_1 TO pp_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_trms_stt_sn_1 TO ca_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_trms_stt_sn_1 TO ca_dev;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_trms_stt_sn_1 TO bo_app;
GRANT USAGE, SELECT ON SEQUENCE kids_own.sq_pp_trms_stt_sn_1 TO bo_dev;
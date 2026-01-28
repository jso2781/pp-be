delete from tb_pp_m_inst_task;
delete from tb_pp_m_inst;

INSERT INTO kids_own.tb_pp_m_inst
(brno, inst_nm, del_yn, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES('9999999999', '국립안양병원', 'N', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_pp_m_inst
(brno, inst_nm, del_yn, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES('9999999998', '국립안양병원_테스트', 'N', NULL, NULL, NULL, NULL);

INSERT INTO kids_own.tb_pp_m_inst_task
(brno, task_se_cd, mbr_no, use_yn, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES('9999999999', 'SYS1', NULL, 'Y', NULL, NULL, NULL, NULL);
INSERT INTO kids_own.tb_pp_m_inst_task
(brno, task_se_cd, mbr_no, use_yn, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES('9999999999', 'SYS2', NULL, 'Y', NULL, NULL, NULL, NULL);

CREATE SEQUENCE kids_own.sq_pp_m_exprt_task_sn_1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 1
	CACHE 1
	NO CYCLE;
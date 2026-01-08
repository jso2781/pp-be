INSERT INTO "KIDS_OWN"."TB_PP_M_ROLE"
(role_cd, role_nm, role_type, role_expln_cn, use_yn, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id)
values
('superuser', '전체관리자', 'super', '전체 시스템 관리', 'Y', 'superuser', 'superuser', 'superuser', CURRENT_TIMESTAMP, 'SYSTEM', 'superuser', CURRENT_TIMESTAMP, 'SYSTEM'
),
('admin', '포탈 관리자', 'admin', '포탈 시스템 관리(사업장별 업무 승인권자 권한 부여포함)', 'Y', 'superuser', 'superuser', 'superuser', CURRENT_TIMESTAMP, 'SYSTEM', 'superuser', CURRENT_TIMESTAMP, 'SYSTEM'
),
('user', '포탈 사용자', 'user', '포탈 시스템 사용자', 'Y', 'user', 'user', 'user', CURRENT_TIMESTAMP, 'SYSTEM', 'user', CURRENT_TIMESTAMP, 'SYSTEM'
),
('approver', '업무 승인자', 'expert', '특정 법인의 업무 승인자(특정 법인의 전문가 대상으로 업무승인)', 'Y', 'approver', 'approver', 'approver', CURRENT_TIMESTAMP, 'SYSTEM', 'admin', CURRENT_TIMESTAMP, 'SYSTEM'
),
('expert', '전문가', 'expert', '특정 법인의 전문가', 'Y', 'expert', 'expert', 'expert', CURRENT_TIMESTAMP, 'SYSTEM', 'expert', CURRENT_TIMESTAMP, 'SYSTEM'
)
;
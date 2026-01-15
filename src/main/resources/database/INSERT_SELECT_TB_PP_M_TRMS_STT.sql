insert into "KIDS_OWN"."TB_PP_M_TRMS_STT"
select nextval('"KIDS_OWN"."TB_PP_M_TRMS_STT_SEQ"'), trms_stt_cd, '20260114', trms_stt_end_day, trms_stt_cn, atch_file_id, wrtr_dept_nm, mdfr_dept_nm, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id
from "KIDS_OWN"."TB_PP_M_TRMS_STT"
where trms_stt_cd IN('UTZTN', 'STT_PRVC', 'CLCT', 'STTY_AGT')
;
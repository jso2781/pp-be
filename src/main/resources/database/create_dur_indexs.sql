-- 대국민포털_DUR병용금기기본(인덱스 1)
CREATE INDEX CONCURRENTLY idx_tb_pp_m_dur_conc_bann_1
ON kids_own.tb_pp_m_dur_conc_bann
USING gin (lower(igrd_nm_1) gin_trgm_ops);

-- 대국민포털_DUR병용금기기본(인덱스 2)
CREATE INDEX CONCURRENTLY idx_tb_pp_m_dur_conc_bann_2
ON kids_own.tb_pp_m_dur_conc_bann
USING gin (lower(igrd_nm_2) gin_trgm_ops);

-- 대국민포털_DUR병용금기기본(인덱스 3)
CREATE INDEX CONCURRENTLY idx_tb_pp_m_dur_conc_bann_3
ON kids_own.tb_pp_m_dur_conc_bann
USING gin (lower(mfds_igrd_nm_cn_1) gin_trgm_ops);

-- 대국민포털_DUR병용금기기본(인덱스 4)
CREATE INDEX CONCURRENTLY idx_tb_pp_m_dur_conc_bann_4
ON kids_own.tb_pp_m_dur_conc_bann
USING gin (lower(mfds_igrd_nm_cn_2) gin_trgm_ops);


/*
-- 대국민포털_DUR연령금기기본(인덱스 1)
CREATE INDEX CONCURRENTLY idx_tb_pp_m_dur_age_bann_1
ON kids_own.tb_pp_m_dur_age_bann(lower(igrd_nm));

-- 대국민포털_DUR연령금기기본(인덱스 2)
CREATE INDEX CONCURRENTLY idx_tb_pp_m_dur_age_bann_2
ON kids_own.tb_pp_m_dur_age_bann(lower(mfds_igrd_nm_cn));

-- 대국민포털_DUR임부금기기본 인덱스
CREATE INDEX CONCURRENTLY idx_tb_pp_m_dur_prgnt_bann_1
ON kids_own.tb_pp_m_dur_prgnt_bann(lower(igrd_nm));

-- 대국민포털_DUR용량주의기본(인덱스 1) 
CREATE INDEX CONCURRENTLY idx_tb_pp_m_dur_cpct_1
ON kids_own.tb_pp_m_dur_cpct(lower(gnrl_nm));

-- 대국민포털_DUR용량주의기본(인덱스 2) 
CREATE INDEX CONCURRENTLY idx_tb_pp_m_dur_cpct_2
ON kids_own.tb_pp_m_dur_cpct(lower(mfds_igrd_nm_cn));

-- 대국민포털_DUR투여기간주의기본(인덱스 1) 
CREATE INDEX CONCURRENTLY idx_tb_pp_m_dur_dosage_1
ON kids_own.tb_pp_m_dur_dosage(lower(gnrl_nm));

-- 대국민포털_DUR투여기간주의기본(인덱스 2) 
CREATE INDEX CONCURRENTLY idx_tb_pp_m_dur_dosage_2
ON kids_own.tb_pp_m_dur_dosage(lower(mfds_igrd_nm_cn));

-- 대국민포털_DUR효능군중복기본(인덱스 1)
CREATE INDEX CONCURRENTLY idx_tb_pp_m_dur_eftgrp_1
ON kids_own.tb_pp_m_dur_eftgrp(lower(gnrl_nm));

-- 대국민포털_DUR효능군중복기본(인덱스 2)
CREATE INDEX CONCURRENTLY idx_tb_pp_m_dur_eftgrp_2
ON kids_own.tb_pp_m_dur_eftgrp(lower(mfds_igrd_nm_cn));

-- 대국민포털_DUR노인주의기본(인덱스 1)
CREATE INDEX CONCURRENTLY idx_tb_pp_m_dur_snctz_1
ON kids_own.tb_pp_m_dur_snctz(lower(igrd_nm));

-- 대국민포털_DUR노인주의기본(인덱스 2)
CREATE INDEX CONCURRENTLY idx_tb_pp_m_dur_snctz_2
ON kids_own.tb_pp_m_dur_snctz(lower(mfds_igrd_nm_cn));

-- 대국민포털_DUR수유부주의기본(인덱스 1)
CREATE INDEX CONCURRENTLY idx_tb_pp_m_dur_nursw_1
ON kids_own.tb_pp_m_dur_nursw(lower(igrd_nm));

-- 대국민포털_DUR수유부주의기본(인덱스 2)
CREATE INDEX CONCURRENTLY idx_tb_pp_m_dur_nursw_2
ON kids_own.tb_pp_m_dur_nursw(lower(mfds_igrd_nm_cn));

-- 의약성분_(원료)성분(인덱스 1)
CREATE INDEX CONCURRENTLY idx_drc_ingr_1
ON us_dsadba.drc_ingr(lower(ingr_eng_name));
*/
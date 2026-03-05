SELECT
             igrd_nm                /* 검색한 제품의 성분  */
            ,prdct_nm               /* 검색한 제품명 */
            ,COALESCE(
                jsonb_agg(
                    jsonb_build_object(
                        'prdct_nm', A.prdct_nm,
                        'igrd_nm', A.igrd_nm,
                        'prohibit_igrd_nm', A.prohibit_igrd_nm,
                        'dtl_info_cn', A.dtl_info_cn,
                        'rmrk_cn', A.rmrk_cn
                    )
                ) FILTER (WHERE A.bann_type_cd = 'conc'), '[]'::jsonb
             ) AS conc_json_array
            ,COALESCE(
                jsonb_agg(
                    jsonb_build_object(
                        'prdct_nm', A.prdct_nm,
                        'igrd_nm', A.igrd_nm,
                        'rlvt_age', A.rlvt_age,
                        'rlvt_age_unit_nm', A.rlvt_age_unit_nm,
                        'age_prcs_cnd_nm', A.age_prcs_cnd_nm,
                        'dtl_info_cn', A.dtl_info_cn
                    )
                ) FILTER (WHERE A.bann_type_cd = 'age'), '[]'::jsonb
             ) AS age_json_array
            ,COALESCE(
                jsonb_agg(
                    jsonb_build_object(
                        'prdct_nm', A.prdct_nm,
                        'igrd_nm', A.igrd_nm,
                        'condi_grd_cd', A.condi_grd_cd,
                        'dtl_info_cn', A.dtl_info_cn
                    )
                ) FILTER (WHERE A.bann_type_cd = 'prgnt'), '[]'::jsonb
             ) AS prgnt_json_array
            ,COALESCE(
                jsonb_agg(
                    jsonb_build_object(
                        'prdct_nm', A.prdct_nm,
                        'igrd_nm', A.igrd_nm,
                        'day_max_admin_cpct', A.day_max_admin_cpct,
                        'dtl_info_cn', A.dtl_info_cn
                    )
                ) FILTER (WHERE A.bann_type_cd = 'cpct'), '[]'::jsonb
             ) AS cpct_json_array
            ,COALESCE(
                jsonb_agg(
                    jsonb_build_object(
                        'prdct_nm', A.prdct_nm,
                        'igrd_nm', A.igrd_nm,
                        'max_admin_prd_day_cnt', A.max_admin_prd_day_cnt,
                        'rmrk_cn', A.rmrk_cn
                    )
                ) FILTER (WHERE A.bann_type_cd = 'dosage'), '[]'::jsonb
             ) AS dosage_json_array
            ,COALESCE(
                jsonb_agg(
                    jsonb_build_object(
                        'prdct_nm', A.prdct_nm,
                        'igrd_nm', A.igrd_nm,
                        'eff_group_nm', A.eff_group_nm,
                        'group_nm', A.group_nm
                    )
                ) FILTER (WHERE A.bann_type_cd = 'eftgrp'), '[]'::jsonb
             ) AS eftgrp_json_array
            ,COALESCE(
                jsonb_agg(
                    jsonb_build_object(
                        'prdct_nm', A.prdct_nm,
                        'igrd_nm', A.igrd_nm,
                        'rmrk_cn', A.rmrk_cn
                    )
                ) FILTER (WHERE A.bann_type_cd = 'snctz'), '[]'::jsonb
             ) AS snctz_json_array
            ,COALESCE(
                jsonb_agg(
                    jsonb_build_object(
                        'prdct_nm', A.prdct_nm,
                        'igrd_nm', A.igrd_nm,
                        'rmrk_cn', A.rmrk_cn
                    )
                ) FILTER (WHERE A.bann_type_cd = 'nursw'), '[]'::jsonb
             ) AS nursw_json_array
        FROM
        (
            /* 대국민포털_DUR병용금기기본 */
            select distinct
                    'conc' as bann_type_cd

                            ,null as prdct_nm                       /* 검색한 제품명 */

                    ,igrd_nm_1 as igrd_nm                           /* 검색한 제품의 성분 */
                    ,igrd_nm_2 as prohibit_igrd_nm                  /* 병용금기 성분 */
                    ,null as rlvt_age
                    ,null as rlvt_age_unit_nm
                    ,null as age_prcs_cnd_nm
                    ,null as condi_grd_cd
                    ,null as day_max_admin_cpct
                    ,null as max_admin_prd_day_cnt
                    ,null as eff_group_nm
                    ,null as group_nm
                    ,condi_rsn as dtl_info_cn                       /* 상세정보 */
                    ,rmrk_cn                                        /* 비고 */
            FROM kids_own.tb_pp_m_dur_conc_bann
            WHERE oper_stts_cd = 'O'

                AND lower(igrd_nm_1) like '%' || lower('aspirin') || '%'

            UNION ALL
            SELECT distinct
                    'conc' as bann_type_cd

                            ,null as prdct_nm                       /* 검색한 제품명 */

                    ,igrd_nm_2 as igrd_nm                           /* 검색한 제품의 성분 */
                    ,igrd_nm_1 as prohibit_igrd_nm                  /* 병용금기 성분 */
                    ,null as rlvt_age
                    ,null as rlvt_age_unit_nm
                    ,null as age_prcs_cnd_nm
                    ,null as condi_grd_cd
                    ,null as day_max_admin_cpct
                    ,null as max_admin_prd_day_cnt
                    ,null as eff_group_nm
                    ,null as group_nm
                    ,condi_rsn as dtl_info_cn                       /* 상세정보 */
                    ,rmrk_cn                                        /* 비고 */
            FROM kids_own.tb_pp_m_dur_conc_bann
            WHERE oper_stts_cd = 'O'

                AND lower(igrd_nm_2) like '%' || lower('aspirin') || '%'

            UNION ALL
            /* 대국민포털_DUR연령금기기본 */
            SELECT distinct
                    'age' as bann_type_cd

                            ,null as prdct_nm                       /* 검색한 제품명 */

                    ,igrd_nm                                        /* 검색한 제품의 성분 */
                    ,null as prohibit_igrd_nm
                    ,rlvt_age::varchar                              /* 해당 연령 */ 
                    ,rlvt_age_unit_nm                               /* 해당 연령 단위명 */
                    ,age_prcs_cnd_nm                                /* 연령처리조건명 */
                    ,null as condi_grd_cd
                    ,null as day_max_admin_cpct
                    ,null as max_admin_prd_day_cnt
                    ,null as eff_group_nm
                    ,null as group_nm
                    ,dtl_info_cn                                    /* 상세정보 */
                    ,null as rmrk_cn
            FROM kids_own.tb_pp_m_dur_age_bann
            WHERE oper_stts_cd = 'O'

                AND lower(igrd_nm) like '%' || lower('aspirin') || '%'

            UNION ALL
            /* 대국민포털_DUR임부금기기본 */
            SELECT distinct
                    'prgnt' as bann_type_cd

                            ,null as prdct_nm                       /* 검색한 제품명 */

                    ,igrd_nm                                        /* 검색한 제품의 성분 */
                    ,null as prohibit_igrd_nm
                    ,null as rlvt_age
                    ,null as rlvt_age_unit_nm
                    ,null as age_prcs_cnd_nm
                    ,condi_grd_cd                                   /* 금기등급코드 */
                    ,null as day_max_admin_cpct
                    ,null as max_admin_prd_day_cnt
                    ,null as eff_group_nm
                    ,null as group_nm
                    ,dtl_info_cn                                    /* 상세정보 */
                    ,null as rmrk_cn
            FROM kids_own.tb_pp_m_dur_prgnt_bann
            WHERE oper_stts_cd = 'O'

                AND lower(igrd_nm) like '%' || lower('aspirin') || '%'

            UNION ALL
            /* 대국민포털_DUR용량주의기본 */
            SELECT distinct
                    'cpct' as bann_type_cd

                            ,null as prdct_nm                       /* 검색한 제품명 */

                    ,gnrl_nm as igrd_nm                             /* 검색한 제품의 성분 */
                    ,null as prohibit_igrd_nm
                    ,null as rlvt_age
                    ,null as rlvt_age_unit_nm
                    ,null as age_prcs_cnd_nm
                    ,null as condi_grd_cd
                    ,day_max_admin_cpct_cn || ' ' || day_max_admin_crtr_cpct as day_max_admin_cpct        /* 1일 최대용량 */
                    ,null as max_admin_prd_day_cnt
                    ,null as eff_group_nm
                    ,null as group_nm
                    ,dtl_cn as dtl_info_cn                          /* 상세정보(비고 대체) */
                    ,null as rmrk_cn
            FROM kids_own.tb_pp_m_dur_cpct
            WHERE oper_stts_cd = 'O'

                AND (lower(gnrl_nm) like '%' || lower('aspirin') || '%' OR lower(mfds_igrd_nm_cn) like '%' || lower('aspirin') || '%')

            UNION ALL
            /* 대국민포털_DUR투여기간주의기본 */
            SELECT distinct
                    'dosage' as bann_type_cd

                            ,null as prdct_nm                       /* 검색한 제품명 */

                    ,gnrl_nm as igrd_nm                             /* 검색한 제품의 성분 */
                    ,null as prohibit_igrd_nm
                    ,null as rlvt_age
                    ,null as rlvt_age_unit_nm
                    ,null as age_prcs_cnd_nm
                    ,null as condi_grd_cd
                    ,null as day_max_admin_cpct
                    ,max_admin_prd_day_cnt::varchar                 /* 최대투여기간(일) */
                    ,null as eff_group_nm
                    ,null as group_nm
                    ,null as dtl_info_cn
                    ,rmrk_cn                                        /* 비고 */
            FROM kids_own.tb_pp_m_dur_dosage
            WHERE oper_stts_cd = 'O'

                AND (lower(gnrl_nm) like '%' || lower('aspirin') || '%' OR lower(mfds_igrd_nm_cn) like '%' || lower('aspirin') || '%')

            UNION ALL
            /* 대국민포털_DUR효능군중복기본 */
            SELECT distinct
                     bann_type_cd
                    ,prdct_nm                                       /* 검색한 제품명 */
                    ,igrd_nm                                        /* 검색한 제품의 성분 */
                    ,prohibit_igrd_nm
                    ,rlvt_age
                    ,rlvt_age_unit_nm
                    ,age_prcs_cnd_nm
                    ,condi_grd_cd
                    ,day_max_admin_cpct
                    ,max_admin_prd_day_cnt
                    ,eff_group_nm                                   /* 효능그룹명 */
                    ,group_nm                                       /* 계열(그룹명) */
                    ,dtl_info_cn
                    ,rmrk_cn
            FROM(
                SELECT
                    'eftgrp' as bann_type_cd

                            ,null  as prdct_nm                      /* 검색한 제품명 */

                    ,eg.gnrl_nm as igrd_nm                          /* 검색한 제품의 성분 */
                    ,null as prohibit_igrd_nm
                    ,null as rlvt_age
                    ,null as rlvt_age_unit_nm
                    ,null as age_prcs_cnd_nm
                    ,null as condi_grd_cd
                    ,null as day_max_admin_cpct
                    ,null as max_admin_prd_day_cnt
                    ,eg.eff_group_nm                                /* 효능그룹명 */
                    ,(
                        select
                            dc.com_dtl_cd_nm
                        from kids_own.tb_ca_c_dtl_code dc
                        inner join kids_own.tb_ca_c_group_code gc
                            on dc.com_group_cd = gc.com_group_cd
                        where gc.group_cd_nm = eg.eff_group_nm
                        and dc.com_dtl_cd = eg.group_nm
                        LIMIT 1
                     ) as group_nm                                  /* 계열(그룹명) */
                    ,null as dtl_info_cn
                    ,null as rmrk_cn
                FROM kids_own.tb_pp_m_dur_eftgrp eg
                WHERE eg.oper_stts_cd = 'O' 
                AND eg.group_nm_1 IN(
                    SELECT
                        e.group_nm_1                                       /* 그룹명_1 */
                    FROM kids_own.tb_pp_m_dur_eftgrp e
                    WHERE oper_stts_cd = 'O' 

                        AND (lower(e.gnrl_nm) like '%' || lower('aspirin') || '%' OR lower(e.mfds_igrd_nm_cn) like '%' || lower('aspirin') || '%')

                )

                    AND (lower(eg.gnrl_nm) like '%' || lower('aspirin') || '%' OR lower(eg.mfds_igrd_nm_cn) like '%' || lower('aspirin') || '%')

            ) EFT
            UNION ALL
            /* 대국민포털_DUR노인주의기본 */
            SELECT distinct
                    'snctz' as bann_type_cd

                            ,null as prdct_nm                       /* 검색한 제품명 */

                    ,igrd_nm                                        /* 검색한 제품의 성분 */
                    ,null as prohibit_igrd_nm
                    ,null as rlvt_age
                    ,null as rlvt_age_unit_nm
                    ,null as age_prcs_cnd_nm
                    ,null as condi_grd_cd
                    ,null as day_max_admin_cpct
                    ,null as max_admin_prd_day_cnt
                    ,null as eff_group_nm
                    ,null as group_nm
                    ,null as dtl_info_cn
                    ,rmrk_cn                                        /* 비고 */
            FROM kids_own.tb_pp_m_dur_snctz
            WHERE oper_stts_cd = 'O'

                AND lower(igrd_nm) like '%' || lower('aspirin') || '%'

            UNION ALL
            /* 대국민포털_DUR수유부주의기본 */
            SELECT distinct
                    'nursw' as bann_type_cd

                            ,null as prdct_nm                       /* 검색한 제품명 */

                    ,igrd_nm                                        /* 검색한 제품의 성분 */
                    ,null as prohibit_igrd_nm
                    ,null as rlvt_age
                    ,null as rlvt_age_unit_nm
                    ,null as age_prcs_cnd_nm
                    ,null as condi_grd_cd
                    ,null as day_max_admin_cpct
                    ,null as max_admin_prd_day_cnt
                    ,null as eff_group_nm
                    ,null as group_nm
                    ,null as dtl_info_cn
                    ,rmrk_cn                                        /* 비고 */
            FROM kids_own.tb_pp_m_dur_nursw
            WHERE oper_stts_cd = 'O'

                AND lower(igrd_nm) like '%' || lower('aspirin') || '%'

        ) A
        GROUP BY A.igrd_nm
                ,A.prdct_nm LIMIT 10
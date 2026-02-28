--#통합검색시 관련도순 정렬을 pg_trgm + similarity() 사용으로 구현

ALTER ROLE pp_dev SET search_path = kids_own, public;

--# 관련도순 정렬시 사용할 trigram(트라이그램) 기능 활성화(pg_trgm)
CREATE EXTENSION IF NOT EXISTS pg_trgm;
SELECT extname FROM pg_extension WHERE extname = 'pg_trgm'; -- pg_trgm 설치여부 확인

--# 표현식 gin 인덱스 추가(성능 개선(데이터 많을 때))
CREATE INDEX IF NOT EXISTS idx_pst_trgm
ON kids_own.tb_pp_m_pst
USING gin ((coalesce(pst_ttl,'') || ' ' || coalesce(pst_cn,'')) gin_trgm_ops);

CREATE INDEX IF NOT EXISTS idx_conts_trgm
ON kids_own.tb_pp_m_conts
USING gin ((coalesce(conts_ttl,'') || ' ' || coalesce(conts_cn,'')) gin_trgm_ops);


/* 종합검색 SQL */
WITH RECURSIVE menu_tree AS (
    SELECT
        m.menu_sn,
        m.up_menu_sn,
        1 AS dep_level,
        m.menu_sn AS root_sn,
        m.menu_nm,
        m.menu_seq,
        (m.menu_sn::text) AS path,
        m.menu_nm::text AS path_nm,
        m.lang_se_cd
    FROM kids_own.TB_PP_M_MENU m
    WHERE m.use_yn = 'Y'
    AND m.up_menu_sn IS NULL
    AND m.task_se_cd = 'PP'
    AND m.menu_type_cd = 'U'
    UNION ALL
    SELECT
        c.menu_sn,
        c.up_menu_sn,
        p.dep_level + 1,
        p.root_sn,
        c.menu_nm,
        c.menu_seq,
        (p.path || ' > ' || c.menu_sn::text) AS path,
        (p.path_nm || ' > ' || c.menu_nm::text) AS path_nm,
        c.lang_se_cd
    FROM kids_own.TB_PP_M_MENU c
    JOIN menu_tree p
        ON c.up_menu_sn = p.menu_sn
    WHERE c.use_yn = 'Y'
    AND c.task_se_cd = 'PP'
    AND c.menu_type_cd = 'U'
),
base AS (
    -- 게시글
    SELECT
         tm.root_sn as root_menu_sn
        ,rm.menu_nm as root_menu_nm
        ,tm.menu_sn
        ,tm.menu_nm
        ,tm.path
        ,tm.path_nm
        ,dm.menu_url_addr
        ,mp.pst_sn::text as doc_sn
        ,mp.pst_ttl as doc_ttl
        ,mp.pst_cn  as doc_cn
        ,mp.reg_dt  as reg_dt
        ,similarity(coalesce(mp.pst_ttl,'') || ' ' || coalesce(mp.pst_cn,''), 'DUR') as relevance_score
    FROM kids_own.tb_pp_m_pst mp
    INNER JOIN kids_own.tb_pp_d_menu dm
        ON (
            mp.bbs_id = substring(dm.menu_url_addr FROM position('/general/' in dm.menu_url_addr) + length('/general/')) OR
            mp.bbs_id = substring(dm.menu_url_addr FROM position('/gallery/' in dm.menu_url_addr) + length('/gallery/')) OR
            mp.bbs_id = substring(dm.menu_url_addr FROM position('/video/'   in dm.menu_url_addr) + length('/video/'))
        )
    INNER JOIN menu_tree tm ON tm.menu_sn = dm.menu_sn
    INNER JOIN kids_own.tb_pp_m_menu rm ON rm.menu_sn = tm.root_sn
    WHERE mp.pst_ttl LIKE '%' || 'DUR' || '%'
       OR mp.pst_cn  LIKE '%' || 'DUR' || '%'

    UNION ALL

    -- 컨텐츠
    SELECT
         tm.root_sn as root_menu_sn
        ,rm.menu_nm as root_menu_nm
        ,tm.menu_sn
        ,tm.menu_nm
        ,tm.path
        ,tm.path_nm
        ,dm.menu_url_addr
        ,cms.conts_sn::text as doc_sn
        ,cms.conts_ttl as doc_ttl
        ,cms.conts_cn  as doc_cn
        ,cms.reg_dt    as reg_dt
        ,similarity(coalesce(cms.conts_ttl,'') || ' ' || coalesce(cms.conts_cn,''), 'DUR') as relevance_score
    FROM kids_own.tb_pp_m_conts cms
    INNER JOIN kids_own.tb_pp_d_menu dm
        ON cms.conts_sn = substring(dm.menu_url_addr FROM position('/CmsPage/' in dm.menu_url_addr) + length('/CmsPage/'))
    INNER JOIN menu_tree tm ON tm.menu_sn = dm.menu_sn
    INNER JOIN kids_own.tb_pp_m_menu rm ON rm.menu_sn = tm.root_sn
    WHERE cms.conts_ttl LIKE '%' || 'DUR' || '%'
       OR cms.conts_cn  LIKE '%' || 'DUR' || '%'
),
ranked AS (
    SELECT
        root_menu_sn, root_menu_nm, reg_dt, relevance_score,
        jsonb_build_object(
            'root_menu_sn', root_menu_sn,
            'root_menu_nm', root_menu_nm,
            'menu_sn', menu_sn,
            'menu_nm', menu_nm,
            'path', path,
            'path_nm', path_nm,
            'menu_url_addr', menu_url_addr,
            'doc_sn', doc_sn,
            'doc_ttl', doc_ttl,
            'doc_cn', doc_cn
        ) AS obj
    FROM base
),
bucketed AS (
    SELECT
        CASE WHEN GROUPING(root_menu_nm) = 1 THEN '__TOTAL__' ELSE root_menu_nm END AS bucket,
        jsonb_agg(
            obj
            ORDER BY
                -- sortBy='relevance'면 관련도순 우선 적용, 아니면 최신순 latest
                CASE WHEN 'latest' = 'relevance' THEN relevance_score END DESC NULLS LAST,
                -- 동점이면 최신
                CASE WHEN 'latest' = 'relevance' THEN reg_dt END DESC NULLS LAST,
                -- 그 외는 최신순 latest
                CASE WHEN 'latest' != 'relevance' THEN reg_dt END DESC NULLS LAST
        ) AS arr
    FROM ranked
    GROUP BY GROUPING SETS ((root_menu_nm), ())
)

SELECT
    COALESCE(jsonb_agg(arr) FILTER (WHERE bucket = '__TOTAL__')->0, '[]'::jsonb) AS total_json_array,
    COALESCE(jsonb_agg(arr) FILTER (WHERE bucket = '주요 업무')->0, '[]'::jsonb) AS main_task_json_array,
    COALESCE(jsonb_agg(arr) FILTER (WHERE bucket = '정보공개')->0, '[]'::jsonb) AS info_open_json_array,
    COALESCE(jsonb_agg(arr) FILTER (WHERE bucket = '기관소식')->0, '[]'::jsonb) AS inst_news_json_array,
    COALESCE(jsonb_agg(arr) FILTER (WHERE bucket = '기관소개')->0, '[]'::jsonb) AS inst_intro_json_array
FROM bucketed
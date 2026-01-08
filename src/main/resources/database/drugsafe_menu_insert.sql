INSERT INTO "KIDS_OWN"."TB_PP_M_MENU"
( menu_sn, menu_nm, up_menu_sn, task_se_cd, menu_type_cd, menu_seq,
  menu_expln, lang_se_cd, pic_dept_nm, pic_flnm, use_yn, rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id )
VALUES
-- 1 Depth
( 4,  '의약품 안전관리', NULL, 'PP', 'MENU',  1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
( 5,  'DUR 정보',        NULL, 'PP', 'MENU',  2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
( 6,  '부작용 피해구제', NULL, 'PP', 'MENU',  3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
( 7,  '임상시험안전지원',        NULL, 'PP', 'MENU',  4, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
( 8,  '알림마당',        NULL, 'PP', 'MENU',  5, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
( 9,  '교육·홍보',       NULL, 'PP', 'MENU',  6, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(10,  '정보공개',        NULL, 'PP', 'MENU',  7, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(11,  '기관소개',        NULL, 'PP', 'MENU',  8, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 2 Depth under 4(의약품 안전관리)
(12, '의약품 이상사례 보고',  4, 'PP', 'MENU',  1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(13, '의약품안전관리',        4, 'PP', 'MENU',  2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 3 Depth under 12(의약품 이상사례 보고)
(14, '이상사례 보고',         12, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(15, '오프라인 보고',         12, 'PP', 'PAGE', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(16, '이상사례보고자료실',     12, 'PP', 'PAGE', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(17, '온라인보고방법 안내',    12, 'PP', 'PAGE', 4, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 3 Depth under 13(의약품안전관리)
(18, '약물감시용어',           13, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(19, '부작용 인과관계규명',    13, 'PP', 'PAGE', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(20, '유관기관',               13, 'PP', 'PAGE', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 2 Depth under 5(DUR 정보)
(21, 'DUR 이해',               5, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(22, 'DUR 정보검색',           5, 'PP', 'PAGE', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(23, '의약품 적정사용정보',     5, 'PP', 'PAGE', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(24, '알림 게시판',            5, 'PP', 'PAGE', 4, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(25, '의견 제안',              5, 'PP', 'PAGE', 5, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 2 Depth under 6(부작용 피해구제)
(26, '피해구제 제도', 6, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(27, '피해구제 신청', 6, 'PP', 'PAGE', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(28, '뉴스/소식', 6, 'PP', 'PAGE', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(29, '자주하는 질문(FAQ)', 6, 'PP', 'PAGE', 4, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 2 Depth under 7(임상시험안전지원)
(30, '임상시험안전지원기관', 7, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(31, '협약 안내', 7, 'PP', 'PAGE', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(32, '중앙IRB신청', 7, 'PP', 'PAGE', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(33, '임상시험헬프데스크', 7, 'PP', 'PAGE', 4, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(34, '공지사항', 7, 'PP', 'PAGE', 5, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(35, '자료실', 7, 'PP', 'PAGE', 6, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 2 Depth under 8(알림마당)
(36, '공지사항', 8, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(37, '채용게시판', 8, 'PP', 'PAGE', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(38, '지역의약품안전센터', 8, 'PP', 'PAGE', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(39, 'FAQ', 8, 'PP', 'PAGE', 4, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(40, '고객문의', 8, 'PP', 'PAGE', 5, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 2 Depth under 9(교육·홍보)
(41, '교육 안내', 9, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(42, 'APEC CoE', 9, 'PP', 'PAGE', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(43, '보도자료', 9, 'PP', 'PAGE', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(44, '뉴스레터', 9, 'PP', 'PAGE', 4, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(45, '카드뉴스', 9, 'PP', 'PAGE', 5, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(46, '동영상', 9, 'PP', 'PAGE', 6, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(47, '자료실', 9, 'PP', 'PAGE', 7, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 2 Depth under 10(정보공개)
(48, '정보공개', 10, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(49, '공공데이터 개방', 10, 'PP', 'PAGE', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(50, '경영공시', 10, 'PP', 'PAGE', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(51, '사업실명제', 10, 'PP', 'PAGE', 4, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 2 Depth under 11(기관소개)
(52, '기관장 인사말', 11, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(53, '역대 기관장', 11, 'PP', 'PAGE', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(54, '연혁', 11, 'PP', 'PAGE', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(55, '비전 및 목표', 11, 'PP', 'PAGE', 4, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(56, '조직도', 11, 'PP', 'PAGE', 5, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(57, '설립근거 관련법령', 11, 'PP', 'PAGE', 6, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(58, '고객헌장', 11, 'PP', 'PAGE', 7, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(59, '우리원동정', 11, 'PP', 'PAGE', 8, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(60, 'CI소개', 11, 'PP', 'PAGE', 9, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(61, '캐릭터소개', 11, 'PP', 'PAGE', 10, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(62, '윤리경영', 11, 'PP', 'PAGE', 11, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(63, '인권경영', 11, 'PP', 'PAGE', 12, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(64, '오시는 길', 11, 'PP', 'PAGE', 13, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT')
;


--delete from "KIDS_OWN"."TB_PP_D_MENU";
--delete from "KIDS_OWN"."TB_PP_M_MENU";
--drop table "KIDS_OWN"."TB_PP_M_MENU" CASCADE;
--commit;

INSERT INTO "KIDS_OWN"."TB_PP_D_MENU"
( menu_sn, menu_url_addr, menu_npag_nm,
  prvc_incl_yn, dgstfn_exmn_yn, menu_expsr_yn, dept_info_expsr_yn, pic_info_expsr_yn,
  menu_kogl_cprgt_type_cd, menu_pic_id, menu_tkcg_dept_no,
  rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id )
VALUES
-- DUR > DUR 정보 > 알림 게시판
(24, '/dur/notice',  NULL,
 'Y','Y','Y','Y','Y',
 NULL, '0000000000000', NULL,
 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- DUR > DUR 정보 > 의견 제안
(25, '/dur/proposal', NULL,
 'Y','Y','Y','Y','Y',
 NULL, '0000000000000', NULL,
 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 알림마당 > 공지사항
(36, '/notice',       NULL,
 'Y','Y','Y','Y','Y',
 NULL, '0000000000000', NULL,
 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT');



WITH RECURSIVE menu_tree AS (
    SELECT
        m.menu_sn,
        m.up_menu_sn,
        1 AS dep_level,
        m.menu_sn AS root_sn,
        m.menu_nm,
        m.menu_seq,
        (m.menu_sn::text) AS path,
        m.lang_se_cd
    FROM "KIDS_OWN"."TB_PP_M_MENU" m
    WHERE m.use_yn = 'Y'
    AND m.up_menu_sn IS NULL

    UNION ALL

    SELECT
        c.menu_sn,
        c.up_menu_sn,
        p.dep_level + 1,
        p.root_sn,
        c.menu_nm,
        c.menu_seq,
        (p.path || ' > ' || c.menu_sn::text) AS path,
        c.lang_se_cd
    FROM "KIDS_OWN"."TB_PP_M_MENU" c
    JOIN menu_tree p
        ON c.up_menu_sn = p.menu_sn
    WHERE c.use_yn = 'Y'
)
SELECT
    mt.menu_sn,
    mt.menu_nm,
    mt.up_menu_sn,
    mt.dep_level,
    mt.root_sn,
    mt.path,
    d.menu_url_addr,
    mt.menu_seq,
    mt.lang_se_cd
FROM menu_tree mt
LEFT JOIN "KIDS_OWN"."TB_PP_D_MENU" d
    ON d.menu_sn = mt.menu_sn
    AND mt.lang_se_cd = 'ko'
ORDER by mt.root_sn, mt.path, mt.menu_seq, mt.menu_sn
;

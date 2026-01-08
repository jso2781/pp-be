BEGIN;

SET client_min_messages TO WARNING;

-- Strict tables

-- table: "TB_CA_M_COM_CD"
INSERT INTO "TB_CA_M_COM_CD" ("com_cd")
SELECT ('COM' || lpad(g.i::text, 9, '0'))::char(12)
FROM generate_series(1,500) AS g(i);


-- TB_PP_M_TRM

INSERT INTO "TB_PP_M_TRM" ("std_trm_nm", "sys_se_nm", "artcl_sou_nm", "std_trm_eng_abbr_nm", "atrb_type_nm", "com_std_dmn_nm", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring((CASE ((g.i-1) % 9) WHEN 0 THEN '이상사례' WHEN 1 THEN '부작용' WHEN 2 THEN '인과성' WHEN 3 THEN '실마리정보' WHEN 4 THEN '병용금기' WHEN 5 THEN '임부금기' WHEN 6 THEN '노인주의' WHEN 7 THEN 'KAERS' WHEN 8 THEN 'DUR' END || lpad(g.i::text, 3, '0')), 1, 40) AS "std_trm_nm",
  CASE ((g.i-1) % 9) WHEN 0 THEN 'PV' WHEN 1 THEN 'PV' WHEN 2 THEN 'PV' WHEN 3 THEN 'PV' WHEN 4 THEN 'DUR' WHEN 5 THEN 'DUR' WHEN 6 THEN 'DUR' WHEN 7 THEN 'PV' WHEN 8 THEN 'DUR' END AS "sys_se_nm",
  '한국의약품안전관리원' AS "artcl_sou_nm",
  CASE ((g.i-1) % 9) WHEN 0 THEN 'AE' WHEN 1 THEN 'ADR' WHEN 2 THEN 'CAUS' WHEN 3 THEN 'SIG' WHEN 4 THEN 'CC' WHEN 5 THEN 'PC' WHEN 6 THEN 'ELD' WHEN 7 THEN 'KAERS' WHEN 8 THEN 'DUR' END AS "std_trm_eng_abbr_nm",
  '용어' AS "atrb_type_nm",
  CASE ((g.i-1) % 9) WHEN 0 THEN '보고' WHEN 1 THEN '평가' WHEN 2 THEN '평가' WHEN 3 THEN '분석' WHEN 4 THEN '금기' WHEN 5 THEN '금기' WHEN 6 THEN '주의' WHEN 7 THEN '보고' WHEN 8 THEN '시스템' END AS "com_std_dmn_nm",
  'SYSADMIN' AS "rgtr_id",
  timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval AS "reg_dt",
  'DATA_GEN' AS "reg_prgrm_id",
  'SYSADMIN' AS "mdfr_id",
  timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval AS "mdfcn_dt",
  'DATA_GEN' AS "mdfcn_prgrm_id"
FROM generate_series(1,500) AS g(i);


-- TB_PP_M_ORGCHT

INSERT INTO "TB_PP_M_ORGCHT" ("emp_no", "dept_no", "dept_nm", "emp_nm")
SELECT
  ('EMP' || lpad(g.i::text, 6, '0')) AS "emp_no",
  CASE ((g.i-1) % 8) WHEN 0 THEN 'DPT0001' WHEN 1 THEN 'DPT0002' WHEN 2 THEN 'DPT0003' WHEN 3 THEN 'DPT0004' WHEN 4 THEN 'DPT0005' WHEN 5 THEN 'DPT0006' WHEN 6 THEN 'DPT0007' WHEN 7 THEN 'DPT0008' END AS "dept_no",
  CASE ((g.i-1) % 8) WHEN 0 THEN '원장실' WHEN 1 THEN '경영지원실' WHEN 2 THEN '의약품안전정보본부' WHEN 3 THEN '피해구제운영팀' WHEN 4 THEN '교육홍보팀' WHEN 5 THEN '정보화지원팀' WHEN 6 THEN '약물감시연구팀' WHEN 7 THEN '지역의약품안전센터지원팀' END AS "dept_nm",
  ('직원' || lpad(g.i::text, 4, '0')) AS "emp_nm"
FROM generate_series(1,1000) AS g(i);


-- TB_PP_M_EMP (ORGCHT 기반)

INSERT INTO "TB_PP_M_EMP" ("emp_no", "mngr_enpswd", "tmpr_pswd_yn", "pswd_err_nmtm", "bfr_enpswd", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  "emp_no",
  md5("emp_no" || '!pw') AS "mngr_enpswd",
  'N' AS "tmpr_pswd_yn",
  0 AS "pswd_err_nmtm",
  NULL AS "bfr_enpswd",
  'SYSADMIN' AS "rgtr_id",
  timestamp '2025-12-26 09:00:00' AS "reg_dt",
  'DATA_GEN' AS "reg_prgrm_id",
  'SYSADMIN' AS "mdfr_id",
  timestamp '2025-12-26 09:00:00' AS "mdfcn_dt",
  'DATA_GEN' AS "mdfcn_prgrm_id"
FROM "TB_PP_M_ORGCHT";


-- table: "TB_PP_M_MENU" (KIDS 사이트맵 기반)
INSERT INTO "TB_PP_M_MENU" ("menu_sn", "menu_nm", "up_menu_sn", "task_se_cd", "menu_type_cd", "menu_seq", "menu_expln", "pic_dept_nm", "pic_flnm", "use_yn", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id") VALUES
(1, '의약품 이상사례 보고', NULL, 'PORTAL', 'FOLDER', 1, '의약품 이상사례 보고 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(2, '이상사례 보고란?', 1, 'PORTAL', 'PAGE', 1, '이상사례 보고란? 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(3, 'KAERS란?', 2, 'PORTAL', 'PAGE', 1, 'KAERS란? 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(4, '온라인 보고', 1, 'PORTAL', 'PAGE', 2, '온라인 보고 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(5, '오프라인 보고', 1, 'PORTAL', 'PAGE', 3, '오프라인 보고 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(6, '이상사례보고 자료실', 1, 'PORTAL', 'PAGE', 4, '이상사례보고 자료실 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(7, '온라인보고방법 안내', 1, 'PORTAL', 'PAGE', 5, '온라인보고방법 안내 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(8, '의약품 안전관리', NULL, 'PORTAL', 'FOLDER', 2, '의약품 안전관리 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(9, '약물감시용어', 8, 'PORTAL', 'PAGE', 1, '약물감시용어 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(10, '부작용 인과관계규명', 8, 'PORTAL', 'PAGE', 2, '부작용 인과관계규명 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(11, '유관기관', 8, 'PORTAL', 'PAGE', 3, '유관기관 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(12, 'DUR 정보', NULL, 'PORTAL', 'FOLDER', 3, 'DUR 정보 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(13, 'DUR 이해', 12, 'PORTAL', 'PAGE', 1, 'DUR 이해 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(14, 'DUR 정보검색', 12, 'PORTAL', 'PAGE', 2, 'DUR 정보검색 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(15, 'DUR 통합검색', 14, 'PORTAL', 'PAGE', 1, 'DUR 통합검색 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(16, '병용 금기', 14, 'PORTAL', 'PAGE', 2, '병용 금기 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(17, '특정연령대금기', 14, 'PORTAL', 'PAGE', 3, '특정연령대금기 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(18, '임부금기', 14, 'PORTAL', 'PAGE', 4, '임부금기 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(19, '효능군중복주의', 14, 'PORTAL', 'PAGE', 5, '효능군중복주의 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(20, '용량주의', 14, 'PORTAL', 'PAGE', 6, '용량주의 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(21, '투여기간주의', 14, 'PORTAL', 'PAGE', 7, '투여기간주의 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(22, '노인주의', 14, 'PORTAL', 'PAGE', 8, '노인주의 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(23, '의약품 적정사용 정보', 12, 'PORTAL', 'PAGE', 3, '의약품 적정사용 정보 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(24, '노인 적정사용 정보집', 23, 'PORTAL', 'PAGE', 1, '노인 적정사용 정보집 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(25, '소아 적정사용 정보집', 23, 'PORTAL', 'PAGE', 2, '소아 적정사용 정보집 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(26, '임부 적정사용 정보집', 23, 'PORTAL', 'PAGE', 3, '임부 적정사용 정보집 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(27, '간질환 적정사용 정보집', 23, 'PORTAL', 'PAGE', 4, '간질환 적정사용 정보집 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(28, '신질환 적정사용 정보집', 23, 'PORTAL', 'PAGE', 5, '신질환 적정사용 정보집 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(29, '알림 게시판', 12, 'PORTAL', 'PAGE', 4, '알림 게시판 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(30, '의견 제안', 12, 'PORTAL', 'PAGE', 5, '의견 제안 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(31, '부작용 피해구제', NULL, 'PORTAL', 'FOLDER', 4, '부작용 피해구제 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(32, '피해구제 제도', 31, 'PORTAL', 'PAGE', 1, '피해구제 제도 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(33, '피해구제 신청', 31, 'PORTAL', 'PAGE', 2, '피해구제 신청 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(34, '뉴스/소식', 31, 'PORTAL', 'PAGE', 3, '뉴스/소식 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(35, '공지사항', 34, 'PORTAL', 'PAGE', 1, '공지사항 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(36, '보도자료', 34, 'PORTAL', 'PAGE', 2, '보도자료 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(37, '자주하는 질문(FAQ)', 31, 'PORTAL', 'PAGE', 4, '자주하는 질문(FAQ) 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(38, '알림마당', NULL, 'PORTAL', 'FOLDER', 5, '알림마당 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(39, '공지사항', 38, 'PORTAL', 'PAGE', 1, '공지사항 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(40, '채용게시판', 38, 'PORTAL', 'PAGE', 2, '채용게시판 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(41, '지역의약품안전센터', 38, 'PORTAL', 'PAGE', 3, '지역의약품안전센터 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(42, '센터안내 및 활동', 41, 'PORTAL', 'PAGE', 1, '센터안내 및 활동 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(43, '지역센터소식', 41, 'PORTAL', 'PAGE', 2, '지역센터소식 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(44, 'FAQ', 38, 'PORTAL', 'PAGE', 4, 'FAQ 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(45, '국민신문고', 38, 'PORTAL', 'PAGE', 5, '국민신문고 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(46, '교육·홍보', NULL, 'PORTAL', 'FOLDER', 6, '교육·홍보 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(47, '교육안내', 46, 'PORTAL', 'PAGE', 1, '교육안내 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(48, 'APEC CoE', 46, 'PORTAL', 'PAGE', 2, 'APEC CoE 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(49, 'Save the Date', 48, 'PORTAL', 'PAGE', 1, 'Save the Date 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(50, 'Training Materials', 48, 'PORTAL', 'PAGE', 2, 'Training Materials 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(51, '보도자료', 46, 'PORTAL', 'PAGE', 3, '보도자료 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(52, '뉴스레터', 46, 'PORTAL', 'PAGE', 4, '뉴스레터 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(53, 'KIDS 뉴스레터', 52, 'PORTAL', 'PAGE', 1, 'KIDS 뉴스레터 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(54, '첨단바이오 포커스', 52, 'PORTAL', 'PAGE', 2, '첨단바이오 포커스 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(55, '마약류 안전정보지', 52, 'PORTAL', 'PAGE', 3, '마약류 안전정보지 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(56, '카드뉴스', 46, 'PORTAL', 'PAGE', 5, '카드뉴스 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(57, '동영상', 46, 'PORTAL', 'PAGE', 6, '동영상 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(58, '자료실', 46, 'PORTAL', 'PAGE', 7, '자료실 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(59, '정보공개', NULL, 'PORTAL', 'FOLDER', 7, '정보공개 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(60, '정보 공개', 59, 'PORTAL', 'PAGE', 1, '정보 공개 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(61, '업무처리절차', 60, 'PORTAL', 'PAGE', 1, '업무처리절차 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(62, '정보공개 청구', 60, 'PORTAL', 'PAGE', 2, '정보공개 청구 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(63, '임직원국외출장', 60, 'PORTAL', 'PAGE', 3, '임직원국외출장 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(64, '원장 업무추진비 집행내역', 60, 'PORTAL', 'PAGE', 4, '원장 업무추진비 집행내역 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(65, '공공데이터 개방', 59, 'PORTAL', 'PAGE', 2, '공공데이터 개방 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(66, '경영공시', 59, 'PORTAL', 'PAGE', 3, '경영공시 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(67, '사업실명제', 59, 'PORTAL', 'PAGE', 4, '사업실명제 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(68, '부패행위 징계현황', 59, 'PORTAL', 'PAGE', 5, '부패행위 징계현황 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(69, '징계기준', 68, 'PORTAL', 'PAGE', 1, '징계기준 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(70, '징계현황', 68, 'PORTAL', 'PAGE', 2, '징계현황 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(71, '기관소개', NULL, 'PORTAL', 'FOLDER', 8, '기관소개 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(72, '기관장 인사말', 71, 'PORTAL', 'PAGE', 1, '기관장 인사말 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(73, '역대 기관장', 71, 'PORTAL', 'PAGE', 2, '역대 기관장 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(74, '연혁', 71, 'PORTAL', 'PAGE', 3, '연혁 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(75, '비전 및 목표', 71, 'PORTAL', 'PAGE', 4, '비전 및 목표 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(76, '조직도', 71, 'PORTAL', 'PAGE', 5, '조직도 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(77, '설립근거 및 관련법령', 71, 'PORTAL', 'PAGE', 6, '설립근거 및 관련법령 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(78, '고객헌장', 71, 'PORTAL', 'PAGE', 7, '고객헌장 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(79, '우리원 동정', 71, 'PORTAL', 'PAGE', 8, '우리원 동정 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(80, 'CI 소개', 71, 'PORTAL', 'PAGE', 9, 'CI 소개 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(81, '캐릭터 소개', 71, 'PORTAL', 'PAGE', 10, '캐릭터 소개 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(82, '윤리경영', 71, 'PORTAL', 'PAGE', 11, '윤리경영 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(83, '클린신고센터', 82, 'PORTAL', 'PAGE', 1, '클린신고센터 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(84, '클린신고서 작성', 82, 'PORTAL', 'PAGE', 2, '클린신고서 작성 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(85, '인권경영', 71, 'PORTAL', 'PAGE', 12, '인권경영 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(86, '인권경영선언문', 85, 'PORTAL', 'PAGE', 1, '인권경영선언문 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(87, '인권경영자료실', 85, 'PORTAL', 'PAGE', 2, '인권경영자료실 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(88, '오시는 길', 71, 'PORTAL', 'PAGE', 13, '오시는 길 메뉴', '정보화지원팀', '홍길동', 'Y', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN');

-- table: "TB_PP_D_MENU" (KIDS 사이트맵 기반)
INSERT INTO "TB_PP_D_MENU" ("menu_sn", "menu_url_addr", "menu_npag_nm", "prvc_incl_yn", "dgstfn_exmn_yn", "menu_expsr_yn", "dept_info_expsr_yn", "pic_info_expsr_yn", "menu_kogl_cprgt_type_cd", "menu_pic_id", "menu_tkcg_dept_no", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id") VALUES
(1, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000001', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(2, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000002', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(3, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000003', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(4, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000004', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(5, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000005', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(6, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000006', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(7, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000007', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(8, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000008', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(9, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000009', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(10, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000010', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(11, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000011', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(12, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000012', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(13, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000013', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(14, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000014', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(15, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000015', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(16, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000016', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(17, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000017', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(18, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000018', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(19, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000019', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(20, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000020', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(21, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000021', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(22, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000022', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(23, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000023', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(24, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000024', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(25, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000025', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(26, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000026', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(27, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000027', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(28, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000028', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(29, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000029', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(30, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000030', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(31, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000031', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(32, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000032', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(33, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000033', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(34, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000034', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(35, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000035', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(36, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000036', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(37, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000037', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(38, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000038', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(39, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000039', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(40, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000040', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(41, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000041', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(42, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000042', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(43, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000043', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(44, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000044', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(45, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000045', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(46, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000046', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(47, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000047', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(48, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000048', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(49, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000049', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(50, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000050', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(51, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000051', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(52, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000052', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(53, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000053', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(54, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000054', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(55, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000055', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(56, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000056', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(57, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000057', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(58, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000058', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(59, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000059', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(60, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000060', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(61, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000061', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(62, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000062', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(63, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000063', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(64, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000064', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(65, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000065', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(66, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000066', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(67, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000067', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(68, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000068', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(69, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000069', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(70, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000070', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(71, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000071', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(72, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000072', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(73, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000073', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(74, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000074', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(75, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000075', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(76, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000076', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(77, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000077', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(78, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000078', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(79, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000079', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(80, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000080', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(81, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000081', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(82, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000082', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(83, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000083', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(84, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000084', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(85, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000085', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(86, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000086', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(87, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000087', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN'),
(88, NULL, NULL, 'N', 'Y', 'Y', 'Y', 'Y', '1', 'KIDS000000088', 'DPT0006', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN', 'SYSADMIN', '2025-12-26 09:00:00', 'DATA_GEN');


-- Other tables: 1000 rows each

-- table: "TB_CA_M_ATCH"
INSERT INTO "TB_CA_M_ATCH" ("atch_file_sn", "menu_sn", "menu_type", "atch_file_uld_hr", "atch_file_use_yn", "atch_file_path", "atch_file_nm", "atch_file_extn_nm", "atch_file_cn", "atch_file_sz", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  (g.i % 1000000)::numeric(22,0) AS "atch_file_sn",
  ((g.i - 1) % 88 + 1)::numeric(10,0) AS "menu_sn",
  substring(md5(g.i::text), 1, 20) AS "menu_type",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "atch_file_uld_hr",
  (CASE WHEN (g.i % 10)=0 THEN 'N' ELSE 'Y' END) AS "atch_file_use_yn",
  substring(md5(g.i::text), 1, 1000) AS "atch_file_path",
  substring('atch_file_nm_' || g.i::text, 1, 100) AS "atch_file_nm",
  substring('atch_file_extn_nm_' || g.i::text, 1, 5) AS "atch_file_extn_nm",
  substring(md5(g.i::text), 1, 1000) AS "atch_file_cn",
  (g.i % 1000000)::numeric(14,0) AS "atch_file_sz",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_DUR_AGE_BANN"
INSERT INTO "TB_PP_DUR_AGE_BANN" ("age_bann_sn", "prdct_cd", "dur_igrd_nm", "dur_igrd_cd", "dur_prdct_nm", "dur_bzenty_nm", "mfds_prdct_nm", "mfds_igrd_cd", "mfds_igrd_nm", "rlvt_age", "rlvt_age_unit", "age_prcs_cnd", "ancmnt_no", "ancmnt_ymd", "dtl_info", "aplcn_ym", "type_cd", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring(md5(g.i::text), 1, 50) AS "age_bann_sn",
  substring('CD' || lpad(g.i::text, 7, '0'), 1, 9) AS "prdct_cd",
  substring('dur_igrd_nm_' || g.i::text, 1, 100) AS "dur_igrd_nm",
  substring('CD' || lpad(g.i::text, 7, '0'), 1, 9) AS "dur_igrd_cd",
  substring('dur_prdct_nm_' || g.i::text, 1, 256) AS "dur_prdct_nm",
  substring('dur_bzenty_nm_' || g.i::text, 1, 100) AS "dur_bzenty_nm",
  substring('mfds_prdct_nm_' || g.i::text, 1, 256) AS "mfds_prdct_nm",
  substring('CD' || lpad(g.i::text, 5, '0'), 1, 7) AS "mfds_igrd_cd",
  substring('mfds_igrd_nm_' || g.i::text, 1, 100) AS "mfds_igrd_nm",
  (g.i % 1000)::numeric(3,0) AS "rlvt_age",
  substring(md5(g.i::text), 1, 20) AS "rlvt_age_unit",
  substring(md5(g.i::text), 1, 20) AS "age_prcs_cnd",
  substring(md5(g.i::text), 1, 8) AS "ancmnt_no",
  to_char(date '2025-12-26' - (g.i||' days')::interval, 'YYYYMMDD') AS "ancmnt_ymd",
  substring(md5(g.i::text), 1, 4000) AS "dtl_info",
  substring(md5(g.i::text), 1, 6) AS "aplcn_ym",
  substring('CD' || lpad(g.i::text, 1, '0'), 1, 1) AS "type_cd",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_AUTHRT"
INSERT INTO "TB_PP_M_AUTHRT" ("authrt_cd", "up_authrt_cd", "task_se_cd", "authrt_nm", "authrt_type", "authrt_expln", "use_yn", "wrtr_dept_nm", "mdfr_dept_nm", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  ('ROLE_' || lpad(((g.i-1) % 1000 + 1)::text, 4, '0')) AS "authrt_cd",
  (g.i % 1000000)::numeric(10,0) AS "up_authrt_cd",
  substring('CD' || lpad(g.i::text, 8, '0'), 1, 10) AS "task_se_cd",
  substring('authrt_nm_' || g.i::text, 1, 20) AS "authrt_nm",
  substring(md5(g.i::text), 1, 20) AS "authrt_type",
  substring(md5(g.i::text), 1, 4000) AS "authrt_expln",
  (CASE WHEN (g.i % 10)=0 THEN 'N' ELSE 'Y' END) AS "use_yn",
  substring('wrtr_dept_nm_' || g.i::text, 1, 40) AS "wrtr_dept_nm",
  substring('mdfr_dept_nm_' || g.i::text, 1, 40) AS "mdfr_dept_nm",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_AUTHRT_CHG_HSTRY"
INSERT INTO "TB_PP_M_AUTHRT_CHG_HSTRY" ("authrt_chg_sn", "authrt_cd", "menu_sn", "aplcn_trgt_type", "chg_role_list", "aplcn_trgt", "chg_type", "rmrk", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  (g.i % 1000000)::numeric(10,0) AS "authrt_chg_sn",
  ('ROLE_' || lpad(((g.i-1) % 1000 + 1)::text, 4, '0')) AS "authrt_cd",
  ((g.i - 1) % 88 + 1)::numeric(10,0) AS "menu_sn",
  substring(md5(g.i::text), 1, 5) AS "aplcn_trgt_type",
  substring(md5(g.i::text), 1, 4000) AS "chg_role_list",
  substring(md5(g.i::text), 1, 20) AS "aplcn_trgt",
  substring(md5(g.i::text), 1, 5) AS "chg_type",
  substring(md5(g.i::text), 1, 4000) AS "rmrk",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_AUTHRT_MENU"
INSERT INTO "TB_PP_M_AUTHRT_MENU" ("authrt_cd", "menu_sn", "authrt_menu_role_rmrk", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  ('ROLE_' || lpad(((g.i-1) % 1000 + 1)::text, 4, '0')) AS "authrt_cd",
  ((g.i - 1) % 88 + 1)::numeric(10,0) AS "menu_sn",
  substring(md5(g.i::text), 1, 4000) AS "authrt_menu_role_rmrk",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_AUTHRT_MENU_ROLE"
INSERT INTO "TB_PP_M_AUTHRT_MENU_ROLE" ("authrt_cd", "role_cd", "menu_sn", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  ('ROLE_' || lpad(((g.i-1) % 1000 + 1)::text, 4, '0')) AS "authrt_cd",
  substring('CD' || lpad(g.i::text, 18, '0'), 1, 20) AS "role_cd",
  ((g.i - 1) % 88 + 1)::numeric(10,0) AS "menu_sn",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_BBS"
INSERT INTO "TB_PP_M_BBS" ("bbs_id", "bbs_nm", "bbs_atrb", "bbs_expln", "bbs_smry", "cmnt_use_yn", "inq_cnt_expsr_yn", "dept_expsr_yn", "file_atch_yn", "atch_psblty_file_cnt", "lang_se_cd", "use_yn", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "bbs_id",
  substring('bbs_nm_' || g.i::text, 1, 300) AS "bbs_nm",
  substring(md5(g.i::text), 1, 12) AS "bbs_atrb",
  substring(md5(g.i::text), 1, 4000) AS "bbs_expln",
  substring(md5(g.i::text), 1, 4000) AS "bbs_smry",
  (CASE WHEN (g.i % 10)=0 THEN 'N' ELSE 'Y' END) AS "cmnt_use_yn",
  (CASE WHEN (g.i % 10)=0 THEN 'N' ELSE 'Y' END) AS "inq_cnt_expsr_yn",
  (CASE WHEN (g.i % 10)=0 THEN 'N' ELSE 'Y' END) AS "dept_expsr_yn",
  (CASE WHEN (g.i % 10)=0 THEN 'N' ELSE 'Y' END) AS "file_atch_yn",
  (g.i % 100)::numeric(2,0) AS "atch_psblty_file_cnt",
  substring('CD' || lpad(g.i::text, 1, '0'), 1, 2) AS "lang_se_cd",
  (CASE WHEN (g.i % 10)=0 THEN 'N' ELSE 'Y' END) AS "use_yn",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_BBS_AUTHRT"
INSERT INTO "TB_PP_M_BBS_AUTHRT" ("bbs_id", "authrt_cd", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "bbs_id",
  ('ROLE_' || lpad(((g.i-1) % 1000 + 1)::text, 4, '0')) AS "authrt_cd",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_CMNT"
INSERT INTO "TB_PP_M_CMNT" ("cmnt_sn", "pst_sn", "cmnt_cn", "cmnt_enpswd", "use_yn", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  (g.i % 1000000)::numeric(22,0) AS "cmnt_sn",
  (g.i % 1000000)::numeric(22,0) AS "pst_sn",
  substring(md5(g.i::text), 1, 4000) AS "cmnt_cn",
  substring(md5(g.i::text), 1, 256) AS "cmnt_enpswd",
  (CASE WHEN (g.i % 10)=0 THEN 'N' ELSE 'Y' END) AS "use_yn",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_CONC_BANN"
INSERT INTO "TB_PP_M_CONC_BANN" ("conc_bann_sn", "prdct_cd_1", "prdct_cd_2", "igrd_nm_1", "igrd_cd_1", "prdct_nm_1", "bzenty_nm_1", "se_1", "mfds_prdct_nm_1", "mfds_igrd_cd_1", "mfds_igrd_nm_1", "igrd_nm_2", "igrd_cd_2", "prdct_nm_2", "bzenty_nm_2", "se_2", "mfds_prdct_nm_2", "mfds_igrd_cd_2", "mfds_igrd_nm_2", "ancmnt_no", "ancmnt_aplcn_day", "cutn_mttr", "rmrk", "type_cd", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring(md5(g.i::text), 1, 50) AS "conc_bann_sn",
  substring('CD' || lpad(g.i::text, 7, '0'), 1, 9) AS "prdct_cd_1",
  substring('CD' || lpad(g.i::text, 7, '0'), 1, 9) AS "prdct_cd_2",
  substring('igrd_nm_1_' || g.i::text, 1, 100) AS "igrd_nm_1",
  substring('CD' || lpad(g.i::text, 7, '0'), 1, 9) AS "igrd_cd_1",
  substring('prdct_nm_1_' || g.i::text, 1, 256) AS "prdct_nm_1",
  substring('bzenty_nm_1_' || g.i::text, 1, 100) AS "bzenty_nm_1",
  substring(md5(g.i::text), 1, 1) AS "se_1",
  substring('mfds_prdct_nm_1_' || g.i::text, 1, 256) AS "mfds_prdct_nm_1",
  substring('CD' || lpad(g.i::text, 5, '0'), 1, 7) AS "mfds_igrd_cd_1",
  substring('mfds_igrd_nm_1_' || g.i::text, 1, 100) AS "mfds_igrd_nm_1",
  substring('igrd_nm_2_' || g.i::text, 1, 100) AS "igrd_nm_2",
  substring('CD' || lpad(g.i::text, 7, '0'), 1, 9) AS "igrd_cd_2",
  substring('prdct_nm_2_' || g.i::text, 1, 256) AS "prdct_nm_2",
  substring('bzenty_nm_2_' || g.i::text, 1, 100) AS "bzenty_nm_2",
  substring(md5(g.i::text), 1, 1) AS "se_2",
  substring('mfds_prdct_nm_2_' || g.i::text, 1, 256) AS "mfds_prdct_nm_2",
  substring('CD' || lpad(g.i::text, 5, '0'), 1, 7) AS "mfds_igrd_cd_2",
  substring('mfds_igrd_nm_2_' || g.i::text, 1, 100) AS "mfds_igrd_nm_2",
  substring(md5(g.i::text), 1, 8) AS "ancmnt_no",
  substring(md5(g.i::text), 1, 8) AS "ancmnt_aplcn_day",
  substring(md5(g.i::text), 1, 4000) AS "cutn_mttr",
  substring(md5(g.i::text), 1, 4000) AS "rmrk",
  substring('CD' || lpad(g.i::text, 1, '0'), 1, 1) AS "type_cd",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_DEPT_AUTHRT"
INSERT INTO "TB_PP_M_DEPT_AUTHRT" ("dept_no", "authrt_cd", "dept_authrt_rmrk", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  ('DPT' || lpad(((g.i-1) % 8 + 1)::text, 4, '0')) AS "dept_no",
  ('ROLE_' || lpad(((g.i-1) % 1000 + 1)::text, 4, '0')) AS "authrt_cd",
  substring(md5(g.i::text), 1, 4000) AS "dept_authrt_rmrk",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_DGSTFN_EXMN"
INSERT INTO "TB_PP_M_DGSTFN_EXMN" ("dgstfn_exmn_sn", "menu_sn", "dgstfn_scr", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  (g.i % 1000000)::numeric(22,0) AS "dgstfn_exmn_sn",
  ((g.i - 1) % 88 + 1)::numeric(10,0) AS "menu_sn",
  (g.i % 100)::numeric(2,0) AS "dgstfn_scr",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_DMN"
INSERT INTO "TB_PP_M_DMN" ("com_std_dmn_nm", "sys_se_nm", "artcl_sou_nm", "com_std_dmn_clsf_nm", "com_std_dmn_group_nm", "com_std_dmn_expln", "dmn_type_nm", "dmn_len", "dmn_dcpt_len", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring('com_std_dmn_nm_' || g.i::text, 1, 40) AS "com_std_dmn_nm",
  substring('sys_se_nm_' || g.i::text, 1, 40) AS "sys_se_nm",
  substring('artcl_sou_nm_' || g.i::text, 1, 40) AS "artcl_sou_nm",
  substring('com_std_dmn_clsf_nm_' || g.i::text, 1, 40) AS "com_std_dmn_clsf_nm",
  substring('com_std_dmn_group_nm_' || g.i::text, 1, 40) AS "com_std_dmn_group_nm",
  substring(md5(g.i::text), 1, 4000) AS "com_std_dmn_expln",
  substring('dmn_type_nm_' || g.i::text, 1, 40) AS "dmn_type_nm",
  (g.i % 1000000)::numeric(10,0) AS "dmn_len",
  (g.i % 1000000)::numeric(10,0) AS "dmn_dcpt_len",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_DUR_CPCT"
INSERT INTO "TB_PP_M_DUR_CPCT" ("cpct_cutn_sn", "mdcn_cd", "mdcn_nm", "gnrl_nm_cd", "gnrl_nm", "daily_max_admin_cpct", "daily_max_admin_crtr_cpct", "chck_crtr_igrd_con", "mfds_prdct_nm", "mfds_igrd_cd", "mfds_igrd_nm", "pbanc_ymd", "pbanc_no", "dtl_cn", "aplcn_ym", "type_cd", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring(md5(g.i::text), 1, 50) AS "cpct_cutn_sn",
  substring('CD' || lpad(g.i::text, 7, '0'), 1, 9) AS "mdcn_cd",
  substring('mdcn_nm_' || g.i::text, 1, 256) AS "mdcn_nm",
  substring('gnrl_nm_cd_' || g.i::text, 1, 9) AS "gnrl_nm_cd",
  substring('gnrl_nm_' || g.i::text, 1, 100) AS "gnrl_nm",
  substring(md5(g.i::text), 1, 4000) AS "daily_max_admin_cpct",
  (g.i % 1000000)::numeric(10,3) AS "daily_max_admin_crtr_cpct",
  (g.i % 1000000)::numeric(10,3) AS "chck_crtr_igrd_con",
  substring('mfds_prdct_nm_' || g.i::text, 1, 256) AS "mfds_prdct_nm",
  substring('CD' || lpad(g.i::text, 5, '0'), 1, 7) AS "mfds_igrd_cd",
  substring('mfds_igrd_nm_' || g.i::text, 1, 100) AS "mfds_igrd_nm",
  to_char(date '2025-12-26' - (g.i||' days')::interval, 'YYYYMMDD') AS "pbanc_ymd",
  substring(md5(g.i::text), 1, 8) AS "pbanc_no",
  substring(md5(g.i::text), 1, 4000) AS "dtl_cn",
  substring(md5(g.i::text), 1, 6) AS "aplcn_ym",
  substring('CD' || lpad(g.i::text, 1, '0'), 1, 1) AS "type_cd",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_DUR_DOSAGE"
INSERT INTO "TB_PP_M_DUR_DOSAGE" ("dosage_prd_cutn_sn", "mdcn_cd", "mdcn_nm", "gnrl_nm_cd", "gnrl_nm", "max_dosage_prd_days", "mfds_prdct_nm", "mfds_igrd_cd", "mfds_igrd_nm", "pbanc_ymd", "pbanc_no", "aplcn_ym", "rmrk", "type_cd", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring(md5(g.i::text), 1, 50) AS "dosage_prd_cutn_sn",
  substring('CD' || lpad(g.i::text, 7, '0'), 1, 9) AS "mdcn_cd",
  substring('mdcn_nm_' || g.i::text, 1, 256) AS "mdcn_nm",
  substring('gnrl_nm_cd_' || g.i::text, 1, 9) AS "gnrl_nm_cd",
  substring('gnrl_nm_' || g.i::text, 1, 100) AS "gnrl_nm",
  (g.i % 10000)::numeric(4,0) AS "max_dosage_prd_days",
  substring('mfds_prdct_nm_' || g.i::text, 1, 256) AS "mfds_prdct_nm",
  substring('CD' || lpad(g.i::text, 5, '0'), 1, 7) AS "mfds_igrd_cd",
  substring('mfds_igrd_nm_' || g.i::text, 1, 100) AS "mfds_igrd_nm",
  to_char(date '2025-12-26' - (g.i||' days')::interval, 'YYYYMMDD') AS "pbanc_ymd",
  substring(md5(g.i::text), 1, 8) AS "pbanc_no",
  substring(md5(g.i::text), 1, 6) AS "aplcn_ym",
  substring(md5(g.i::text), 1, 4000) AS "rmrk",
  substring('CD' || lpad(g.i::text, 1, '0'), 1, 1) AS "type_cd",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_DUR_EFTGRP_IGRD"
INSERT INTO "TB_PP_M_DUR_EFTGRP_IGRD" ("eftgrp_dpcn_sn", "eftgrp_nm", "bsys_nm", "korn_igrd_nm", "eng_igrd_nm", "rmrk", "mfds_prdct_nm", "mfds_igrd_cd", "mfds_igrd_nm", "aplcn_ym", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring(md5(g.i::text), 1, 50) AS "eftgrp_dpcn_sn",
  substring('eftgrp_nm_' || g.i::text, 1, 100) AS "eftgrp_nm",
  substring('bsys_nm_' || g.i::text, 1, 256) AS "bsys_nm",
  substring('korn_igrd_nm_' || g.i::text, 1, 100) AS "korn_igrd_nm",
  substring('eng_igrd_nm_' || g.i::text, 1, 100) AS "eng_igrd_nm",
  substring(md5(g.i::text), 1, 4000) AS "rmrk",
  substring('mfds_prdct_nm_' || g.i::text, 1, 256) AS "mfds_prdct_nm",
  substring('CD' || lpad(g.i::text, 5, '0'), 1, 7) AS "mfds_igrd_cd",
  substring('mfds_igrd_nm_' || g.i::text, 1, 100) AS "mfds_igrd_nm",
  substring(md5(g.i::text), 1, 6) AS "aplcn_ym",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_DUR_EFTGRP_ITEM"
INSERT INTO "TB_PP_M_DUR_EFTGRP_ITEM" ("eftgrp_dpcn_sn", "mdcn_cd", "eft_group", "group", "group_1", "eftgrp_dpcn_chck_cd", "gnrl_nm_cd", "gnrl_nm", "item_nm", "bzenty_nm", "mfds_prdct_nm", "mfds_igrd_cd", "mfds_igrd_nm", "pbanc_ymd", "pbanc_no", "aplcn_ym", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring(md5(g.i::text), 1, 50) AS "eftgrp_dpcn_sn",
  substring('CD' || lpad(g.i::text, 7, '0'), 1, 9) AS "mdcn_cd",
  substring(md5(g.i::text), 1, 20) AS "eft_group",
  substring(md5(g.i::text), 1, 20) AS "group",
  substring(md5(g.i::text), 1, 20) AS "group_1",
  substring('CD' || lpad(g.i::text, 6, '0'), 1, 8) AS "eftgrp_dpcn_chck_cd",
  substring('gnrl_nm_cd_' || g.i::text, 1, 9) AS "gnrl_nm_cd",
  substring('gnrl_nm_' || g.i::text, 1, 100) AS "gnrl_nm",
  substring('item_nm_' || g.i::text, 1, 256) AS "item_nm",
  substring('bzenty_nm_' || g.i::text, 1, 100) AS "bzenty_nm",
  substring('mfds_prdct_nm_' || g.i::text, 1, 256) AS "mfds_prdct_nm",
  substring('CD' || lpad(g.i::text, 5, '0'), 1, 7) AS "mfds_igrd_cd",
  substring('mfds_igrd_nm_' || g.i::text, 1, 100) AS "mfds_igrd_nm",
  to_char(date '2025-12-26' - (g.i||' days')::interval, 'YYYYMMDD') AS "pbanc_ymd",
  substring(md5(g.i::text), 1, 8) AS "pbanc_no",
  substring(md5(g.i::text), 1, 6) AS "aplcn_ym",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_DUR_NURSW"
INSERT INTO "TB_PP_M_DUR_NURSW" ("nursw_cutn_sn", "prdct_cd", "main_igrd_cd", "igrd_nm", "prdct_nm", "bzenty_nm", "mfds_prdct_nm", "mfds_igrd_cd", "mfds_igrd_nm", "pbanc_ymd", "pbanc_no", "aplcn_ym", "rmrk", "type_cd", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring(md5(g.i::text), 1, 50) AS "nursw_cutn_sn",
  substring('CD' || lpad(g.i::text, 7, '0'), 1, 9) AS "prdct_cd",
  substring('CD' || lpad(g.i::text, 7, '0'), 1, 9) AS "main_igrd_cd",
  substring('igrd_nm_' || g.i::text, 1, 100) AS "igrd_nm",
  substring('prdct_nm_' || g.i::text, 1, 256) AS "prdct_nm",
  substring('bzenty_nm_' || g.i::text, 1, 100) AS "bzenty_nm",
  substring('mfds_prdct_nm_' || g.i::text, 1, 256) AS "mfds_prdct_nm",
  substring('CD' || lpad(g.i::text, 5, '0'), 1, 7) AS "mfds_igrd_cd",
  substring('mfds_igrd_nm_' || g.i::text, 1, 100) AS "mfds_igrd_nm",
  to_char(date '2025-12-26' - (g.i||' days')::interval, 'YYYYMMDD') AS "pbanc_ymd",
  substring(md5(g.i::text), 1, 8) AS "pbanc_no",
  substring(md5(g.i::text), 1, 6) AS "aplcn_ym",
  substring(md5(g.i::text), 1, 4000) AS "rmrk",
  substring('CD' || lpad(g.i::text, 1, '0'), 1, 1) AS "type_cd",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_DUR_PRGNT_IGRD"
INSERT INTO "TB_PP_M_DUR_PRGNT_IGRD" ("prgnt_bann_sn", "igrd_nm", "bann_grd", "rmrk", "dtl_cn", "mfds_prdct_nm", "mfds_igrd_cd", "mfds_igrd_nm", "aplcn_ym", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring(md5(g.i::text), 1, 50) AS "prgnt_bann_sn",
  substring('igrd_nm_' || g.i::text, 1, 100) AS "igrd_nm",
  substring(md5(g.i::text), 1, 4000) AS "bann_grd",
  substring(md5(g.i::text), 1, 4000) AS "rmrk",
  substring(md5(g.i::text), 1, 4000) AS "dtl_cn",
  substring('mfds_prdct_nm_' || g.i::text, 1, 256) AS "mfds_prdct_nm",
  substring('CD' || lpad(g.i::text, 5, '0'), 1, 7) AS "mfds_igrd_cd",
  substring('mfds_igrd_nm_' || g.i::text, 1, 100) AS "mfds_igrd_nm",
  substring(md5(g.i::text), 1, 6) AS "aplcn_ym",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_DUR_PRGNT_ITEM"
INSERT INTO "TB_PP_M_DUR_PRGNT_ITEM" ("prgnt_bann_sn", "prdct_cd", "igrd_nm", "igrd_cd", "prdct_nm", "bzenty_nm", "mfds_prdct_nm", "mfds_igrd_cd", "mfds_igrd_nm", "ancmnt_ymd", "ancmnt_no", "bann_grd", "dtl_info", "aplcn_ym", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring(md5(g.i::text), 1, 50) AS "prgnt_bann_sn",
  substring('CD' || lpad(g.i::text, 7, '0'), 1, 9) AS "prdct_cd",
  substring('igrd_nm_' || g.i::text, 1, 100) AS "igrd_nm",
  substring('CD' || lpad(g.i::text, 7, '0'), 1, 9) AS "igrd_cd",
  substring('prdct_nm_' || g.i::text, 1, 256) AS "prdct_nm",
  substring('bzenty_nm_' || g.i::text, 1, 100) AS "bzenty_nm",
  substring('mfds_prdct_nm_' || g.i::text, 1, 256) AS "mfds_prdct_nm",
  substring('CD' || lpad(g.i::text, 5, '0'), 1, 7) AS "mfds_igrd_cd",
  substring('mfds_igrd_nm_' || g.i::text, 1, 100) AS "mfds_igrd_nm",
  to_char(date '2025-12-26' - (g.i||' days')::interval, 'YYYYMMDD') AS "ancmnt_ymd",
  substring(md5(g.i::text), 1, 8) AS "ancmnt_no",
  (g.i % 100)::numeric(2,0) AS "bann_grd",
  substring(md5(g.i::text), 1, 4000) AS "dtl_info",
  substring(md5(g.i::text), 1, 6) AS "aplcn_ym",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_DUR_SNCTZ"
INSERT INTO "TB_PP_M_DUR_SNCTZ" ("snctz_cutn_sn", "prdct_cd", "dur_igrd_nm", "dur_igrd_cd", "dur_prdct_nm", "dur_bzenty_nm", "mfds_prdct_nm", "mfds_igrd_cd", "mfds_igrd_nm", "pbanc_ymd", "pbanc_no", "mdcn_dtl_info", "aplcn_ym", "rmrk", "type_cd", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring(md5(g.i::text), 1, 50) AS "snctz_cutn_sn",
  substring('CD' || lpad(g.i::text, 7, '0'), 1, 9) AS "prdct_cd",
  substring('dur_igrd_nm_' || g.i::text, 1, 100) AS "dur_igrd_nm",
  substring('CD' || lpad(g.i::text, 7, '0'), 1, 9) AS "dur_igrd_cd",
  substring('dur_prdct_nm_' || g.i::text, 1, 256) AS "dur_prdct_nm",
  substring('dur_bzenty_nm_' || g.i::text, 1, 100) AS "dur_bzenty_nm",
  substring('mfds_prdct_nm_' || g.i::text, 1, 256) AS "mfds_prdct_nm",
  substring('CD' || lpad(g.i::text, 5, '0'), 1, 7) AS "mfds_igrd_cd",
  substring('mfds_igrd_nm_' || g.i::text, 1, 100) AS "mfds_igrd_nm",
  to_char(date '2025-12-26' - (g.i||' days')::interval, 'YYYYMMDD') AS "pbanc_ymd",
  substring(md5(g.i::text), 1, 8) AS "pbanc_no",
  substring(md5(g.i::text), 1, 4000) AS "mdcn_dtl_info",
  substring(md5(g.i::text), 1, 6) AS "aplcn_ym",
  substring(md5(g.i::text), 1, 4000) AS "rmrk",
  substring('CD' || lpad(g.i::text, 1, '0'), 1, 1) AS "type_cd",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_DUR_SNCTZ_MED"
INSERT INTO "TB_PP_M_DUR_SNCTZ_MED" ("snctz_cutn_med_sn", "prdct_cd", "igrd_cd", "igrd_nm", "prdct_nm", "entp_nm", "mfds_prdct_nm", "mfds_igrd_cd", "mfds_igrd_nm", "mdcn_dtl_info", "aplcn_ym", "type_cd", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring(md5(g.i::text), 1, 50) AS "snctz_cutn_med_sn",
  substring('CD' || lpad(g.i::text, 7, '0'), 1, 9) AS "prdct_cd",
  substring('CD' || lpad(g.i::text, 7, '0'), 1, 9) AS "igrd_cd",
  substring('igrd_nm_' || g.i::text, 1, 100) AS "igrd_nm",
  substring('prdct_nm_' || g.i::text, 1, 256) AS "prdct_nm",
  substring('entp_nm_' || g.i::text, 1, 100) AS "entp_nm",
  substring('mfds_prdct_nm_' || g.i::text, 1, 256) AS "mfds_prdct_nm",
  substring('CD' || lpad(g.i::text, 5, '0'), 1, 7) AS "mfds_igrd_cd",
  substring('mfds_igrd_nm_' || g.i::text, 1, 100) AS "mfds_igrd_nm",
  substring(md5(g.i::text), 1, 4000) AS "mdcn_dtl_info",
  substring(md5(g.i::text), 1, 6) AS "aplcn_ym",
  substring('CD' || lpad(g.i::text, 1, '0'), 1, 1) AS "type_cd",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_EXPRT_AUTHRT"
INSERT INTO "TB_PP_M_EXPRT_AUTHRT" ("mbr_no", "authrt_cd", "use_yn", "exprt_authrt_rmrk", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring(md5(g.i::text), 1, 10) AS "mbr_no",
  ('ROLE_' || lpad(((g.i-1) % 1000 + 1)::text, 4, '0')) AS "authrt_cd",
  (CASE WHEN (g.i % 10)=0 THEN 'N' ELSE 'Y' END) AS "use_yn",
  substring(md5(g.i::text), 1, 4000) AS "exprt_authrt_rmrk",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_EXPRT_INFO"
INSERT INTO "TB_PP_M_EXPRT_INFO" ("mbr_no", "brno", "exprt_ogdp_inst_encpt_eml", "exprt_hdof_yn", "exprt_aprv_stts_yn", "aprv_prcs_ymd", "rjct_rsn", "atch_file_id", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring(md5(g.i::text), 1, 10) AS "mbr_no",
  substring(md5(g.i::text), 1, 10) AS "brno",
  substring(md5(g.i::text), 1, 40) AS "exprt_ogdp_inst_encpt_eml",
  (CASE WHEN (g.i % 10)=0 THEN 'N' ELSE 'Y' END) AS "exprt_hdof_yn",
  (CASE WHEN (g.i % 10)=0 THEN 'N' ELSE 'Y' END) AS "exprt_aprv_stts_yn",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "aprv_prcs_ymd",
  substring(md5(g.i::text), 1, 4000) AS "rjct_rsn",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "atch_file_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_EXPRT_TASK"
INSERT INTO "TB_PP_M_EXPRT_TASK" ("exprt_task_sn", "mbr_no", "task_se_cd", "brno", "exprt_aprv_stts_yn", "aprv_prcs_ymd", "rjct_rsn", "wrtr_dept_nm", "mdfr_dept_nm", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  (g.i % 1000000)::numeric(10,0) AS "exprt_task_sn",
  substring(md5(g.i::text), 1, 10) AS "mbr_no",
  substring('CD' || lpad(g.i::text, 8, '0'), 1, 10) AS "task_se_cd",
  substring(md5(g.i::text), 1, 10) AS "brno",
  (CASE WHEN (g.i % 10)=0 THEN 'N' ELSE 'Y' END) AS "exprt_aprv_stts_yn",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "aprv_prcs_ymd",
  substring(md5(g.i::text), 1, 4000) AS "rjct_rsn",
  substring('wrtr_dept_nm_' || g.i::text, 1, 40) AS "wrtr_dept_nm",
  substring('mdfr_dept_nm_' || g.i::text, 1, 40) AS "mdfr_dept_nm",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_FAQ"
INSERT INTO "TB_PP_M_FAQ" ("faq_sn", "task_se_cd", "faq_clsf", "faq_ttl", "faq_seq", "use_yn", "lang_se_cd", "faq_ans", "atch_file_id", "wrtr_dept_nm", "mdfr_dept_nm", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  (g.i % 1000000)::numeric(10,0) AS "faq_sn",
  substring('CD' || lpad(g.i::text, 8, '0'), 1, 10) AS "task_se_cd",
  substring(md5(g.i::text), 1, 80) AS "faq_clsf",
  substring(md5(g.i::text), 1, 256) AS "faq_ttl",
  (g.i % 100)::numeric(2,0) AS "faq_seq",
  (CASE WHEN (g.i % 10)=0 THEN 'N' ELSE 'Y' END) AS "use_yn",
  substring('CD' || lpad(g.i::text, 1, '0'), 1, 2) AS "lang_se_cd",
  substring(md5(g.i::text), 1, 4000) AS "faq_ans",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "atch_file_id",
  substring('wrtr_dept_nm_' || g.i::text, 1, 40) AS "wrtr_dept_nm",
  substring('mdfr_dept_nm_' || g.i::text, 1, 40) AS "mdfr_dept_nm",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_FORM"
INSERT INTO "TB_PP_M_FORM" ("form_sn", "task_cd", "form_nm", "form_path", "use_yn", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  (g.i % 1000000)::numeric(22,0) AS "form_sn",
  substring('CD' || lpad(g.i::text, 18, '0'), 1, 20) AS "task_cd",
  substring('form_nm_' || g.i::text, 1, 40) AS "form_nm",
  substring(md5(g.i::text), 1, 4000) AS "form_path",
  (CASE WHEN (g.i % 10)=0 THEN 'N' ELSE 'Y' END) AS "use_yn",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_INST"
INSERT INTO "TB_PP_M_INST" ("brno", "inst_nm", "del_yn", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring(md5(g.i::text), 1, 10) AS "brno",
  substring('inst_nm_' || g.i::text, 1, 200) AS "inst_nm",
  (CASE WHEN (g.i % 10)=0 THEN 'N' ELSE 'Y' END) AS "del_yn",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_INST_TASK"
INSERT INTO "TB_PP_M_INST_TASK" ("brno", "task_se_cd", "mbr_id", "use_yn", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring(md5(g.i::text), 1, 10) AS "brno",
  substring('CD' || lpad(g.i::text, 8, '0'), 1, 10) AS "task_se_cd",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mbr_id",
  (CASE WHEN (g.i % 10)=0 THEN 'N' ELSE 'Y' END) AS "use_yn",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_MBR_INFO"
INSERT INTO "TB_PP_M_MBR_INFO" ("mbr_no", "mbr_id", "mbr_encpt_flnm", "mbr_encpt_eml", "mbr_enpswd", "mbr_encpt_telno", "mbr_type_cd", "mbr_join_stts", "mbr_join_dt", "mbr_whdwl_rsn", "mbr_whdwl_dt", "bfr_enpswd", "pswd_chg_dt", "pswd_err_nmtm", "link_info_idntf_id", "cert_token", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring(md5(g.i::text), 1, 10) AS "mbr_no",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mbr_id",
  substring('mbr_encpt_flnm_' || g.i::text, 1, 20) AS "mbr_encpt_flnm",
  substring(md5(g.i::text), 1, 100) AS "mbr_encpt_eml",
  substring(md5(g.i::text), 1, 100) AS "mbr_enpswd",
  substring(md5(g.i::text), 1, 11) AS "mbr_encpt_telno",
  substring('CD' || lpad(g.i::text, 1, '0'), 1, 1) AS "mbr_type_cd",
  substring(md5(g.i::text), 1, 1) AS "mbr_join_stts",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mbr_join_dt",
  substring(md5(g.i::text), 1, 4000) AS "mbr_whdwl_rsn",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mbr_whdwl_dt",
  substring(md5(g.i::text), 1, 100) AS "bfr_enpswd",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "pswd_chg_dt",
  (g.i % 100)::numeric(2,0) AS "pswd_err_nmtm",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "link_info_idntf_id",
  substring(md5(g.i::text), 1, 40) AS "cert_token",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_OPNN"
INSERT INTO "TB_PP_M_OPNN" ("opnn_sn", "wrtr_encpt_flnm", "wrtr_encpt_telno", "wrt_se_cd", "pbpt_cn", "dmnd_mttr", "dmnd_mttr_dtl_cn", "ref_mttr", "atch_file_sn", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  (g.i % 1000000)::numeric(22,0) AS "opnn_sn",
  substring('wrtr_encpt_flnm_' || g.i::text, 1, 20) AS "wrtr_encpt_flnm",
  substring(md5(g.i::text), 1, 11) AS "wrtr_encpt_telno",
  substring('CD' || lpad(g.i::text, 1, '0'), 1, 3) AS "wrt_se_cd",
  substring(md5(g.i::text), 1, 4000) AS "pbpt_cn",
  substring(md5(g.i::text), 1, 4000) AS "dmnd_mttr",
  NULL AS "dmnd_mttr_dtl_cn",
  substring(md5(g.i::text), 1, 4000) AS "ref_mttr",
  substring(md5(g.i::text), 1, 50) AS "atch_file_sn",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_PIC_AUTHRT"
INSERT INTO "TB_PP_M_PIC_AUTHRT" ("emp_no", "authrt_cd", "pic_authrt_rmrk", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  ('EMP' || lpad(((g.i-1) % 1000 + 1)::text, 6, '0')) AS "emp_no",
  ('ROLE_' || lpad(((g.i-1) % 1000 + 1)::text, 4, '0')) AS "authrt_cd",
  substring(md5(g.i::text), 1, 4000) AS "pic_authrt_rmrk",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_POPUP"
INSERT INTO "TB_PP_M_POPUP" ("popup_sn", "popup_ttl", "popup_pstg_bgng_ymd", "popup_pstg_end_ymd", "popup_lnkg_addr", "popup_seq", "popup_pstg_yn", "popup_npag_yn", "popup_expln", "atch_file_id", "wrtr_dept_nm", "mdfr_dept_nm", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  (g.i % 1000000)::numeric(10,0) AS "popup_sn",
  substring(md5(g.i::text), 1, 100) AS "popup_ttl",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "popup_pstg_bgng_ymd",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "popup_pstg_end_ymd",
  substring(md5(g.i::text), 1, 4000) AS "popup_lnkg_addr",
  (g.i % 1000000)::numeric(10,0) AS "popup_seq",
  (CASE WHEN (g.i % 10)=0 THEN 'N' ELSE 'Y' END) AS "popup_pstg_yn",
  (CASE WHEN (g.i % 10)=0 THEN 'N' ELSE 'Y' END) AS "popup_npag_yn",
  substring(md5(g.i::text), 1, 4000) AS "popup_expln",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "atch_file_id",
  substring('wrtr_dept_nm_' || g.i::text, 1, 40) AS "wrtr_dept_nm",
  substring('mdfr_dept_nm_' || g.i::text, 1, 40) AS "mdfr_dept_nm",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_PRVC_ACS_HSTRY"
INSERT INTO "TB_PP_M_PRVC_ACS_HSTRY" ("prvc_acs_sn", "inq_crtr_ymd", "srvc_cd", "menu_sn", "methods_nm", "inq_info", "rqstr_id", "rqstr_ip_addr", "inq_cnd", "inq_telgm", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  (g.i % 1000000)::numeric(10,0) AS "prvc_acs_sn",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "inq_crtr_ymd",
  substring('CD' || lpad(g.i::text, 1, '0'), 1, 2) AS "srvc_cd",
  ((g.i - 1) % 88 + 1)::numeric(10,0) AS "menu_sn",
  substring('methods_nm_' || g.i::text, 1, 100) AS "methods_nm",
  substring(md5(g.i::text), 1, 4000) AS "inq_info",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rqstr_id",
  substring(md5(g.i::text), 1, 100) AS "rqstr_ip_addr",
  substring(md5(g.i::text), 1, 4000) AS "inq_cnd",
  NULL AS "inq_telgm",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_PST"
INSERT INTO "TB_PP_M_PST" ("pst_sn", "bbs_id", "pst_ttl", "pst_cn", "pst_inq_cnt", "pst_kogl_cprgt_type_cd", "atch_file_id", "thmb_id", "ntc_yn", "del_yn", "wrtr_dept_nm", "mdfr_dept_nm", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  (g.i % 1000000)::numeric(22,0) AS "pst_sn",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "bbs_id",
  substring(md5(g.i::text), 1, 100) AS "pst_ttl",
  NULL AS "pst_cn",
  (g.i % 1000000)::numeric(10,0) AS "pst_inq_cnt",
  substring('CD' || lpad(g.i::text, 1, '0'), 1, 1) AS "pst_kogl_cprgt_type_cd",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "atch_file_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 50) AS "thmb_id",
  (CASE WHEN (g.i % 10)=0 THEN 'N' ELSE 'Y' END) AS "ntc_yn",
  (CASE WHEN (g.i % 10)=0 THEN 'N' ELSE 'Y' END) AS "del_yn",
  substring('wrtr_dept_nm_' || g.i::text, 1, 40) AS "wrtr_dept_nm",
  substring('mdfr_dept_nm_' || g.i::text, 1, 40) AS "mdfr_dept_nm",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_ROLE"
INSERT INTO "TB_PP_M_ROLE" ("role_cd", "role_nm", "role_type", "role_expln_cn", "use_yn", "wrtr_dept_nm", "mdfr_dept_nm", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring('CD' || lpad(g.i::text, 18, '0'), 1, 20) AS "role_cd",
  substring('role_nm_' || g.i::text, 1, 40) AS "role_nm",
  substring(md5(g.i::text), 1, 20) AS "role_type",
  substring(md5(g.i::text), 1, 4000) AS "role_expln_cn",
  (CASE WHEN (g.i % 10)=0 THEN 'N' ELSE 'Y' END) AS "use_yn",
  substring('wrtr_dept_nm_' || g.i::text, 1, 40) AS "wrtr_dept_nm",
  substring('mdfr_dept_nm_' || g.i::text, 1, 40) AS "mdfr_dept_nm",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_STTY_AGT_INFO"
INSERT INTO "TB_PP_M_STTY_AGT_INFO" ("mbr_no", "stty_agt_nm", "stty_agt_encpt_telno", "stty_agt_rel", "link_info_idntf_id", "cert_token", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring(md5(g.i::text), 1, 10) AS "mbr_no",
  substring('stty_agt_nm_' || g.i::text, 1, 20) AS "stty_agt_nm",
  substring(md5(g.i::text), 1, 11) AS "stty_agt_encpt_telno",
  substring(md5(g.i::text), 1, 20) AS "stty_agt_rel",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "link_info_idntf_id",
  substring(md5(g.i::text), 1, 40) AS "cert_token",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_TASK_CD"
INSERT INTO "TB_PP_M_TASK_CD" ("task_cd", "task_cd_nm", "up_task_cd", "task_cd_vl", "task_cd_expln", "use_yn", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring('CD' || lpad(g.i::text, 18, '0'), 1, 20) AS "task_cd",
  substring('task_cd_nm_' || g.i::text, 1, 200) AS "task_cd_nm",
  substring('CD' || lpad(g.i::text, 18, '0'), 1, 20) AS "up_task_cd",
  substring('CD' || lpad(g.i::text, 98, '0'), 1, 100) AS "task_cd_vl",
  substring('CD' || lpad(g.i::text, 3998, '0'), 1, 4000) AS "task_cd_expln",
  (CASE WHEN (g.i % 10)=0 THEN 'N' ELSE 'Y' END) AS "use_yn",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_TRMS_STT"
INSERT INTO "TB_PP_M_TRMS_STT" ("trms_stt_sn", "trms_stt_cd", "trms_stt_aplcn_day", "trms_stt_end_day", "trms_stt_cn", "atch_file_id", "wrtr_dept_nm", "mdfr_dept_nm", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  (g.i % 1000000)::numeric(10,0) AS "trms_stt_sn",
  substring('CD' || lpad(g.i::text, 18, '0'), 1, 20) AS "trms_stt_cd",
  substring(md5(g.i::text), 1, 8) AS "trms_stt_aplcn_day",
  substring(md5(g.i::text), 1, 8) AS "trms_stt_end_day",
  substring(md5(g.i::text), 1, 4000) AS "trms_stt_cn",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "atch_file_id",
  substring('wrtr_dept_nm_' || g.i::text, 1, 40) AS "wrtr_dept_nm",
  substring('mdfr_dept_nm_' || g.i::text, 1, 40) AS "mdfr_dept_nm",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


-- table: "TB_PP_M_WORD"
INSERT INTO "TB_PP_M_WORD" ("com_std_word_nm", "sys_se_nm", "artcl_sou_nm", "com_std_word_eng_abbr_nm", "com_std_word_eng_nm", "com_std_word_expln", "frm_word_yn", "rgtr_id", "reg_dt", "reg_prgrm_id", "mdfr_id", "mdfcn_dt", "mdfcn_prgrm_id")
SELECT
  substring('com_std_word_nm_' || g.i::text, 1, 40) AS "com_std_word_nm",
  substring('sys_se_nm_' || g.i::text, 1, 40) AS "sys_se_nm",
  substring('artcl_sou_nm_' || g.i::text, 1, 40) AS "artcl_sou_nm",
  substring('com_std_word_eng_abbr_nm_' || g.i::text, 1, 40) AS "com_std_word_eng_abbr_nm",
  substring('com_std_word_eng_nm_' || g.i::text, 1, 40) AS "com_std_word_eng_nm",
  substring(md5(g.i::text), 1, 4000) AS "com_std_word_expln",
  (CASE WHEN (g.i % 10)=0 THEN 'N' ELSE 'Y' END) AS "frm_word_yn",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "rgtr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "reg_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "reg_prgrm_id",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 20) AS "mdfr_id",
  (timestamp '2025-12-26 09:00:00' - (g.i||' hours')::interval) AS "mdfcn_dt",
  substring('USR' || lpad(g.i::text, 6, '0'), 1, 100) AS "mdfcn_prgrm_id"
FROM generate_series(1,1000) AS g(i);


COMMIT;
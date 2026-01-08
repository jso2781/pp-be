INSERT INTO "KIDS_OWN"."TB_PP_M_MENU"
( menu_sn, menu_nm, up_menu_sn, task_se_cd, menu_type_cd, menu_seq,
  menu_expln, lang_se_cd, pic_dept_nm, pic_flnm, use_yn,
  rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id )
VALUES
-- 1 Depth
(1000, '주요 업무',  NULL, 'PP', 'MENU', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1100, '정보공개',   NULL, 'PP', 'MENU', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1200, '기관소식',   NULL, 'PP', 'MENU', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1300, '기관소개',   NULL, 'PP', 'MENU', 4, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 2 Depth under 1000(주요 업무)
(1001, '의약품 이상사례보고',            1000, 'PP', 'MENU', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1002, '의약품 부작용 보고 자료',        1000, 'PP', 'MENU', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1003, '의약품 안전관리',                1000, 'PP', 'MENU', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1004, '의약품.의료정보.연계분석',        1000, 'PP', 'MENU', 4, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1005, 'DUR 정보',                       1000, 'PP', 'MENU', 5, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1006, '부작용 피해구제',                1000, 'PP', 'MENU', 6, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1007, '임상시험안전지원',                1000, 'PP', 'MENU', 7, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 3 Depth under 1001(의약품 이상사례보고)
(1010, '이상사례보고',                    1001, 'PP', 'MENU', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1011, '온라인 보고',                     1001, 'PP', 'MENU', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1012, '오프라인 보고',                   1001, 'PP', 'PAGE', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1013, '이상사례보고자료실',               1001, 'PP', 'PAGE', 4, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1014, '온라인보고방법 안내',              1001, 'PP', 'PAGE', 5, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 4 Depth under 1010(이상사례보고)
(1020, '이상사례 보고란?',                 1010, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1021, 'KAERS란?',                         1010, 'PP', 'PAGE', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 4 Depth under 1011(온라인 보고)
(1030, '의약품이상사례',                    1011, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1031, '의약외품(생리대 등)',               1011, 'PP', 'PAGE', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 3 Depth under 1002(의약품 부작용 보고 자료)
(1040, '의약품 부작용 보고1',              1002, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1041, '의약품 부작용 보고2',              1002, 'PP', 'PAGE', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1042, '의약품 부작용 보고3',              1002, 'PP', 'PAGE', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 3 Depth under 1003(의약품 안전관리)
(1050, '약물감시용어',                      1003, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1051, '부작용 인과관계규명',               1003, 'PP', 'PAGE', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1052, '유관기관',                          1003, 'PP', 'PAGE', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 3 Depth under 1004(의약품.의료정보.연계분석)
(1060, '의약품.의료정보.연계분석1',         1004, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1061, '의약품.의료정보.연계분석2',         1004, 'PP', 'PAGE', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1062, '의약품.의료정보.연계분석3',         1004, 'PP', 'PAGE', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 3 Depth under 1005(DUR 정보)
(1070, 'DUR 이해',                          1005, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1071, 'DUR 정보검색방',                    1005, 'PP', 'MENU', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1072, '의약품 적정사용 정보방',            1005, 'PP', 'MENU', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1073, 'DUR 게시판',                        1005, 'PP', 'PAGE', 4, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1074, 'DUR 제안',                          1005, 'PP', 'PAGE', 5, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 4 Depth under 1071(DUR 정보검색방)
(1080, 'DUR 통합검색',                       1071, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1081, '병용금기',                           1071, 'PP', 'PAGE', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1082, '특정연령대금기',                     1071, 'PP', 'PAGE', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1083, '임부금기',                           1071, 'PP', 'PAGE', 4, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1084, '효능군중복주의',                     1071, 'PP', 'PAGE', 5, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1085, '용량주의',                           1071, 'PP', 'PAGE', 6, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1086, '투여기간주의',                       1071, 'PP', 'PAGE', 7, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1087, '노인주의',                           1071, 'PP', 'PAGE', 8, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1088, '수유부주의',                         1071, 'PP', 'PAGE', 9, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 4 Depth under 1072(의약품 적정사용 정보방)
(1090, '노인 적정사용정보집',                1072, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1091, '소아 적정사용정보집',                1072, 'PP', 'PAGE', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1092, '임부 적정사용정보집',                1072, 'PP', 'PAGE', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1093, '간질환 적정사용정보집',              1072, 'PP', 'PAGE', 4, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1094, '신질환 적정사용정보집',              1072, 'PP', 'PAGE', 5, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 3 Depth under 1006(부작용 피해구제)
(1110, '제도소개',                           1006, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1111, '피해구제 신청',                      1006, 'PP', 'PAGE', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1112, '뉴스/소식',                          1006, 'PP', 'PAGE', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1113, '자주하는 질문',                      1006, 'PP', 'PAGE', 4, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 3 Depth under 1007(임상시험안전지원)
(1120, '임상시험안전지원기관',               1007, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1121, '협약 안내',                          1007, 'PP', 'PAGE', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1122, '중앙IRB신청',                        1007, 'PP', 'PAGE', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1123, '임상시험헬프데스크',                  1007, 'PP', 'PAGE', 4, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1124, '공지사항',                           1007, 'PP', 'PAGE', 5, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(1125, '자료실',                             1007, 'PP', 'PAGE', 6, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 2 Depth under 1100(정보공개)
(2000, '정보공개',                           1100, 'PP', 'MENU', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(2001, '공공데이터 개방',                    1100, 'PP', 'PAGE', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(2002, '경영공시',                           1100, 'PP', 'MENU', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(2003, '사업실명제',                         1100, 'PP', 'PAGE', 4, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 3 Depth under 2000(정보공개)
(2010, '업무처리절차',                        2000, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(2011, '정보공개 청구',                       2000, 'PP', 'PAGE', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(2012, '임직원국외출장',                       2000, 'PP', 'PAGE', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(2013, '원장 업무추진비 집행내역',             2000, 'PP', 'PAGE', 4, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 3 Depth under 2002(경영공시)
(2020, '부패행위 징계현황',                   2002, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(2021, '징계기준',                           2002, 'PP', 'PAGE', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(2022, '징계현황',                           2002, 'PP', 'PAGE', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 2 Depth under 1200(기관소식)
(3000, '공지사항',                           1200, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(3001, '채용게시판',                         1200, 'PP', 'PAGE', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(3002, 'FAQ',                                1200, 'PP', 'PAGE', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(3003, '국민신문고',                         1200, 'PP', 'PAGE', 4, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(3004, '보도자료',                           1200, 'PP', 'PAGE', 5, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(3005, '뉴스레터',                           1200, 'PP', 'MENU', 6, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(3006, '카드뉴스',                           1200, 'PP', 'PAGE', 7, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(3007, '동영상',                             1200, 'PP', 'PAGE', 8, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(3008, '자료실',                             1200, 'PP', 'PAGE', 9, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 3 Depth under 3005(뉴스레터)
(3010, '첨단바이오 포커스',                   3005, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(3011, '마약류 안전정보지',                   3005, 'PP', 'PAGE', 2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(3012, '리플릿',                             3005, 'PP', 'PAGE', 3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 2 Depth under 1300(기관소개)
(4000, '기관장 인사말',                      1300, 'PP', 'PAGE',  1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(4001, '역대 기관장',                        1300, 'PP', 'PAGE',  2, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(4002, '연혁',                              1300, 'PP', 'PAGE',  3, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(4003, '비전 및 목표',                      1300, 'PP', 'PAGE',  4, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(4004, '조직도',                            1300, 'PP', 'PAGE',  5, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(4005, '설립근거 및 관련법령',              1300, 'PP', 'PAGE',  6, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(4006, '고객헌장',                          1300, 'PP', 'PAGE',  7, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(4007, '우리원동정',                        1300, 'PP', 'PAGE',  8, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(4008, 'CI소개',                            1300, 'PP', 'PAGE',  9, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(4009, '윤리경영',                          1300, 'PP', 'MENU', 10, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(4010, '캐릭터소개',                        1300, 'PP', 'PAGE', 11, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),
(4011, '오시는 길',                         1300, 'PP', 'PAGE', 12, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 3 Depth under 4009(윤리경영)
(4012, '클린신고센터',                      4009, 'PP', 'PAGE', 1, NULL, 'ko', NULL, NULL, 'Y', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT')
;


INSERT INTO "KIDS_OWN"."TB_PP_D_MENU"
( menu_sn, menu_url_addr, menu_npag_nm,
  prvc_incl_yn, dgstfn_exmn_yn, menu_expsr_yn, dept_info_expsr_yn, pic_info_expsr_yn,
  menu_kogl_cprgt_type_cd, menu_pic_id, menu_tkcg_dept_no,
  rgtr_id, reg_dt, reg_prgrm_id, mdfr_id, mdfcn_dt, mdfcn_prgrm_id )
VALUES
-- 주요업무 > 의약품 이상사례보고 > 이상사례보고 > (이상사례 보고란?)
(1020, '/safety/report1', NULL,
 'Y','Y','Y','Y','Y',
 NULL, '0000000000000', NULL,
 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 주요업무 > 의약품 이상사례보고 > 이상사례보고 > (KAERS란?)
(1021, '/safety/report2', NULL,
 'Y','Y','Y','Y','Y',
 NULL, '0000000000000', NULL,
 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 주요업무 > 의약품 이상사례보고 > 온라인 보고 > (의약품이상사례)
(1030, 'https://nedrug.mfds.go.kr/CCCBA03F010/getReport', NULL,
 'Y','Y','Y','Y','Y',
 NULL, '0000000000000', NULL,
 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 주요업무 > 의약품 이상사례보고 > 온라인 보고 > (의약외품)
(1031, 'https://nedrug.mfds.go.kr/CCCBA03F010/getReportQuasiDrug', NULL,
 'Y','Y','Y','Y','Y',
 NULL, '0000000000000', NULL,
 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 주요업무 > 의약품 이상사례보고 > 오프라인 보고
(1012, '/safety/report5', NULL,
 'Y','Y','Y','Y','Y',
 NULL, '0000000000000', NULL,
 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 주요업무 > 의약품 이상사례보고 > 이상사례보고자료실
(1013, '/safety/report6', NULL,
 'Y','Y','Y','Y','Y',
 NULL, '0000000000000', NULL,
 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 주요업무 > 의약품 이상사례보고 > 온라인보고방법 안내
(1014, '/safety/report7', NULL,
 'Y','Y','Y','Y','Y',
 NULL, '0000000000000', NULL,
 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 주요업무 > DUR 정보 > DUR 게시판
(1073, '/dur/notice', NULL,
 'Y','Y','Y','Y','Y',
 NULL, '0000000000000', NULL,
 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 주요업무 > DUR 정보 > DUR 제안
(1074, '/dur/proposal', NULL,
 'Y','Y','Y','Y','Y',
 NULL, '0000000000000', NULL,
 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 주요업무 > 부작용 피해구제 > 자주하는 질문
(1113, 'https://nedrug.mfds.go.kr', NULL,
 'Y','Y','Y','Y','Y',
 NULL, '0000000000000', NULL,
 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 정보공개 > 정보공개 > 정보공개 청구
(2011, 'https://open.go.kr', NULL,
 'Y','Y','Y','Y','Y',
 NULL, '0000000000000', NULL,
 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 기관소식 > 공지사항
(3000, '/notice', NULL,
 'Y','Y','Y','Y','Y',
 NULL, '0000000000000', NULL,
 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 기관소식 > 뉴스레터 > 첨단바이오 포커스
(3010, 'https://ltfu.mfds.go.kr', NULL,
 'Y','Y','Y','Y','Y',
 NULL, '0000000000000', NULL,
 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT'),

-- 기관소개 > 오시는 길
(4011, 'https://www.drugsafe.or.kr/iwt/ds/ko/introduction/EgovLocation.do', NULL,
 'Y','Y','Y','Y','Y',
 NULL, '0000000000000', NULL,
 'SYSTEM', CURRENT_TIMESTAMP, 'INIT', 'SYSTEM', CURRENT_TIMESTAMP, 'INIT')
;
delete from KIDS_OWN.TB_PP_D_MENU;
delete from KIDS_OWN.TB_PP_M_MENU;

INSERT INTO kids_own.tb_pp_m_menu (menu_sn,menu_nm,up_menu_sn,task_se_cd,menu_type_cd,lang_se_cd,menu_seq,menu_expln,pic_dept_nm,pic_flnm,use_yn,rgtr_id,reg_dt,mdfr_id,mdfcn_dt) VALUES
     ('1000','주요업무',NULL,'PP','MENU','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1100','정보공개',NULL,'PP','MENU','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1200','기관소식',NULL,'PP','MENU','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1300','기관소개',NULL,'PP','MENU','ko ',4,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1001','의약품 이상사례보고','1000','PP','MENU','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1002','의약품 부작용 보고 자료','1000','PP','MENU','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1003','의약품 안전관리','1000','PP','MENU','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1004','의약품.의료정보.연계분석','1000','PP','MENU','ko ',4,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1005','DUR 정보','1000','PP','MENU','ko ',5,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1006','부작용 피해구제','1000','PP','MENU','ko ',6,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735');
INSERT INTO kids_own.tb_pp_m_menu (menu_sn,menu_nm,up_menu_sn,task_se_cd,menu_type_cd,lang_se_cd,menu_seq,menu_expln,pic_dept_nm,pic_flnm,use_yn,rgtr_id,reg_dt,mdfr_id,mdfcn_dt) VALUES
     ('1007','임상시험안전지원','1000','PP','MENU','ko ',7,NULL,NULL,NULL,'N','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1010','이상사례보고','1001','PP','MENU','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1011','온라인 보고','1001','PP','MENU','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1012','오프라인 보고','1001','PP','PAGE','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1013','이상사례보고자료실','1001','PP','PAGE','ko ',4,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1014','온라인보고방법 안내','1001','PP','PAGE','ko ',5,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1020','이상사례 보고란?','1010','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1021','KAERS란?','1010','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1030','의약품이상사례','1011','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1031','의약외품(생리대 등)','1011','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735');
INSERT INTO kids_own.tb_pp_m_menu (menu_sn,menu_nm,up_menu_sn,task_se_cd,menu_type_cd,lang_se_cd,menu_seq,menu_expln,pic_dept_nm,pic_flnm,use_yn,rgtr_id,reg_dt,mdfr_id,mdfcn_dt) VALUES
     ('1040','의약품 부작용 보고1','1002','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1041','의약품 부작용 보고2','1002','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1042','의약품 부작용 보고3','1002','PP','PAGE','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1050','약물감시용어','1003','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1051','부작용 인과관계규명','1003','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1052','유관기관','1003','PP','PAGE','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1060','의약품.의료정보.연계분석1','1004','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1061','의약품.의료정보.연계분석2','1004','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1062','의약품.의료정보.연계분석3','1004','PP','PAGE','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1070','DUR 이해','1005','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735');
INSERT INTO kids_own.tb_pp_m_menu (menu_sn,menu_nm,up_menu_sn,task_se_cd,menu_type_cd,lang_se_cd,menu_seq,menu_expln,pic_dept_nm,pic_flnm,use_yn,rgtr_id,reg_dt,mdfr_id,mdfcn_dt) VALUES
     ('1071','DUR 정보검색','1005','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1072','내가 먹는 약의 DUR 정보','1005','PP','PAGE','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1073','의약품 적정사용 정보','1005','PP','PAGE','ko ',4,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1110','제도소개','1006','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1111','피해구제 신청','1006','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1112','뉴스/소식','1006','PP','PAGE','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1113','자주하는 질문','1006','PP','PAGE','ko ',4,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1120','임상시험안전지원기관','1007','PP','PAGE','ko ',1,NULL,NULL,NULL,'N','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1121','협약 안내','1007','PP','PAGE','ko ',2,NULL,NULL,NULL,'N','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1122','중앙IRB신청','1007','PP','PAGE','ko ',3,NULL,NULL,NULL,'N','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735');
INSERT INTO kids_own.tb_pp_m_menu (menu_sn,menu_nm,up_menu_sn,task_se_cd,menu_type_cd,lang_se_cd,menu_seq,menu_expln,pic_dept_nm,pic_flnm,use_yn,rgtr_id,reg_dt,mdfr_id,mdfcn_dt) VALUES
     ('1123','임상시험헬프데스크','1007','PP','PAGE','ko ',4,NULL,NULL,NULL,'N','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1124','공지사항','1007','PP','PAGE','ko ',5,NULL,NULL,NULL,'N','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1125','자료실','1007','PP','PAGE','ko ',6,NULL,NULL,NULL,'N','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('2000','정보공개','1100','PP','MENU','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('2001','공공데이터 개방','1100','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('2002','경영공시','1100','PP','MENU','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('2003','사업실명제','1100','PP','PAGE','ko ',4,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('2010','업무처리절차','2000','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('2011','정보공개 청구','2000','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('2012','임직원국외출장','2000','PP','PAGE','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735');
INSERT INTO kids_own.tb_pp_m_menu (menu_sn,menu_nm,up_menu_sn,task_se_cd,menu_type_cd,lang_se_cd,menu_seq,menu_expln,pic_dept_nm,pic_flnm,use_yn,rgtr_id,reg_dt,mdfr_id,mdfcn_dt) VALUES
     ('2013','원장 업무추진비 집행내역','2000','PP','PAGE','ko ',4,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('2020','부패행위 징계현황','2002','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('2021','징계기준','2002','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('2022','징계현황','2002','PP','PAGE','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('3000','공지사항','1200','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('3001','채용게시판','1200','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('3002','FAQ','1200','PP','PAGE','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('3003','국민신문고','1200','PP','PAGE','ko ',4,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('3004','보도자료','1200','PP','PAGE','ko ',5,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('3005','뉴스레터','1200','PP','MENU','ko ',6,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735');
INSERT INTO kids_own.tb_pp_m_menu (menu_sn,menu_nm,up_menu_sn,task_se_cd,menu_type_cd,lang_se_cd,menu_seq,menu_expln,pic_dept_nm,pic_flnm,use_yn,rgtr_id,reg_dt,mdfr_id,mdfcn_dt) VALUES
     ('3006','카드뉴스','1200','PP','PAGE','ko ',7,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('3007','동영상','1200','PP','PAGE','ko ',8,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('3008','자료실','1200','PP','PAGE','ko ',9,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('3010','첨단바이오 포커스','3005','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('3011','마약류 안전정보지','3005','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('3012','리플릿','3005','PP','PAGE','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('1075','의견 제안','1005','PP','PAGE','ko ',6,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('4000','기관장 인사말','1300','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('4001','역대 기관장','1300','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('4002','연혁','1300','PP','PAGE','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735');
INSERT INTO kids_own.tb_pp_m_menu (menu_sn,menu_nm,up_menu_sn,task_se_cd,menu_type_cd,lang_se_cd,menu_seq,menu_expln,pic_dept_nm,pic_flnm,use_yn,rgtr_id,reg_dt,mdfr_id,mdfcn_dt) VALUES
     ('4003','비전 및 목표','1300','PP','PAGE','ko ',4,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('4004','조직도','1300','PP','PAGE','ko ',5,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('4005','설립근거 및 관련법령','1300','PP','PAGE','ko ',6,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('4006','고객헌장','1300','PP','PAGE','ko ',7,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('4007','우리원동정','1300','PP','PAGE','ko ',8,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('4008','CI소개','1300','PP','PAGE','ko ',9,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('4009','윤리경영','1300','PP','MENU','ko ',10,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('4010','캐릭터소개','1300','PP','PAGE','ko ',11,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('4011','오시는 길','1300','PP','PAGE','ko ',12,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
     ('4012','클린신고센터','4009','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735');
INSERT INTO kids_own.tb_pp_m_menu (menu_sn,menu_nm,up_menu_sn,task_se_cd,menu_type_cd,lang_se_cd,menu_seq,menu_expln,pic_dept_nm,pic_flnm,use_yn,rgtr_id,reg_dt,mdfr_id,mdfcn_dt) VALUES
     ('1074','알림 게시판','1005','PP','PAGE','ko ',5,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735');


-- 주요업무 > 의약품 이상사례보고 > 온라인 보고 > (의약품이상사례)
--(1030, 'https://nedrug.mfds.go.kr/CCCBA03F010/getReport', NULL,

-- 주요업무 > 의약품 이상사례보고 > 온라인 보고 > (의약외품)
--(1031, 'https://nedrug.mfds.go.kr/CCCBA03F010/getReportQuasiDrug', NULL,

-- 주요업무 > 부작용 피해구제 > 자주하는 질문
--(1113, 'https://nedrug.mfds.go.kr', NULL,

-- 정보공개 > 정보공개 > 정보공개 청구
--(2011, 'https://open.go.kr', NULL,

-- 기관소식 > 뉴스레터 > 첨단바이오 포커스
--(3010, 'https://ltfu.mfds.go.kr', NULL,

-- 기관소개 > 오시는 길
--(4011, 'https://www.drugsafe.or.kr/iwt/ds/ko/introduction/EgovLocation.do', NULL,

INSERT INTO kids_own.tb_pp_d_menu (menu_sn,menu_url_addr,menu_npag_nm,prvc_incl_yn,dgstfn_exmn_yn,menu_expsr_yn,dept_info_expsr_yn,pic_info_expsr_yn,mobl_aplcn_yn,lgn_yn,encpt_pic_telno,menu_kogl_cprgt_type_cd,menu_pic_id,menu_tkcg_dept_no,rgtr_id,reg_dt,mdfr_id,mdfcn_dt) VALUES
     ('1120','/maintask/trial/TrialTestSuppOrg',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1121','/maintask/trial/TrialAggrGuide',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1122','/maintask/trial/TrialCenterIRB',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1123','/maintask/trial/TrialHelpDesk',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1125','/maintask/trial/TrialDataRoom',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('2010','/open/open/TaskProgress',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('2012','/open/open/OverseaBizTrips',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('2013','/open/open/BizExpsDetails',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('2001','/open/PublicData',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('2020','/open/disclosure/CorruptionStatus',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157');
INSERT INTO kids_own.tb_pp_d_menu (menu_sn,menu_url_addr,menu_npag_nm,prvc_incl_yn,dgstfn_exmn_yn,menu_expsr_yn,dept_info_expsr_yn,pic_info_expsr_yn,mobl_aplcn_yn,lgn_yn,encpt_pic_telno,menu_kogl_cprgt_type_cd,menu_pic_id,menu_tkcg_dept_no,rgtr_id,reg_dt,mdfr_id,mdfcn_dt) VALUES
     ('2021','/open/disclosure/DisciplinaryGiude',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('2022','/open/disclosure/DisciplinaryStatus',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('2003','/open/BizRealName',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1020','/maintask/adverse/report/AdverseIntro',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1021','/maintask/adverse/report/AdverseKaers',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1012','/maintask/adverse/AdverseOffline',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1013','/maintask/adverse/AdverseDataRoom',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1014','/maintask/adverse/AdverseReportGuide',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1040','/maintask/sideeffects/Report1',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1041','/maintask/sideeffects/Report2',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157');
INSERT INTO kids_own.tb_pp_d_menu (menu_sn,menu_url_addr,menu_npag_nm,prvc_incl_yn,dgstfn_exmn_yn,menu_expsr_yn,dept_info_expsr_yn,pic_info_expsr_yn,mobl_aplcn_yn,lgn_yn,encpt_pic_telno,menu_kogl_cprgt_type_cd,menu_pic_id,menu_tkcg_dept_no,rgtr_id,reg_dt,mdfr_id,mdfcn_dt) VALUES
     ('1042','/maintask/sideeffects/Report3',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1050','/maintask/safety/SafetyTerms',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1051','/maintask/safety/SafetyCausality',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1052','/maintask/safety/SafetyRelated',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1060','/maintask/linkage/analysis1',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1061','/maintask/linkage/analysis2',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1062','/maintask/linkage/analysis3',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1070','/maintask/dur/DurUnderstand',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1071','/maintask/dur/DurSearchRoom',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1072','/maintask/dur/MyDrugInfo',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157');
INSERT INTO kids_own.tb_pp_d_menu (menu_sn,menu_url_addr,menu_npag_nm,prvc_incl_yn,dgstfn_exmn_yn,menu_expsr_yn,dept_info_expsr_yn,pic_info_expsr_yn,mobl_aplcn_yn,lgn_yn,encpt_pic_telno,menu_kogl_cprgt_type_cd,menu_pic_id,menu_tkcg_dept_no,rgtr_id,reg_dt,mdfr_id,mdfcn_dt) VALUES
     ('1073','/maintask/dur/ApprUseBook',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1074','/maintask/dur/DurNoticeList',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1075','/maintask/dur/DurProposal',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1110','/maintask/relief/ReliefIntro',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1111','/maintask/relief/ReliefApply',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1112','/maintask/relief/ReliefNews',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('3003','/news/NewsPetition',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('3004','/news/NewsPress',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('3011','/news/letter/NewsSafeInfo',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('3012','/news/letter/NewsLeaflet',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157');
INSERT INTO kids_own.tb_pp_d_menu (menu_sn,menu_url_addr,menu_npag_nm,prvc_incl_yn,dgstfn_exmn_yn,menu_expsr_yn,dept_info_expsr_yn,pic_info_expsr_yn,mobl_aplcn_yn,lgn_yn,encpt_pic_telno,menu_kogl_cprgt_type_cd,menu_pic_id,menu_tkcg_dept_no,rgtr_id,reg_dt,mdfr_id,mdfcn_dt) VALUES
     ('4000','/about/AboutGreeting',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('4001','/about/AboutFormer',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('4002','/about/AboutHistory',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('4003','/about/AboutVision',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1031','https://nedrug.mfds.go.kr/CCCBA03F010/getReportQuasiDrug',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1113','https://nedrug.mfds.go.kr',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('2011','https://open.go.kr',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('3010','https://ltfu.mfds.go.kr',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('3000','/news/NewsNoticeList',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('3001','/news/NewsJobNoticeList',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157');
INSERT INTO kids_own.tb_pp_d_menu (menu_sn,menu_url_addr,menu_npag_nm,prvc_incl_yn,dgstfn_exmn_yn,menu_expsr_yn,dept_info_expsr_yn,pic_info_expsr_yn,mobl_aplcn_yn,lgn_yn,encpt_pic_telno,menu_kogl_cprgt_type_cd,menu_pic_id,menu_tkcg_dept_no,rgtr_id,reg_dt,mdfr_id,mdfcn_dt) VALUES
     ('3008','/news/NewsDataRoomList',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('3002','/news/NewsFaqNotice',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('3007','/news/NewsVidioList',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('3006','/news/NewsCardNewsList',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('4004','/about/AboutOrg',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('4005','/about/AboutLaw',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('4006','/about/AboutCharter',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('4007','/about/AboutNews',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('4008','/about/AboutCi',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('4012','/about/ethics/AboutCleanCenter',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157');
INSERT INTO kids_own.tb_pp_d_menu (menu_sn,menu_url_addr,menu_npag_nm,prvc_incl_yn,dgstfn_exmn_yn,menu_expsr_yn,dept_info_expsr_yn,pic_info_expsr_yn,mobl_aplcn_yn,lgn_yn,encpt_pic_telno,menu_kogl_cprgt_type_cd,menu_pic_id,menu_tkcg_dept_no,rgtr_id,reg_dt,mdfr_id,mdfcn_dt) VALUES
     ('4010','/about/AboutCharacter',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('4011','/about/AboutMap',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
     ('1030','https://nedrug.mfds.go.kr/CCCBA03F010/getReport',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157');


--delete from KIDS_OWN.TB_PP_D_MENU;
--delete from KIDS_OWN.TB_PP_M_MENU;
--commit;

/* MenuMapper.selectMenuList */
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
    FROM kids_own.TB_PP_M_MENU m
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
    FROM kids_own.TB_PP_M_MENU c
    JOIN menu_tree p
        ON c.up_menu_sn = p.menu_sn
    WHERE c.use_yn = 'Y'
)
SELECT
    mt.menu_sn,
    mt.up_menu_sn,
    mt.dep_level,
    mt.root_sn,
    mt.path,
    mt.menu_nm,
    mt.menu_seq,
    mt.lang_se_cd,
    d.menu_url_addr,
    d.menu_npag_nm,
    d.prvc_incl_yn,
    d.dgstfn_exmn_yn,
    d.menu_expsr_yn,
    d.dept_info_expsr_yn,
    d.pic_info_expsr_yn,
    d.mobl_aplcn_yn,
    d.lgn_yn,
    d.encpt_pic_telno,
    d.menu_kogl_cprgt_type_cd,
    d.menu_pic_id,
    coalesce(emp.emp_nm, m.pic_flnm) as menu_pic_flnm,
    emp.dept_no as menu_tkcg_dept_no,
    coalesce(emp.dept_nm, m.pic_dept_nm) as menu_tkcg_dept_nm
FROM menu_tree mt
LEFT JOIN kids_own.tb_pp_m_menu m
    ON mt.menu_sn = m.menu_sn
LEFT JOIN kids_own.TB_PP_D_MENU d
    ON d.menu_sn = mt.menu_sn
LEFT JOIN (
    SELECT 
        A.emp_no,
        A.emp_nm,
        A.dept_no,
        B.dept_nm
    FROM kids_own.tb_pp_m_emp_info A,
         kids_own.tb_pp_m_dept_info B
    WHERE A.dept_no = B.dept_no
) emp
    ON d.menu_pic_id = emp.emp_no
WHERE 1=1
AND mt.lang_se_cd = 'ko'
--AND d.menu_url_addr = ''
ORDER by mt.root_sn, mt.path, mt.menu_seq, mt.menu_sn
;

SELECT 
    A.emp_no,
    A.emp_nm,
    A.dept_no,
    B.dept_nm,
    A.jbgd_nm
FROM kids_own.tb_pp_m_emp_info A,
     kids_own.tb_pp_m_dept_info B
WHERE A.dept_no = B.dept_no
;

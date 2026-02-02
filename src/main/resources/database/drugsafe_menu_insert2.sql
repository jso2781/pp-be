delete from KIDS_OWN.TB_PP_D_MENU;
delete from KIDS_OWN.TB_PP_M_MENU;

INSERT INTO kids_own.tb_pp_m_menu
(menu_sn, menu_nm, up_menu_sn, task_se_cd, menu_type_cd, lang_se_cd, menu_seq, menu_expln, pic_dept_nm, pic_flnm, use_yn, rgtr_id, reg_dt, mdfr_id, mdfcn_dt)
VALUES
('1','주요업무',NULL,'PP','MENU','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('2','의약품 이상사례보고','1','PP','MENU','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('3','이상사례보고','2','PP','MENU','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('4','이상사례 보고란?','3','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('5','KAERS란?','3','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('6','온라인 보고','2','PP','MENU','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('7','의약품이상사례','6','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('8','의약외품(생리대 등)','6','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('9','오프라인 보고','2','PP','PAGE','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('10','이상사례보고자료실','2','PP','PAGE','ko ',4,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('11','온라인보고방법 안내','2','PP','PAGE','ko ',5,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('12','의약품부작용보고원시자료','1','PP','MENU','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('13','의약품부작용보고원시자료','12','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('14','공지사항 및 이용지침서','12','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('15','의약품 안전관리','1','PP','MENU','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('16','약물감시용어','15','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('17','부작용 인과관계규명','15','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('18','유관기관','15','PP','PAGE','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('19','의약품·의료정보 연계분석','1','PP','MENU','ko ',4,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('20','의약품·의료정보 연계분석이란?','19','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('21','의약품·의료정보 연계분석 정보공개','19','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('22','DUR 정보','1','PP','MENU','ko ',5,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('23','DUR 이해','22','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('24','DUR 정보검색','22','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('25','내가 먹는 약의 DUR 정보','22','PP','PAGE','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('26','의약품 적정사용 정보','22','PP','PAGE','ko ',4,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('27','알림 게시판','22','PP','PAGE','ko ',5,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('28','의견 제안','22','PP','PAGE','ko ',6,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('29','부작용 피해구제','1','PP','MENU','ko ',6,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('30','제도소개','29','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('31','피해구제 신청','29','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('32','뉴스/소식','29','PP','PAGE','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('33','자주하는 질문','29','PP','PAGE','ko ',4,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('34','첨단바이오 포커스','1','PP','PAGE','ko ',7,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('35','마약류 안전정보지','1','PP','PAGE','ko ',8,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('36','정보공개',NULL,'PP','MENU','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('37','정보공개','36','PP','MENU','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('38','업무처리절차','37','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('39','정보공개 청구','37','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('40','임직원국외출장','37','PP','PAGE','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('41','원장 업무추진비 집행내역','37','PP','PAGE','ko ',4,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('42','공공데이터 개방','36','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('43','경영공시','36','PP','MENU','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('44','부패행위 징계현황','43','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('45','징계기준','43','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('46','징계현황','43','PP','PAGE','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('47','사업실명제','36','PP','PAGE','ko ',4,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),

('48','기관소식',NULL,'PP','MENU','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('49','공지사항','48','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('50','채용게시판','48','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('51','FAQ','48','PP','PAGE','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('52','국민신문고','48','PP','PAGE','ko ',4,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('53','보도자료','48','PP','PAGE','ko ',5,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('54','뉴스레터','48','PP','PAGE','ko ',6,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('55','리플릿','48','PP','PAGE','ko ',7,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('56','카드뉴스','48','PP','PAGE','ko ',8,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('57','동영상','48','PP','PAGE','ko ',9,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('58','자료실','48','PP','PAGE','ko ',10,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),

('59','기관소개',NULL,'PP','MENU','ko ',4,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('60','기관장 인사말','59','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('61','역대 기관장','59','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('62','연혁','59','PP','PAGE','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('63','비전 및 목표','59','PP','PAGE','ko ',4,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('64','조직도','59','PP','PAGE','ko ',5,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('65','설립근거 및 관련법령','59','PP','PAGE','ko ',6,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('66','고객헌장','59','PP','PAGE','ko ',7,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('67','우리원동정','59','PP','PAGE','ko ',8,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('68','CI소개','59','PP','PAGE','ko ',9,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('69','윤리경영','59','PP','MENU','ko ',10,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('70','인권경영선언문','69','PP','PAGE','ko ',1,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('71','클린신고센터','69','PP','PAGE','ko ',2,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('72','신고서 작성','69','PP','PAGE','ko ',3,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('73','캐릭터소개','59','PP','PAGE','ko ',11,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735'),
('74','오시는 길','59','PP','PAGE','ko ',12,NULL,NULL,NULL,'Y','SYSTEM','2026-01-13 22:28:42.526735','SYSTEM','2026-01-13 22:28:42.526735');


INSERT INTO kids_own.tb_pp_d_menu
(menu_sn,menu_url_addr,menu_npag_nm,prvc_incl_yn,dgstfn_exmn_yn,menu_expsr_yn,dept_info_expsr_yn,pic_info_expsr_yn,mobl_aplcn_yn,lgn_yn,encpt_pic_telno,menu_kogl_cprgt_type_cd,menu_pic_id,menu_tkcg_dept_no,rgtr_id,reg_dt,mdfr_id,mdfcn_dt)
VALUES
('4','/maintask/adverse/report/AdverseIntro',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('5','/maintask/adverse/report/AdverseKaers',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('7','https://nedrug.mfds.go.kr/CCCBA03F010/getReport',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('8','https://nedrug.mfds.go.kr/CCCBA03F010/getReportQuasiDrug',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('9','/maintask/adverse/AdverseOffline',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('10','/maintask/adverse/AdverseDataRoom',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('11','/maintask/adverse/AdverseReportGuide',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),

('13','/maintask/sideeffects/Report1',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('14','https://nedrug.mfds.go.kr/bbs/148',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),

('16','/maintask/safety/SafetyTerms',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('17','/maintask/safety/SafetyCausality',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('18','/maintask/safety/SafetyRelated',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),

('20','/maintask/linkage/analysis1',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('21','https://open.drugsafe.or.kr/analyze/opendatab/List.jsp',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),

('23','/maintask/dur/DurUnderstand',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('24','/maintask/dur/DurSearchRoom',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('25','/maintask/dur/MyDrugInfo',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('26','/maintask/dur/ApprUseBook',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('27','/maintask/dur/DurNoticeList/BBS_DUR_001',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('28','/maintask/dur/DurProposal',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),

('30','/maintask/relief/ReliefIntro',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('31','/maintask/relief/ReliefApply',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('32','/maintask/relief/ReliefNews',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('33','https://nedrug.mfds.go.kr',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),

('38','/open/open/TaskProgress',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('39','https://open.go.kr',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('40','/open/open/OverseaBizTrips',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('41','/open/open/BizExpsDetails',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('42','/open/PublicData',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('44','/open/disclosure/CorruptionStatus',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('45','/open/disclosure/DisciplinaryGiude',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('46','/open/disclosure/DisciplinaryStatus',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('47','/open/BizRealName',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),

('49','/news/NewsNoticeList/BBS_COM_001',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('50','/news/NewsJobNoticeList/BBS_COM_002',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('51','/news/NewsFaqNotice',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('52','/news/NewsPetition',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('53','/news/NewsPress',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('54','/news/NewsLetter',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('55','/news/NewsLeaflet',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('56','/news/NewsCardNewsList/BBS_GAL_001',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('57','/news/NewsVidioList/BBS_VDO_001',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('58','/news/NewsDataRoomList/BBS_COM_005',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),

('60','/about/AboutGreeting',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('61','/about/AboutFormer',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('62','/about/AboutHistory',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('63','/about/AboutVision',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('64','/about/AboutOrg',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('65','/about/AboutLaw',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('66','/about/AboutCharter',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('67','/about/AboutNews',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('68','/about/AboutCi',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),

('70','/about/ethics/EthicsAnn',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('71','/about/ethics/AboutCleanCenter',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('72','/about/ethics/AboutCleanForm',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('73','/about/AboutCharacter',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157'),
('74','/about/AboutMap',NULL,'Y','Y','Y','Y','Y','Y','N','02-2172-3868','4','B0542','0000004','SYSTEM','2026-01-28 23:10:45.549157','SYSTEM','2026-01-28 23:10:45.549157');


/* MenuMapper.selectMenuList */
WITH RECURSIVE menu_tree AS (
    SELECT
        m.menu_sn,
        m.up_menu_sn,
        1 AS dep_level,
        m.menu_sn AS root_sn,
        m.menu_nm,
        m.menu_seq,
        lpad(m.menu_sn::text, 2, '0') AS path,
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
        (p.path || ' > ' || lpad(c.menu_sn::text, 2, '0')) AS path,
        c.lang_se_cd
    FROM kids_own.TB_PP_M_MENU c
    JOIN menu_tree p
        ON c.up_menu_sn = p.menu_sn
    WHERE c.use_yn = 'Y'
)
SELECT
    mt.menu_sn,
    mt.menu_nm,
    d.menu_url_addr,
    '' as detail_task,
    mt.up_menu_sn,
    mt.dep_level,
    mt.root_sn,
    mt.path,
    
    mt.menu_seq,
    mt.lang_se_cd,
    
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

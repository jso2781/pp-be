INSERT INTO kids_own.tb_pp_m_task_cd (task_cd,task_cd_nm,up_task_cd,task_cd_vl,task_cd_expln,use_yn,rgtr_id,reg_dt,mdfr_id,mdfcn_dt) VALUES
     ('MN_BBS1','사용자포털 홍보존 게시판 ID',NULL,'BBS_GAL_002',NULL,'Y',NULL,NULL,NULL,NULL),
     ('MN_BBS2','사용자포털 SNS 유튜브 게시판 ID',NULL,'BBS_VDO_002',NULL,'Y',NULL,NULL,NULL,NULL),
     ('MN_BBS3','사용자포털 SNS 인스타 게시판 ID',NULL,'BBS_GAL_003',NULL,'Y',NULL,NULL,NULL,NULL),
     ('MN_BBS4','사용자포털 SNS 블로그 게시판 ID',NULL,'BBS_GAL_004',NULL,'Y',NULL,NULL,NULL,NULL),
     ('ROLE_TYPE','롤유형','','','','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578'),
     ('BTN','버튼','ROLE_TYPE','','버튼 권한 제어','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578'),
     ('UPFILE_TYPE','업로드파일유형','','','','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578'),
     ('GNL','일반 파일','UPFILE_TYPE','','','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578');
INSERT INTO kids_own.tb_pp_m_task_cd (task_cd,task_cd_nm,up_task_cd,task_cd_vl,task_cd_expln,use_yn,rgtr_id,reg_dt,mdfr_id,mdfcn_dt) VALUES
     ('RSNB_USE_YM','적정사용정보집-소아청소년','GNL','','','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578'),
     ('RSNB_USE_PR','적정사용정보집-임부','GNL','','','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578'),
     ('RSNB_USE_OM','적정사용정보집-노인','GNL','','','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578'),
     ('RSNB_USE_LV','적정사용정보집-간질환','GNL','','','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578'),
     ('RSNB_USE_KD','적정사용정보집-신질환','GNL','','','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578'),
     ('DUR','DUR 정보','UPFILE_TYPE','','','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578'),
     ('CONT_S','병용금기(급여)','DUR','','','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578'),
     ('CONT_NS','병용금기(비급여)','DUR','','','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578'),
     ('AGE','특정연령대금기','DUR','','','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578'),
     ('PRGNT','임부금기','DUR','','','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578');
INSERT INTO kids_own.tb_pp_m_task_cd (task_cd,task_cd_nm,up_task_cd,task_cd_vl,task_cd_expln,use_yn,rgtr_id,reg_dt,mdfr_id,mdfcn_dt) VALUES
     ('EFTGRP','효능군중복주의','DUR','','','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578'),
     ('CPCT','용량주의','DUR','','','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578'),
     ('DOSAGE','투여기간주의','DUR','','','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578'),
     ('SNCTZ','노인주의','DUR','','','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578'),
     ('NURSW','수유부주의','DUR','','','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578');
INSERT INTO kids_own.tb_pp_m_task_cd (task_cd,task_cd_nm,up_task_cd,task_cd_vl,task_cd_expln,use_yn,rgtr_id,reg_dt,mdfr_id,mdfcn_dt) VALUES
     ('TMPL_TYPE','템플릿유형','','','','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578'),
     ('MAIL','메일','TMPL_TYPE','','','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578'),
     ('MBR','회원','MAIL','','회원관리 관련 메일 (승인/반려)','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578'),
     ('MNGR','관리자','MAIL','','관리자에게 발송하는 메일 - 비밀번호 발급, DUR 의견제안 등록 등','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578'),
     ('MSG','메시지','TMPL_TYPE','','','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578'),
     ('SMS','SMS/LMS','MSG','','문자메세지 발송','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578');
INSERT INTO kids_own.tb_pp_m_task_cd (task_cd,task_cd_nm,up_task_cd,task_cd_vl,task_cd_expln,use_yn,rgtr_id,reg_dt,mdfr_id,mdfcn_dt) VALUES
     ('KKT','카카오톡','MSG','','카카오톡 발송','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578'),
     ('FWK','기능','ROLE_TYPE','','클릭, 아이콘, 링크 등 기능 제어','Y','2026-01-28 00:51:27.578',NULL,NULL,'2026-01-28 00:51:27.578586'),
     ('MN_BBS5','사용자포털 기관소식 공지사항 게시판 ID',NULL,'BBS_COM_001',NULL,'Y',NULL,NULL,NULL,NULL),
     ('MN_BBS6','사용자포털 기관소식 보도자료 게시판 ID',NULL,'BBS_COM_004',NULL,'Y',NULL,NULL,NULL,NULL),
     ('MN_BBS7','사용자포털 기관소식 뉴스레터 게시판 ID',NULL,'BBS_COM_003',NULL,'Y',NULL,NULL,NULL,NULL),
     ('MN_BBS8','사용자포털 기관소식 카드뉴스 게시판 ID',NULL,'BBS_GAL_001',NULL,'Y',NULL,NULL,NULL,NULL);
INSERT INTO kids_own.tb_pp_m_task_cd (task_cd,task_cd_nm,up_task_cd,task_cd_vl,task_cd_expln,use_yn,rgtr_id,reg_dt,mdfr_id,mdfcn_dt) VALUES
     ('MN_IMG','사용자포털 메인페이지 상단 이미지 경로',NULL,'http://localhost:8080/pp/api/atch/thumb/fileTest/20260112/main0.jpg',NULL,'Y',NULL,NULL,NULL,NULL),
     ('TRMS','약관','TRMS_STT','TRMS','약관','Y','SYSTEM','2026-01-15 21:26:11.682373','SYSTEM','2026-01-15 21:26:11.682373'),
     ('TRMS_STT','약관법률',NULL,'TRMS_STT','약관법률','Y','SYSTEM','2026-01-15 21:26:11.682373','SYSTEM','2026-01-15 21:26:11.682373'),
     ('UTZTN','이용약관','TRMS','UTZTN','회원가입시 - 이용약관','Y','SYSTEM','2026-01-15 21:26:11.682373','SYSTEM','2026-01-15 21:26:11.682373'),
     ('CLCT','개인정보 수집〮이용 동의','TRMS','CLCT','회원가입시 - 개인정보 수집〮이용 동의','Y','SYSTEM','2026-01-15 21:26:11.682373','SYSTEM','2026-01-15 21:26:11.682373'),
     ('STTY_AGT','개인정보 수집〮이용 동의_법정대리인','TRMS','STTY_AGT','회원가입시 - 개인정보 수집〮이용 동의_법정대리인(14세 미만 회원가입)','Y','SYSTEM','2026-01-15 21:26:11.682373','SYSTEM','2026-01-15 21:26:11.682373'),
     ('STT','법령','TRMS_STT','STT','법령','Y','SYSTEM','2026-01-15 21:26:11.682373','SYSTEM','2026-01-15 21:26:11.682373'),
     ('STT_PRVC','개인정보취급방침','STT','STT_PRVC','개인정보취급방침','Y','SYSTEM','2026-01-15 21:26:11.682373','SYSTEM','2026-01-15 21:26:11.682373'),
     ('STT_CCTV','영상정보처리기기 운영관리 방침','STT','STT_CCTV','영상정보처리기기 운영관리 방침','Y','SYSTEM','2026-01-15 21:26:11.682373','SYSTEM','2026-01-15 21:26:11.682373'),
     ('STT_EML','이메일무단수집거부','STT','STT_EML','이메일무단수집거부','Y','SYSTEM','2026-01-15 21:26:11.682373','SYSTEM','2026-01-15 21:26:11.682373');
INSERT INTO kids_own.tb_pp_m_task_cd (task_cd,task_cd_nm,up_task_cd,task_cd_vl,task_cd_expln,use_yn,rgtr_id,reg_dt,mdfr_id,mdfcn_dt) VALUES
     ('CLCT_ES_CH','개인정보 수집〮동의_필수〮선택','TRMS','CLCT_ES_CH','의견제안, 클린신고서','Y','SYSTEM','2026-01-15 21:26:11.682373','SYSTEM','2026-01-15 21:26:11.682373');

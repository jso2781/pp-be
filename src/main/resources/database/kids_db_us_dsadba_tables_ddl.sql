-- us_dsadba.com_code_detail definition

-- Drop table

-- DROP TABLE us_dsadba.com_code_detail;

CREATE TABLE us_dsadba.com_code_detail (
	class_code varchar(5) NULL, -- 분류코드
	code_no varchar(10) NULL, -- 상세코드
	code_name varchar(1000) NULL, -- 상세코드명
	code_name2 varchar(1000) NULL, -- 상세코드명2
	code_eng_name varchar(2000) NULL, -- 코드영문명
	etc_code1 varchar(4000) NULL, -- 기타코드1
	etc_code2 varchar(4000) NULL, -- 기타코드2
	code_desc varchar(3000) NULL, -- 상세코드설명
	use_yn varchar(1) NULL, -- 사용여부
	regist_ts timestamp NOT NULL, -- 등록TIMESTAMP
	update_ts timestamp NOT NULL -- 수정TIMESTAMP
);
COMMENT ON TABLE us_dsadba.com_code_detail IS '공통_코드상세';

-- Column comments

COMMENT ON COLUMN us_dsadba.com_code_detail.class_code IS '분류코드';
COMMENT ON COLUMN us_dsadba.com_code_detail.code_no IS '상세코드';
COMMENT ON COLUMN us_dsadba.com_code_detail.code_name IS '상세코드명';
COMMENT ON COLUMN us_dsadba.com_code_detail.code_name2 IS '상세코드명2';
COMMENT ON COLUMN us_dsadba.com_code_detail.code_eng_name IS '코드영문명';
COMMENT ON COLUMN us_dsadba.com_code_detail.etc_code1 IS '기타코드1';
COMMENT ON COLUMN us_dsadba.com_code_detail.etc_code2 IS '기타코드2';
COMMENT ON COLUMN us_dsadba.com_code_detail.code_desc IS '상세코드설명';
COMMENT ON COLUMN us_dsadba.com_code_detail.use_yn IS '사용여부';
COMMENT ON COLUMN us_dsadba.com_code_detail.regist_ts IS '등록TIMESTAMP';
COMMENT ON COLUMN us_dsadba.com_code_detail.update_ts IS '수정TIMESTAMP';

-- Permissions

--ALTER TABLE us_dsadba.com_code_detail OWNER TO postgres;
--GRANT ALL ON TABLE us_dsadba.com_code_detail TO postgres;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.com_code_detail TO bo_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.com_code_detail TO bo_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.com_code_detail TO cm_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.com_code_detail TO cm_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.com_code_detail TO cr_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.com_code_detail TO cr_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.com_code_detail TO dr_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.com_code_detail TO dr_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.com_code_detail TO ex_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.com_code_detail TO ex_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.com_code_detail TO pp_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.com_code_detail TO pp_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.com_code_detail TO ca_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.com_code_detail TO ca_dev;


-- us_dsadba.dra_entp_permit definition

-- Drop table

-- DROP TABLE us_dsadba.dra_entp_permit;

CREATE TABLE us_dsadba.dra_entp_permit (
	entp_seq numeric NOT NULL, -- 업소순서
	induty_code varchar(2) NULL, -- 업종코드_M35
	entp_name varchar(300) NULL, -- 업소
	bizrno varchar(30) NULL, -- 사업자등록번호
	cancel_date timestamp NULL -- 날짜
);
COMMENT ON TABLE us_dsadba.dra_entp_permit IS '이상사례_의약업업소허가';

-- Column comments

COMMENT ON COLUMN us_dsadba.dra_entp_permit.entp_seq IS '업소순서';
COMMENT ON COLUMN us_dsadba.dra_entp_permit.induty_code IS '업종코드_M35';
COMMENT ON COLUMN us_dsadba.dra_entp_permit.entp_name IS '업소';
COMMENT ON COLUMN us_dsadba.dra_entp_permit.bizrno IS '사업자등록번호';
COMMENT ON COLUMN us_dsadba.dra_entp_permit.cancel_date IS '날짜';

-- Permissions

--ALTER TABLE us_dsadba.dra_entp_permit OWNER TO postgres;
--GRANT ALL ON TABLE us_dsadba.dra_entp_permit TO postgres;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.dra_entp_permit TO bo_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.dra_entp_permit TO bo_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.dra_entp_permit TO cm_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.dra_entp_permit TO cm_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.dra_entp_permit TO cr_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.dra_entp_permit TO cr_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.dra_entp_permit TO dr_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.dra_entp_permit TO dr_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.dra_entp_permit TO ex_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.dra_entp_permit TO ex_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.dra_entp_permit TO pp_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.dra_entp_permit TO pp_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.dra_entp_permit TO ca_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.dra_entp_permit TO ca_dev;


-- us_dsadba.drb_item definition

-- Drop table

-- DROP TABLE us_dsadba.drb_item;

CREATE TABLE us_dsadba.drb_item (
	item_seq numeric NOT NULL, -- 품목일련번호
	induty_class_code varchar(2) NULL, -- 품목구분코드_M34
	item_no varchar(30) NULL, -- 품목허가번호
	item_name varchar(4000) NULL, -- 픔목명
	item_eng_name varchar(2000) NULL, -- 품목명(영문)
	entp_seq numeric NOT NULL, -- 업소일련번호
	ee_doc_no varchar(30) NULL, -- 효능효과 EDMS 문서번호
	ud_doc_no varchar(30) NULL, -- 효능용량EDMS 문서번호
	nb_doc_no varchar(30) NULL, -- 주의사항 EDMS 문서번호
	shape_code varchar(6) NULL, -- 제형코드_M63
	dosage_route_code1 varchar(6) NULL, -- 투여경로코드 1_M71
	dosage_route_code2 varchar(6) NULL, -- 투여경로코드 2_M71
	dosage_route_code3 varchar(6) NULL, -- 투여경로코드 3_M71
	class_no varchar(5) NULL, -- 분류번호_M21
	etc_otc_code varchar(2) NULL, -- 전문/일반구분코드_M58
	make_material_gb varchar(2) NULL, -- 완제/원료구분코드_M36
	newdrug_class_code varchar(2) NULL, -- 신약구분코드_M88
	item_ingr_type varchar(1) NULL, -- 단일제/복합제/원료.한약재 구분_M09
	nrclg_code varchar(1) NULL, -- 의약외품구분코드_M43
	reexam_code varchar(1) NULL, -- 재심사구분코드_M55
	bio_prodt_yn varchar(1) NULL, -- 생물학적제제여부
	herb_prodt_yn varchar(1) NULL, -- 생약제제여부(한약제제)
	comp_drug_yn varchar(1) NULL, -- 대조약여부
	item_permit_date timestamp NULL, -- 품목허가일자
	item_kind_code varchar(5) NULL, -- 품목특성구분코드_P44
	cancel_code varchar(1) NULL, -- 취소/취하구분코드_M70
	cancel_date timestamp NULL, -- 취소/취하일자
	regist_ts timestamp NOT NULL, -- 등록 TIMESTAMP
	update_ts timestamp NOT NULL -- 수정/TIMESTAMP
);
COMMENT ON TABLE us_dsadba.drb_item IS '의약품_품목';

-- Column comments

COMMENT ON COLUMN us_dsadba.drb_item.item_seq IS '품목일련번호';
COMMENT ON COLUMN us_dsadba.drb_item.induty_class_code IS '품목구분코드_M34';
COMMENT ON COLUMN us_dsadba.drb_item.item_no IS '품목허가번호';
COMMENT ON COLUMN us_dsadba.drb_item.item_name IS '픔목명';
COMMENT ON COLUMN us_dsadba.drb_item.item_eng_name IS '품목명(영문)';
COMMENT ON COLUMN us_dsadba.drb_item.entp_seq IS '업소일련번호';
COMMENT ON COLUMN us_dsadba.drb_item.ee_doc_no IS '효능효과 EDMS 문서번호';
COMMENT ON COLUMN us_dsadba.drb_item.ud_doc_no IS '효능용량EDMS 문서번호';
COMMENT ON COLUMN us_dsadba.drb_item.nb_doc_no IS '주의사항 EDMS 문서번호';
COMMENT ON COLUMN us_dsadba.drb_item.shape_code IS '제형코드_M63';
COMMENT ON COLUMN us_dsadba.drb_item.dosage_route_code1 IS '투여경로코드 1_M71';
COMMENT ON COLUMN us_dsadba.drb_item.dosage_route_code2 IS '투여경로코드 2_M71';
COMMENT ON COLUMN us_dsadba.drb_item.dosage_route_code3 IS '투여경로코드 3_M71';
COMMENT ON COLUMN us_dsadba.drb_item.class_no IS '분류번호_M21';
COMMENT ON COLUMN us_dsadba.drb_item.etc_otc_code IS '전문/일반구분코드_M58';
COMMENT ON COLUMN us_dsadba.drb_item.make_material_gb IS '완제/원료구분코드_M36';
COMMENT ON COLUMN us_dsadba.drb_item.newdrug_class_code IS '신약구분코드_M88';
COMMENT ON COLUMN us_dsadba.drb_item.item_ingr_type IS '단일제/복합제/원료.한약재 구분_M09';
COMMENT ON COLUMN us_dsadba.drb_item.nrclg_code IS '의약외품구분코드_M43';
COMMENT ON COLUMN us_dsadba.drb_item.reexam_code IS '재심사구분코드_M55';
COMMENT ON COLUMN us_dsadba.drb_item.bio_prodt_yn IS '생물학적제제여부';
COMMENT ON COLUMN us_dsadba.drb_item.herb_prodt_yn IS '생약제제여부(한약제제)';
COMMENT ON COLUMN us_dsadba.drb_item.comp_drug_yn IS '대조약여부';
COMMENT ON COLUMN us_dsadba.drb_item.item_permit_date IS '품목허가일자';
COMMENT ON COLUMN us_dsadba.drb_item.item_kind_code IS '품목특성구분코드_P44';
COMMENT ON COLUMN us_dsadba.drb_item.cancel_code IS '취소/취하구분코드_M70';
COMMENT ON COLUMN us_dsadba.drb_item.cancel_date IS '취소/취하일자';
COMMENT ON COLUMN us_dsadba.drb_item.regist_ts IS '등록 TIMESTAMP';
COMMENT ON COLUMN us_dsadba.drb_item.update_ts IS '수정/TIMESTAMP';

-- Permissions

--ALTER TABLE us_dsadba.drb_item OWNER TO postgres;
--GRANT ALL ON TABLE us_dsadba.drb_item TO postgres;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item TO bo_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item TO bo_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item TO cm_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item TO cm_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item TO cr_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item TO cr_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item TO dr_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item TO dr_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item TO ex_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item TO ex_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item TO pp_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item TO pp_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item TO ca_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item TO ca_dev;


-- us_dsadba.drb_item_ingr definition

-- Drop table

-- DROP TABLE us_dsadba.drb_item_ingr;

CREATE TABLE us_dsadba.drb_item_ingr (
	item_seq numeric NOT NULL, -- 품목일련번호
	totqy_seq numeric NOT NULL, -- 총량일련번호
	ingr_seq numeric NOT NULL, -- 성분일련번호
	material_code varchar(7) NULL, -- 원료코드
	material_mix_purpose_code varchar(3) NULL, -- 원료배합목적코드_M17
	material_actvty_mttr_cpcty varchar(600) NULL, -- 원료활성물질용량
	material_totqy varchar(150) NULL, -- 원료총량
	material_unit_code varchar(5) NULL, -- 원료단위코드_M08
	halfmtral_code varchar(7) NULL, -- 반제원료코드
	halfmtral_actvty_mttr_cpcty varchar(600) NULL, -- 반제원료활성물질용량
	halfmtral_qnt varchar(100) NULL, -- 반제원료분량
	halfmtral_unit_code varchar(5) NULL, -- 반제원료단위코드_M08
	regist_ts timestamp NOT NULL, -- 등록 TIMESTAMP
	update_ts timestamp NOT NULL, -- 수정/TIMESTAMP
	material_qnt_num varchar(100) NULL, -- 원료분량(수)
	material_qnt_etc varchar(3000) NULL, -- 원료분량(그외)
	material_actvty_mttr_name varchar(3000) NULL, -- 원료활성물질명
	material_actvty_mttr_qy varchar(100) NULL -- 원료활성물질수량
);
COMMENT ON TABLE us_dsadba.drb_item_ingr IS '의약품_품목성분';

-- Column comments

COMMENT ON COLUMN us_dsadba.drb_item_ingr.item_seq IS '품목일련번호';
COMMENT ON COLUMN us_dsadba.drb_item_ingr.totqy_seq IS '총량일련번호';
COMMENT ON COLUMN us_dsadba.drb_item_ingr.ingr_seq IS '성분일련번호';
COMMENT ON COLUMN us_dsadba.drb_item_ingr.material_code IS '원료코드';
COMMENT ON COLUMN us_dsadba.drb_item_ingr.material_mix_purpose_code IS '원료배합목적코드_M17';
COMMENT ON COLUMN us_dsadba.drb_item_ingr.material_actvty_mttr_cpcty IS '원료활성물질용량';
COMMENT ON COLUMN us_dsadba.drb_item_ingr.material_totqy IS '원료총량';
COMMENT ON COLUMN us_dsadba.drb_item_ingr.material_unit_code IS '원료단위코드_M08';
COMMENT ON COLUMN us_dsadba.drb_item_ingr.halfmtral_code IS '반제원료코드';
COMMENT ON COLUMN us_dsadba.drb_item_ingr.halfmtral_actvty_mttr_cpcty IS '반제원료활성물질용량';
COMMENT ON COLUMN us_dsadba.drb_item_ingr.halfmtral_qnt IS '반제원료분량';
COMMENT ON COLUMN us_dsadba.drb_item_ingr.halfmtral_unit_code IS '반제원료단위코드_M08';
COMMENT ON COLUMN us_dsadba.drb_item_ingr.regist_ts IS '등록 TIMESTAMP';
COMMENT ON COLUMN us_dsadba.drb_item_ingr.update_ts IS '수정/TIMESTAMP';
COMMENT ON COLUMN us_dsadba.drb_item_ingr.material_qnt_num IS '원료분량(수)';
COMMENT ON COLUMN us_dsadba.drb_item_ingr.material_qnt_etc IS '원료분량(그외)';
COMMENT ON COLUMN us_dsadba.drb_item_ingr.material_actvty_mttr_name IS '원료활성물질명';
COMMENT ON COLUMN us_dsadba.drb_item_ingr.material_actvty_mttr_qy IS '원료활성물질수량';

-- Permissions

--ALTER TABLE us_dsadba.drb_item_ingr OWNER TO postgres;
--GRANT ALL ON TABLE us_dsadba.drb_item_ingr TO postgres;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr TO bo_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr TO bo_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr TO cm_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr TO cm_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr TO cr_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr TO cr_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr TO dr_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr TO dr_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr TO ex_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr TO ex_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr TO pp_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr TO pp_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr TO ca_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr TO ca_dev;


-- us_dsadba.drb_item_ingr_hist definition

-- Drop table

-- DROP TABLE us_dsadba.drb_item_ingr_hist;

CREATE TABLE us_dsadba.drb_item_ingr_hist (
	item_seq numeric NOT NULL, -- 품목일련번호
	history_seq numeric NOT NULL, -- 이력일련번호
	totqy_seq numeric NOT NULL, -- 총량일련번호
	ingr_seq numeric NOT NULL, -- 성분일련번호
	material_code varchar(7) NULL, -- 원료코드
	material_mix_purpose_code varchar(3) NULL, -- 원료배합목적코드_M17
	material_actvty_mttr_cpcty varchar(600) NULL, -- 원료활성물질용량
	material_totqy varchar(100) NULL, -- 원료총량
	material_unit_code varchar(5) NULL, -- 원료단위코드_M08
	halfmtral_code varchar(7) NULL, -- 반제원료코드
	halfmtral_actvty_mttr_cpcty varchar(600) NULL, -- 반제원료활성물질용량
	halfmtral_qnt varchar(100) NULL, -- 반제원료분량
	halfmtral_unit_code varchar(5) NULL, -- 반제원료단위코드_M08
	regist_ts timestamp NOT NULL, -- 등록 TIMESTAMP
	update_ts timestamp NOT NULL, -- 수정/TIMESTAMP
	material_qnt_num varchar(100) NULL, -- 원료분량(수)
	material_qnt_etc varchar(3000) NULL, -- 원료분량(그외)
	material_actvty_mttr_name varchar(3000) NULL, -- 원료활성물질명
	material_actvty_mttr_qy varchar(100) NULL, -- 원료활성물질수량
	history_regist_ts timestamp NOT NULL -- 이력등록 TIMESTAMP
);
COMMENT ON TABLE us_dsadba.drb_item_ingr_hist IS '의약품_품목성분이력';

-- Column comments

COMMENT ON COLUMN us_dsadba.drb_item_ingr_hist.item_seq IS '품목일련번호';
COMMENT ON COLUMN us_dsadba.drb_item_ingr_hist.history_seq IS '이력일련번호';
COMMENT ON COLUMN us_dsadba.drb_item_ingr_hist.totqy_seq IS '총량일련번호';
COMMENT ON COLUMN us_dsadba.drb_item_ingr_hist.ingr_seq IS '성분일련번호';
COMMENT ON COLUMN us_dsadba.drb_item_ingr_hist.material_code IS '원료코드';
COMMENT ON COLUMN us_dsadba.drb_item_ingr_hist.material_mix_purpose_code IS '원료배합목적코드_M17';
COMMENT ON COLUMN us_dsadba.drb_item_ingr_hist.material_actvty_mttr_cpcty IS '원료활성물질용량';
COMMENT ON COLUMN us_dsadba.drb_item_ingr_hist.material_totqy IS '원료총량';
COMMENT ON COLUMN us_dsadba.drb_item_ingr_hist.material_unit_code IS '원료단위코드_M08';
COMMENT ON COLUMN us_dsadba.drb_item_ingr_hist.halfmtral_code IS '반제원료코드';
COMMENT ON COLUMN us_dsadba.drb_item_ingr_hist.halfmtral_actvty_mttr_cpcty IS '반제원료활성물질용량';
COMMENT ON COLUMN us_dsadba.drb_item_ingr_hist.halfmtral_qnt IS '반제원료분량';
COMMENT ON COLUMN us_dsadba.drb_item_ingr_hist.halfmtral_unit_code IS '반제원료단위코드_M08';
COMMENT ON COLUMN us_dsadba.drb_item_ingr_hist.regist_ts IS '등록 TIMESTAMP';
COMMENT ON COLUMN us_dsadba.drb_item_ingr_hist.update_ts IS '수정/TIMESTAMP';
COMMENT ON COLUMN us_dsadba.drb_item_ingr_hist.material_qnt_num IS '원료분량(수)';
COMMENT ON COLUMN us_dsadba.drb_item_ingr_hist.material_qnt_etc IS '원료분량(그외)';
COMMENT ON COLUMN us_dsadba.drb_item_ingr_hist.material_actvty_mttr_name IS '원료활성물질명';
COMMENT ON COLUMN us_dsadba.drb_item_ingr_hist.material_actvty_mttr_qy IS '원료활성물질수량';
COMMENT ON COLUMN us_dsadba.drb_item_ingr_hist.history_regist_ts IS '이력등록 TIMESTAMP';

-- Permissions

--ALTER TABLE us_dsadba.drb_item_ingr_hist OWNER TO postgres;
--GRANT ALL ON TABLE us_dsadba.drb_item_ingr_hist TO postgres;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr_hist TO bo_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr_hist TO bo_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr_hist TO cm_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr_hist TO cm_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr_hist TO cr_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr_hist TO cr_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr_hist TO dr_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr_hist TO dr_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr_hist TO ex_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr_hist TO ex_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr_hist TO pp_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr_hist TO pp_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr_hist TO ca_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_item_ingr_hist TO ca_dev;


-- us_dsadba.drb_total_content_drugsafe definition

-- Drop table

-- DROP TABLE us_dsadba.drb_total_content_drugsafe;

CREATE TABLE us_dsadba.drb_total_content_drugsafe (
	item_seq numeric NOT NULL, -- 품목일련번호
	totqy_seq numeric NOT NULL, -- 총량일련번호
	totqy_cont varchar(2000) NULL, -- 총량
	ingr_cont varchar(2000) NULL, -- 성분함량구분
	regist_ts timestamp NOT NULL, -- 등록 TIMESTAMP
	update_ts timestamp NOT NULL, -- 수정/TIMESTAMP
	totqy_num varchar(100) NULL, -- 총량(수)
	totqy_num1 varchar(100) NULL -- 총량1(수)
);
COMMENT ON TABLE us_dsadba.drb_total_content_drugsafe IS '의약품_총량';

-- Column comments

COMMENT ON COLUMN us_dsadba.drb_total_content_drugsafe.item_seq IS '품목일련번호';
COMMENT ON COLUMN us_dsadba.drb_total_content_drugsafe.totqy_seq IS '총량일련번호';
COMMENT ON COLUMN us_dsadba.drb_total_content_drugsafe.totqy_cont IS '총량';
COMMENT ON COLUMN us_dsadba.drb_total_content_drugsafe.ingr_cont IS '성분함량구분';
COMMENT ON COLUMN us_dsadba.drb_total_content_drugsafe.regist_ts IS '등록 TIMESTAMP';
COMMENT ON COLUMN us_dsadba.drb_total_content_drugsafe.update_ts IS '수정/TIMESTAMP';
COMMENT ON COLUMN us_dsadba.drb_total_content_drugsafe.totqy_num IS '총량(수)';
COMMENT ON COLUMN us_dsadba.drb_total_content_drugsafe.totqy_num1 IS '총량1(수)';

-- Permissions

--ALTER TABLE us_dsadba.drb_total_content_drugsafe OWNER TO postgres;
--GRANT ALL ON TABLE us_dsadba.drb_total_content_drugsafe TO postgres;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_total_content_drugsafe TO bo_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_total_content_drugsafe TO bo_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_total_content_drugsafe TO cm_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_total_content_drugsafe TO cm_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_total_content_drugsafe TO cr_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_total_content_drugsafe TO cr_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_total_content_drugsafe TO dr_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_total_content_drugsafe TO dr_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_total_content_drugsafe TO ex_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_total_content_drugsafe TO ex_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_total_content_drugsafe TO pp_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_total_content_drugsafe TO pp_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_total_content_drugsafe TO ca_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drb_total_content_drugsafe TO ca_dev;


-- us_dsadba.drc_ingr definition

-- Drop table

-- DROP TABLE us_dsadba.drc_ingr;

CREATE TABLE us_dsadba.drc_ingr (
	ingr_code varchar(7) NULL, -- 성분코드
	drug_cosmetic_gb varchar(1) NULL, -- 의약품/화장품구분_M44
	ingr_kor_name varchar(3000) NULL, -- 성분명한글
	ingr_eng_name varchar(2000) NULL, -- 성분명영문
	material_ingr_gb varchar(1) NULL, -- 원료/성분구분코드_M95
	ori_material_yn varchar(1) NULL, -- 대표원료코드여부
	ori_material_code varchar(7) NULL, -- 대표원료코드
	ingr_disable_yn varchar(1) NULL, -- 성분비활성여부
	rel_ingr_code varchar(7) NULL, -- 계통성분코드
	rare_drug_yn varchar(1) NULL, -- 희귀의약품여부
	msbs_ingr_yn varchar(1) NULL, -- 오.남용우려성분여부
	regist_ts timestamp NOT NULL, -- 등록 TIMESTAMP
	update_ts timestamp NOT NULL, -- 수정/TIMESTAMP
	bio_prodt_yn varchar(1) NULL -- 생물학적제제여부
);
COMMENT ON TABLE us_dsadba.drc_ingr IS '의약성분_(원료)성분';

-- Column comments

COMMENT ON COLUMN us_dsadba.drc_ingr.ingr_code IS '성분코드';
COMMENT ON COLUMN us_dsadba.drc_ingr.drug_cosmetic_gb IS '의약품/화장품구분_M44';
COMMENT ON COLUMN us_dsadba.drc_ingr.ingr_kor_name IS '성분명한글';
COMMENT ON COLUMN us_dsadba.drc_ingr.ingr_eng_name IS '성분명영문';
COMMENT ON COLUMN us_dsadba.drc_ingr.material_ingr_gb IS '원료/성분구분코드_M95';
COMMENT ON COLUMN us_dsadba.drc_ingr.ori_material_yn IS '대표원료코드여부';
COMMENT ON COLUMN us_dsadba.drc_ingr.ori_material_code IS '대표원료코드';
COMMENT ON COLUMN us_dsadba.drc_ingr.ingr_disable_yn IS '성분비활성여부';
COMMENT ON COLUMN us_dsadba.drc_ingr.rel_ingr_code IS '계통성분코드';
COMMENT ON COLUMN us_dsadba.drc_ingr.rare_drug_yn IS '희귀의약품여부';
COMMENT ON COLUMN us_dsadba.drc_ingr.msbs_ingr_yn IS '오.남용우려성분여부';
COMMENT ON COLUMN us_dsadba.drc_ingr.regist_ts IS '등록 TIMESTAMP';
COMMENT ON COLUMN us_dsadba.drc_ingr.update_ts IS '수정/TIMESTAMP';
COMMENT ON COLUMN us_dsadba.drc_ingr.bio_prodt_yn IS '생물학적제제여부';

-- Permissions

--ALTER TABLE us_dsadba.drc_ingr OWNER TO postgres;
--GRANT ALL ON TABLE us_dsadba.drc_ingr TO postgres;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drc_ingr TO bo_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drc_ingr TO bo_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drc_ingr TO cm_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drc_ingr TO cm_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drc_ingr TO cr_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drc_ingr TO cr_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drc_ingr TO dr_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drc_ingr TO dr_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drc_ingr TO ex_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drc_ingr TO ex_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drc_ingr TO pp_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drc_ingr TO pp_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drc_ingr TO ca_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.drc_ingr TO ca_dev;


-- us_dsadba.sp_drug_standard_code definition

-- Drop table

-- DROP TABLE us_dsadba.sp_drug_standard_code;

CREATE TABLE us_dsadba.sp_drug_standard_code (
	mgmt_no numeric NOT NULL,
	item_seq numeric NOT NULL,
	entp_no numeric NOT NULL,
	tax_no varchar(10) NULL,
	std_cd_cre_dt timestamp NULL,
	grant_dt timestamp NULL,
	del_yn varchar(1) NULL,
	fst_in_dt timestamp NOT NULL,
	last_upd_dt timestamp NOT NULL,
	del_dt timestamp NULL,
	clo_dt timestamp NULL,
	kor_mgds_nm varchar(600) NULL,
	gb_cd_type varchar(2) NULL,
	medc_nom numeric NULL,
	medc_unit varchar(2) NULL,
	pack_type varchar(12) NULL,
	pack_mgds_tot_qty numeric NOT NULL,
	repr_cd varchar(13) NULL,
	std_cd varchar(13) NULL,
	rmk varchar(4000) NULL,
	tran_tkovr_adpt_fr_dt timestamp NULL,
	tran_tkovr_adpt_to_dt timestamp NULL,
	sno_omss_yn_cd varchar(1) NULL,
	sno_omss_rs_cd varchar(2) NULL,
	update_ts timestamp NOT NULL,
	regist_ts timestamp NOT NULL,
	regist_id varchar(50) NULL,
	who_atc_cd varchar(20) NULL,
	crtr_prd_cd varchar(9) NULL,
	cnvrsn_stndrd numeric NULL,
	cnvrsn_stndrd_unit varchar(5) NULL
);

-- Permissions

--ALTER TABLE us_dsadba.sp_drug_standard_code OWNER TO postgres;
--GRANT ALL ON TABLE us_dsadba.sp_drug_standard_code TO postgres;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.sp_drug_standard_code TO bo_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.sp_drug_standard_code TO bo_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.sp_drug_standard_code TO cm_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.sp_drug_standard_code TO cm_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.sp_drug_standard_code TO cr_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.sp_drug_standard_code TO cr_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.sp_drug_standard_code TO dr_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.sp_drug_standard_code TO dr_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.sp_drug_standard_code TO ex_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.sp_drug_standard_code TO ex_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.sp_drug_standard_code TO pp_dev;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.sp_drug_standard_code TO pp_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.sp_drug_standard_code TO ca_app;
--GRANT UPDATE, INSERT, SELECT, DELETE ON TABLE us_dsadba.sp_drug_standard_code TO ca_dev;
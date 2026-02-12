-- row 개수
SELECT count(*) FROM us_dsadba.sp_drug_standard_code; 	-- 327,572
SELECT count(*) FROM us_dsadba.drb_item;       			-- 295,453
SELECT count(*) FROM us_dsadba.drb_item_ingr;  			-- 4,442,534
SELECT count(*) FROM us_dsadba.drc_ingr;	   			-- 211,783
SELECT count(*) FROM us_dsadba.dra_entp_permit;			-- 6,185

-- 참고쿼리
SELECT DISTINCT st.item_seq, substr(st.std_cd, 4, 9) AS std_cd, dinori.ingr_code, dinori.ingr_eng_name, dit.item_name, dit.entp_seq, dep.entp_name
FROM us_dsadba.sp_drug_standard_code st
         INNER JOIN us_dsadba.drb_item_ingr dii ON dii.item_seq = st.item_seq AND dii.material_mix_purpose_code = '001'
         INNER JOIN us_dsadba.drc_ingr din ON din.ingr_code = dii.material_code
         INNER JOIN us_dsadba.drc_ingr dinori ON dinori.ingr_code = din.ori_material_code AND dinori.ori_material_yn = 'Y'
         INNER JOIN us_dsadba.drb_item dit ON dit.item_seq = st.item_seq
         INNER JOIN us_dsadba.dra_entp_permit dep ON dit.entp_seq = dep.entp_seq
WHERE 1=1
  AND dit.item_name LIKE '%판피린정%'
--        AND dinori.ingr_eng_name = 'olanzapine'
ORDER BY st.item_seq, dinori.ingr_eng_name;

-- 검색조건 케이스 구분
-- CASE 1 :  제품명(국문) 		 	검색 -> 제품명, 제약회사, 	       표준코드(제품코드?)
-- CASE 2 :  성분명(영문)(제품탐색) 	검색 -> 제품명, 제약회사,  성분명, 표준코드(제품코드?)
-- CASE 3 :  성분명(영문)(성분탐색) 	검색 -> 				    성분명, 표준코드(성분코드?)


-- CASE 1 :  제품명(국문) 		 	검색 -> 제품명, 제약회사, 	   표준코드(제품코드?)
SELECT DISTINCT ON (st.item_seq)
    st.item_seq
    , substr(st.std_cd, 4, 9) AS std_cd
    , dit.item_name
    , dep.entp_name
FROM us_dsadba.sp_drug_standard_code st
    INNER JOIN us_dsadba.drb_item dit ON dit.item_seq = st.item_seq
    INNER JOIN us_dsadba.dra_entp_permit dep ON dit.entp_seq = dep.entp_seq
WHERE 1=1
  AND dit.item_name LIKE '%활명수%'
ORDER BY st.item_seq;


-- CASE 2 :  성분명(영문)(제품탐색) 	검색 -> 제품명, 제약회사,  성분명, 표준코드(제품코드?)
SELECT DISTINCT ON (st.item_seq)
    st.item_seq
    , substr(st.std_cd, 4, 9) AS std_cd
    , din.ingr_eng_name
    , dit.item_name
    , dep.entp_name
FROM us_dsadba.drc_ingr din
    INNER JOIN us_dsadba.drb_item_ingr dii ON din.ingr_code = dii.material_code
    INNER JOIN us_dsadba.sp_drug_standard_code st ON dii.item_seq = st.item_seq AND dii.material_mix_purpose_code = '001'
    INNER JOIN us_dsadba.drb_item dit ON dit.item_seq = st.item_seq
    INNER JOIN us_dsadba.dra_entp_permit dep ON dit.entp_seq = dep.entp_seq
WHERE 1=1
  AND din.ingr_eng_name LIKE '%Glucose%'
ORDER BY st.item_seq, din.ingr_eng_name;


-- CASE 3 :  성분명(영문)(성분탐색) 	검색 -> 				 성분명, 표준코드(성분코드?)




CREATE OR REPLACE VIEW SDM.SDM_PROFILE_PRD AS 
WITH SDM_PROFILE_PRD_V1 AS (
      SELECT
       MA.OWNER                           AS OWNER
      ,MA.TABLE_NAME                      AS TABLE_NAME
      ,MA.COLUMN_NAME                     AS COLUMN_NAME
      ,dbms_xmlgen.getxml('select count(distinct "' || column_name || '") as c1,' || 'count(case when "' || column_name || '" is null then 1 end) as c2 ' || 'from "' || owner || '"."' || table_name || '"'  ||  'where B_category_id  in  (23,30,37)')      AS XML_CLOB
FROM ALL_TAB_COLUMNS MA  
WHERE owner = 'ODS'   and table_name = 'NSP_REQ_HEADERS'  AND COLUMN_NAME in ('ORG_ID','SITE_CODE','PROJECT_CODE','TOTAL_AMOUNT','RELEASED_AMOUNT')
AND data_type in ('NUMBER', 'DATE', 'TIMESTAMP', 'CHAR', 'VARCHAR2', 'NCHAR', 'NVARCHAR2')
)      SELECT
       MA.OWNER                           AS OWNER
      ,MA.TABLE_NAME                      AS TABLE_NAME
      ,MA.COLUMN_NAME                     AS COLUMN_NAME
      ,XML.DISTINCT_COUNT                 AS DISTINCT_COUNT
      ,XML.NULL_COUNT                     AS NULL_COUNT
FROM ODS.SDM_PROFILE_PRD_V1 MA  
cross join xmltable ('/ROWSET/ROW' passing xmltype(ma.xml_clob) columns distinct_count number path 'C1', null_count number path 'C2') XML
;




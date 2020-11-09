
ALTER TABLE SDM.SDM_DMST_AND_INTL_TRAVEL_EXP_TP1 DISABLE CONSTRAINT SDM_DMST_AND_INTL_TRAVEL_EXP_TP1_X;
TRUNCATE TABLE SDM.SDM_DMST_AND_INTL_TRAVEL_EXP_TP1;

INSERT /*+ append */ INTO SDM.SDM_DMST_AND_INTL_TRAVEL_EXP_TP1 (
      PROJECTCODE                             
      ,DMST_AND_INTL_TRAVEL_EXP                
)
WITH SDM_DMST_AND_INTL_TRAVEL_EXP_V11 AS (
      SELECT
       MA.CASEID                          AS CASEID
      ,MA.PROJECTCODE                     AS PROJECTCODE
      ,MA.HEADERNO                        AS HEADERNO
      ,MA.STATUS                          AS STATUS
FROM ODS.PCS_HEADER MA  
WHERE ma.Type IS NOT NULL AND ma.Status = 99 AND ma.ProjectCode is not null
), SDM_DMST_AND_INTL_TRAVEL_EXP_V21 AS (
      SELECT
       SDAITEV.HEADERNO                   AS HEADERNO
      ,SDAITEV.PROJECTCODE                AS PROJECTCODE
      ,MA.TOTAL                           AS TOTAL
      ,SDAITEV.CASEID                     AS CASEID
FROM ODS.PCS_LINEEE MA  
JOIN SDM_DMST_AND_INTL_TRAVEL_EXP_V11 SDAITEV ON MA.CASEID=SDAITEV.CASEID
), SDM_DMST_AND_INTL_TRAVEL_EXP_V20 AS (
      SELECT
       MA.PROJECTCODE                     AS PROJECTCODE
      ,MA.TOTAL                           AS DMST_AND_INTL_TRAVEL_EXP
FROM SDM_DMST_AND_INTL_TRAVEL_EXP_V21 MA  
UNION ALL 
      SELECT
       cast(MA.PROJECTCODE as varchar2(150))      AS PROJECTCODE
      ,MA.AMOUNT                          AS DMST_AND_INTL_TRAVEL_EXP
FROM ODS.BTMS_EXPENSEPROJECT MA  
)      SELECT
       MA.PROJECTCODE                     AS PROJECTCODE
      ,sum(MA.DMST_AND_INTL_TRAVEL_EXP)   AS DMST_AND_INTL_TRAVEL_EXP
FROM SDM_DMST_AND_INTL_TRAVEL_EXP_V20 MA  
GROUP BY MA.PROJECTCODE
;



ALTER TABLE SDM.SDM_DMST_AND_INTL_TRAVEL_EXP_TP1 ENABLE CONSTRAINT SDM_DMST_AND_INTL_TRAVEL_EXP_TP1_X EXCEPTIONS INTO SDM.SDM_DMST_AND_INTL_TRAVEL_EXP_TPX;

ALTER TABLE SDM.SDM_DMST_AND_INTL_TRAVEL_EXP DISABLE CONSTRAINT SDM_DMST_AND_INTL_TRAVEL_EXP_X;
TRUNCATE TABLE SDM.SDM_DMST_AND_INTL_TRAVEL_EXP;

INSERT /*+ append */ INTO SDM.SDM_DMST_AND_INTL_TRAVEL_EXP (
      PROJECTCODE                             
      ,DMST_AND_INTL_TRAVEL_EXP                
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.PROJECTCODE                          
      ,MA.DMST_AND_INTL_TRAVEL_EXP             
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'SDM_DMST_AND_INTL_TRAVEL_EXP_V20'                          
FROM SDM.SDM_DMST_AND_INTL_TRAVEL_EXP_TP1 MA ; 



ALTER TABLE SDM.SDM_DMST_AND_INTL_TRAVEL_EXP ENABLE CONSTRAINT SDM_DMST_AND_INTL_TRAVEL_EXP_X EXCEPTIONS INTO SDM.SDM_DMST_AND_INTL_TRAVEL_EXP_TPX;

-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('SDM','SDM_DMST_AND_INTL_TRAVEL_EXP');



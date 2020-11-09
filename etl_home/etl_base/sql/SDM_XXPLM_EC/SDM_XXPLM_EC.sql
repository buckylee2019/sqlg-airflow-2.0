
ALTER TABLE SDM.SDM_XXPLM_EC_TP1 DISABLE CONSTRAINT SDM_XXPLM_EC_TP1_X;
TRUNCATE TABLE SDM.SDM_XXPLM_EC_TP1;

INSERT /*+ append */ INTO SDM.SDM_XXPLM_EC_TP1 (
      ECNO                                    
      ,SUBJECT                                 
      ,STATUS                                  
      ,MODELNO                                 
      ,ORG                                     
      ,CREATIONDATE                            
      ,EFFECTIVEDATE                           
      ,COMPLETEDDATE                           
)
WITH SDM_XXPLM_EC_V1 AS (
      SELECT
       distinct MA.ECNO                   AS ECNO
      ,REGEXP_SUBSTR(MA.MODELNO,'[^,]+',1, level)      AS MODELNO
FROM ODS.MV_XXPLM_EC MA  
WHERE MA.MODELNO is not null
CONNECT BY  REGEXP_SUBSTR(MA.MODELNO,'[^,]+',1, level)  is not null and PRIOR ma.ECNO=  ma.ECNO  and PRIOR SYS_GUID() is not null
), SDM_XXPLM_EC_V2 AS (
      SELECT
       distinct MA.ECNO                   AS ECNO
      ,REGEXP_SUBSTR(MA.ORG,'[^,]+',1, level)      AS ORG
FROM ODS.MV_XXPLM_EC MA  
WHERE MA.ORG is not null
CONNECT BY  REGEXP_SUBSTR(MA.ORG,'[^,]+',1, level)  is not null and PRIOR ma.ECNO=  ma.ECNO  and PRIOR SYS_GUID() is not null
)      SELECT
       MA.ECNO                            AS ECNO
      ,MA.SUBJECT                         AS SUBJECT
      ,MA.STATUS                          AS STATUS
      ,coalesce(SXEV1.MODELNO,'X')        AS MODELNO
      ,coalesce(SXEV2.ORG,'X')            AS ORG
      ,MA.CREATIONDATE                    AS CREATIONDATE
      ,MA.EFFECTIVEDATE                   AS EFFECTIVEDATE
      ,MA.COMPLETEDDATE                   AS COMPLETEDDATE
FROM ODS.MV_XXPLM_EC MA  
LEFT JOIN SDM_XXPLM_EC_V1 SXEV1 ON MA.ECNO=SXEV1.ECNO
LEFT JOIN SDM_XXPLM_EC_V2 SXEV2 ON MA.ECNO=SXEV2.ECNO
WHERE MA.CREATIONDATE is not null
AND ma.ECNO like 'EC%'
AND ma.STATUS = 'RESOLVED'
;



ALTER TABLE SDM.SDM_XXPLM_EC_TP1 ENABLE CONSTRAINT SDM_XXPLM_EC_TP1_X EXCEPTIONS INTO SDM.SDM_XXPLM_EC_TPX;

ALTER TABLE SDM.SDM_XXPLM_EC DISABLE CONSTRAINT SDM_XXPLM_EC_X;
TRUNCATE TABLE SDM.SDM_XXPLM_EC;

INSERT /*+ append */ INTO SDM.SDM_XXPLM_EC (
      ECNO                                    
      ,SUBJECT                                 
      ,STATUS                                  
      ,MODELNO                                 
      ,ORG                                     
      ,CREATIONDATE                            
      ,EFFECTIVEDATE                           
      ,COMPLETEDDATE                           
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.ECNO                                 
      ,MA.SUBJECT                              
      ,MA.STATUS                               
      ,MA.MODELNO                              
      ,MA.ORG                                  
      ,MA.CREATIONDATE                         
      ,MA.EFFECTIVEDATE                        
      ,MA.COMPLETEDDATE                        
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'MV_XXPLM_EC'                          
FROM SDM.SDM_XXPLM_EC_TP1 MA ; 



ALTER TABLE SDM.SDM_XXPLM_EC ENABLE CONSTRAINT SDM_XXPLM_EC_X EXCEPTIONS INTO SDM.SDM_XXPLM_EC_TPX;

-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('SDM','SDM_XXPLM_EC');



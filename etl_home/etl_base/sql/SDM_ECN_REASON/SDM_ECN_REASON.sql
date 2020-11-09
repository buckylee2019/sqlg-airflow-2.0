
ALTER TABLE SDM.SDM_ECN_REASON_TP1 DISABLE CONSTRAINT SDM_ECN_REASON_TP1_X;
TRUNCATE TABLE SDM.SDM_ECN_REASON_TP1;

INSERT /*+ append */ INTO SDM.SDM_ECN_REASON_TP1 (
      ECN_REASON                              
      ,INTERNAL_NAME                           
      ,ECN_REASON_ID                           
)
      SELECT
       MA.DISPLAY_NAME                    AS ECN_REASON
      ,MA.INTERNAL_NAME                   AS INTERNAL_NAME
      ,ORA_HASH(MA.DISPLAY_NAME)          AS ECN_REASON_ID
FROM ODS.XXPLM_EC_CHANGE_TYPE MA  
;



ALTER TABLE SDM.SDM_ECN_REASON_TP1 ENABLE CONSTRAINT SDM_ECN_REASON_TP1_X EXCEPTIONS INTO SDM.SDM_ECN_REASON_TPX;

ALTER TABLE SDM.SDM_ECN_REASON DISABLE CONSTRAINT SDM_ECN_REASON_X;
TRUNCATE TABLE SDM.SDM_ECN_REASON;

INSERT /*+ append */ INTO SDM.SDM_ECN_REASON (
      ECN_REASON                              
      ,INTERNAL_NAME                           
      ,ECN_REASON_ID                           
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.ECN_REASON                           
      ,MA.INTERNAL_NAME                        
      ,MA.ECN_REASON_ID                        
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'XXPLM_EC_CHANGE_TYPE'                          
FROM SDM.SDM_ECN_REASON_TP1 MA ; 



ALTER TABLE SDM.SDM_ECN_REASON ENABLE CONSTRAINT SDM_ECN_REASON_X EXCEPTIONS INTO SDM.SDM_ECN_REASON_TPX;

-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('SDM','SDM_ECN_REASON');



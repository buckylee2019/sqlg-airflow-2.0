
ALTER TABLE DM.DIM_ECN_REASON_TP1 DISABLE CONSTRAINT DIM_ECN_REASON_TP1_X;
TRUNCATE TABLE DM.DIM_ECN_REASON_TP1;

INSERT /*+ append */ INTO DM.DIM_ECN_REASON_TP1 (
      ECN_REASON                              
      ,INTERNAL_NAME                           
      ,ECN_REASON_ID                           
)
      SELECT
       MA.ECN_REASON                      AS ECN_REASON
      ,MA.INTERNAL_NAME                   AS INTERNAL_NAME
      ,MA.ECN_REASON_ID                   AS ECN_REASON_ID
FROM SDM.SDM_ECN_REASON MA  
;



ALTER TABLE DM.DIM_ECN_REASON_TP1 ENABLE CONSTRAINT DIM_ECN_REASON_TP1_X EXCEPTIONS INTO DM.DIM_ECN_REASON_TPX;


INSERT /*+ append */ INTO DM.DIM_ECN_REASON_TP1 (
      ECN_REASON                              
      ,INTERNAL_NAME                           
      ,ECN_REASON_ID                           
) 
      SELECT
      MA.ECN_REASON                           
      ,MA.INTERNAL_NAME                        
      ,MA.ECN_REASON_ID                        
FROM DM.DIM_ECN_REASON MA 
WHERE NOT EXISTS (SELECT 1  FROM DM.DIM_ECN_REASON_TP1 MB
      WHERE MA.ECN_REASON_ID=MB.ECN_REASON_ID
);

ALTER TABLE DM.DIM_ECN_REASON DISABLE CONSTRAINT DIM_ECN_REASON_X;
TRUNCATE TABLE DM.DIM_ECN_REASON;
INSERT /*+ append */ INTO DM.DIM_ECN_REASON (
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
      ,'SDM_ECN_REASON'                          
FROM DM.DIM_ECN_REASON_TP1 MA ; 



ALTER TABLE DM.DIM_ECN_REASON ENABLE CONSTRAINT DIM_ECN_REASON_X EXCEPTIONS INTO DM.DIM_ECN_REASON_TPX;

-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('DM','DIM_ECN_REASON');



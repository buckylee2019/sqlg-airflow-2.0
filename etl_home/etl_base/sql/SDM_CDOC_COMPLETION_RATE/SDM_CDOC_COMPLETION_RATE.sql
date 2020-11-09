
TRUNCATE TABLE SDM.SDM_CDOC_COMPLETION_RATE_TP1;

INSERT /*+ append */ INTO SDM.SDM_CDOC_COMPLETION_RATE_TP1 (
      PROJECT_CODE                            
      ,BUSINESS_GROUP                          
      ,MODEL                                   
      ,MANUFACTURING_PLANT                     
      ,DOC_CODE                                
      ,STAGE                                   
      ,CDOC_COMPLETION_RATE                    
)
      SELECT
       MA.PROJECT_CODE                    AS PROJECT_CODE
      ,MA.BUSINESS_GROUP                  AS BUSINESS_GROUP
      ,MA.MODEL                           AS MODEL
      ,MA.MANUFACTURING_PLANT             AS MANUFACTURING_PLANT
      ,MA.DOC_CODE                        AS DOC_CODE
      ,MA.STAGE                           AS STAGE
      ,SSUCC.UPLOAD_CDOC_COUNT / MA.TOTAL_CDOC_COUNT      AS CDOC_COMPLETION_RATE
FROM SDM.SDM_TOTAL_CDOC_COUNT MA  
LEFT JOIN SDM.SDM_UPLOAD_CDOC_COUNT SSUCC ON MA.PROJECT_CODE=SSUCC.PROJECT_CODE  and MA.BUSINESS_GROUP=SSUCC.BUSINESS_GROUP  and MA.MODEL=SSUCC.MODEL  and MA.MANUFACTURING_PLANT=SSUCC.MANUFACTURING_PLANT  and MA.DOC_CODE=SSUCC.DOC_CODE  and MA.STAGE=SSUCC.STAGE
;


TRUNCATE TABLE SDM.SDM_CDOC_COMPLETION_RATE;

INSERT /*+ append */ INTO SDM.SDM_CDOC_COMPLETION_RATE (
      PROJECT_CODE                            
      ,BUSINESS_GROUP                          
      ,MODEL                                   
      ,MANUFACTURING_PLANT                     
      ,DOC_CODE                                
      ,STAGE                                   
      ,CDOC_COMPLETION_RATE                    
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.PROJECT_CODE                         
      ,MA.BUSINESS_GROUP                       
      ,MA.MODEL                                
      ,MA.MANUFACTURING_PLANT                  
      ,MA.DOC_CODE                             
      ,MA.STAGE                                
      ,MA.CDOC_COMPLETION_RATE                 
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'SDM_TOTAL_CDOC_COUNT'                          
FROM SDM.SDM_CDOC_COMPLETION_RATE_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('SDM','SDM_CDOC_COMPLETION_RATE');



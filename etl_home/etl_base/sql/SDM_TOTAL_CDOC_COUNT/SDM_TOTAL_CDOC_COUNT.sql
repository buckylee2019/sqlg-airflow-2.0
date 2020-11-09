
TRUNCATE TABLE SDM.SDM_TOTAL_CDOC_COUNT_TP1;

INSERT /*+ append */ INTO SDM.SDM_TOTAL_CDOC_COUNT_TP1 (
      PROJECT_CODE                            
      ,BUSINESS_GROUP                          
      ,MODEL                                   
      ,MANUFACTURING_PLANT                     
      ,DOC_CODE                                
      ,STAGE                                   
      ,TOTAL_CDOC_COUNT                        
)
      SELECT
       MA.PROJECT_CODE                    AS PROJECT_CODE
      ,MA.BUSINESS_GROUP                  AS BUSINESS_GROUP
      ,MA.MODEL                           AS MODEL
      ,MA.MANUFACTURING_PLANT             AS MANUFACTURING_PLANT
      ,MA.DOC_CODE                        AS DOC_CODE
      ,MA.STAGE                           AS STAGE
      ,count(1)                           AS TOTAL_CDOC_COUNT
FROM SDM.SDM_UPLOAD_CDOC_COUNT MA  
GROUP BY MA.PROJECT_CODE,MA.BUSINESS_GROUP,MA.MODEL,MA.MANUFACTURING_PLANT,MA.DOC_CODE,MA.STAGE
;


TRUNCATE TABLE SDM.SDM_TOTAL_CDOC_COUNT;

INSERT /*+ append */ INTO SDM.SDM_TOTAL_CDOC_COUNT (
      PROJECT_CODE                            
      ,BUSINESS_GROUP                          
      ,MODEL                                   
      ,MANUFACTURING_PLANT                     
      ,DOC_CODE                                
      ,STAGE                                   
      ,TOTAL_CDOC_COUNT                        
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
      ,MA.TOTAL_CDOC_COUNT                     
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'SDM_UPLOAD_CDOC_COUNT'                          
FROM SDM.SDM_TOTAL_CDOC_COUNT_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('SDM','SDM_TOTAL_CDOC_COUNT');



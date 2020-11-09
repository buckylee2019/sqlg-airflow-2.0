
ALTER TABLE DM.DIM_PROJECT_CODE_TP1 DISABLE CONSTRAINT DIM_PROJECT_CODE_TP1_X;
TRUNCATE TABLE DM.DIM_PROJECT_CODE_TP1;

INSERT /*+ append */ INTO DM.DIM_PROJECT_CODE_TP1 (
      PROJECT_CODE                            
      ,PROJECT_PM                              
      ,PROJECT_NAME                            
      ,BUSINESS_UNIT                           
      ,BUSINESS_GROUP                          
      ,PROJECT_STATUS                          
      ,PROJECT_CODE_ID                         
)
      SELECT
       MA.PROJECT_CODE                    AS PROJECT_CODE
      ,MA.PROJECT_PM                      AS PROJECT_PM
      ,MA.PROJECT_NAME                    AS PROJECT_NAME
      ,MA.BUSINESS_UNIT                   AS BUSINESS_UNIT
      ,MA.BUSINESS_GROUP                  AS BUSINESS_GROUP
      ,MA.PROJECT_STATUS                  AS PROJECT_STATUS
      ,MA.PROJECT_CODE_ID                 AS PROJECT_CODE_ID
FROM SDM.SDM_PROJECT_CODE MA  
;



ALTER TABLE DM.DIM_PROJECT_CODE_TP1 ENABLE CONSTRAINT DIM_PROJECT_CODE_TP1_X EXCEPTIONS INTO DM.DIM_PROJECT_CODE_TPX;


INSERT /*+ append */ INTO DM.DIM_PROJECT_CODE_TP1 (
      PROJECT_CODE                            
      ,PROJECT_PM                              
      ,PROJECT_NAME                            
      ,BUSINESS_UNIT                           
      ,BUSINESS_GROUP                          
      ,PROJECT_STATUS                          
      ,PROJECT_CODE_ID                         
) 
      SELECT
      MA.PROJECT_CODE                         
      ,MA.PROJECT_PM                           
      ,MA.PROJECT_NAME                         
      ,MA.BUSINESS_UNIT                        
      ,MA.BUSINESS_GROUP                       
      ,MA.PROJECT_STATUS                       
      ,MA.PROJECT_CODE_ID                      
FROM DM.DIM_PROJECT_CODE MA 
WHERE NOT EXISTS (SELECT 1  FROM DM.DIM_PROJECT_CODE_TP1 MB
      WHERE MA.PROJECT_CODE_ID=MB.PROJECT_CODE_ID
);

ALTER TABLE DM.DIM_PROJECT_CODE DISABLE CONSTRAINT DIM_PROJECT_CODE_X;
TRUNCATE TABLE DM.DIM_PROJECT_CODE;
INSERT /*+ append */ INTO DM.DIM_PROJECT_CODE (
      PROJECT_CODE                            
      ,PROJECT_PM                              
      ,PROJECT_NAME                            
      ,BUSINESS_UNIT                           
      ,BUSINESS_GROUP                          
      ,PROJECT_STATUS                          
      ,PROJECT_CODE_ID                         
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.PROJECT_CODE                         
      ,MA.PROJECT_PM                           
      ,MA.PROJECT_NAME                         
      ,MA.BUSINESS_UNIT                        
      ,MA.BUSINESS_GROUP                       
      ,MA.PROJECT_STATUS                       
      ,MA.PROJECT_CODE_ID                      
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'SDM_PROJECT_CODE'                          
FROM DM.DIM_PROJECT_CODE_TP1 MA ; 



ALTER TABLE DM.DIM_PROJECT_CODE ENABLE CONSTRAINT DIM_PROJECT_CODE_X EXCEPTIONS INTO DM.DIM_PROJECT_CODE_TPX;

-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('DM','DIM_PROJECT_CODE');




ALTER TABLE SDM.SDM_PROJECT_CODE_TP1 DISABLE CONSTRAINT SDM_PROJECT_CODE_TP1_X;
TRUNCATE TABLE SDM.SDM_PROJECT_CODE_TP1;

INSERT /*+ append */ INTO SDM.SDM_PROJECT_CODE_TP1 (
      PROJECT_CODE                            
      ,PROJECT_PM                              
      ,PROJECT_NAME                            
      ,BUSINESS_UNIT                           
      ,BUSINESS_GROUP                          
      ,PROJECT_STATUS                          
      ,PROJECT_CODE_ID                         
)
      SELECT
       MA.document_name                   AS PROJECT_CODE
      ,MA.PROJECT_PM                      AS PROJECT_PM
      ,MA.PROJECT_NAME                    AS PROJECT_NAME
      ,MA.BU                              AS BUSINESS_UNIT
      ,MA.BG                              AS BUSINESS_GROUP
      ,MA.PRJ_STATUS                      AS PROJECT_STATUS
      ,ORA_HASH(MA.document_name)         AS PROJECT_CODE_ID
FROM ODS.XXPLM_PROJECT MA  
;



ALTER TABLE SDM.SDM_PROJECT_CODE_TP1 ENABLE CONSTRAINT SDM_PROJECT_CODE_TP1_X EXCEPTIONS INTO SDM.SDM_PROJECT_CODE_TPX;

ALTER TABLE SDM.SDM_PROJECT_CODE DISABLE CONSTRAINT SDM_PROJECT_CODE_X;
TRUNCATE TABLE SDM.SDM_PROJECT_CODE;

INSERT /*+ append */ INTO SDM.SDM_PROJECT_CODE (
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
      ,'XXPLM_PROJECT'                          
FROM SDM.SDM_PROJECT_CODE_TP1 MA ; 



ALTER TABLE SDM.SDM_PROJECT_CODE ENABLE CONSTRAINT SDM_PROJECT_CODE_X EXCEPTIONS INTO SDM.SDM_PROJECT_CODE_TPX;

-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('SDM','SDM_PROJECT_CODE');



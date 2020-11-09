
TRUNCATE TABLE ODS.XXPLM_PROJECT_TP1;

INSERT /*+ append */ INTO ODS.XXPLM_PROJECT_TP1 (
      DOCUMENT_NAME                           
      ,PRJ_STATUS                              
      ,PROJECTCODE_CREATOR                     
      ,PROJECTCODE_EFFECTIVE_DATE              
      ,PROJECTCODE_CREATE_DATE                 
      ,PRO_BUDGET                              
      ,ROI                                     
      ,PROJECT_REVENUE                         
      ,PROJECT_PM                              
      ,PROJECT_NAME_CH                         
      ,BG                                      
      ,BU                                      
      ,PROJECT_NAME                            
      ,PRODUCT_DESC                            
)
      SELECT
       MA.DOCUMENT_NAME                   AS DOCUMENT_NAME
      ,MA.PRJ_STATUS                      AS PRJ_STATUS
      ,MA.PROJECTCODE_CREATOR             AS PROJECTCODE_CREATOR
      ,MA.PROJECTCODE_EFFECTIVE_DATE      AS PROJECTCODE_EFFECTIVE_DATE
      ,MA.PROJECTCODE_CREATE_DATE         AS PROJECTCODE_CREATE_DATE
      ,MA.PRO_BUDGET                      AS PRO_BUDGET
      ,MA.ROI                             AS ROI
      ,MA.PROJECT_REVENUE                 AS PROJECT_REVENUE
      ,MA.PROJECT_PM                      AS PROJECT_PM
      ,MA.PROJECT_NAME_CH                 AS PROJECT_NAME_CH
      ,MA.BG                              AS BG
      ,MA.BU                              AS BU
      ,MA.PROJECT_NAME                    AS PROJECT_NAME
      ,MA.PRODUCT_DESC                    AS PRODUCT_DESC
FROM STAGE.XXPLM_PROJECT MA  
;


TRUNCATE TABLE ODS.XXPLM_PROJECT;

INSERT /*+ append */ INTO ODS.XXPLM_PROJECT (
      DOCUMENT_NAME                           
      ,PRJ_STATUS                              
      ,PROJECTCODE_CREATOR                     
      ,PROJECTCODE_EFFECTIVE_DATE              
      ,PROJECTCODE_CREATE_DATE                 
      ,PRO_BUDGET                              
      ,ROI                                     
      ,PROJECT_REVENUE                         
      ,PROJECT_PM                              
      ,PROJECT_NAME_CH                         
      ,BG                                      
      ,BU                                      
      ,PROJECT_NAME                            
      ,PRODUCT_DESC                            
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.DOCUMENT_NAME                        
      ,MA.PRJ_STATUS                           
      ,MA.PROJECTCODE_CREATOR                  
      ,MA.PROJECTCODE_EFFECTIVE_DATE           
      ,MA.PROJECTCODE_CREATE_DATE              
      ,MA.PRO_BUDGET                           
      ,MA.ROI                                  
      ,MA.PROJECT_REVENUE                      
      ,MA.PROJECT_PM                           
      ,MA.PROJECT_NAME_CH                      
      ,MA.BG                                   
      ,MA.BU                                   
      ,MA.PROJECT_NAME                         
      ,MA.PRODUCT_DESC                         
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'XXPLM_PROJECT'                          
FROM ODS.XXPLM_PROJECT_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','XXPLM_PROJECT');



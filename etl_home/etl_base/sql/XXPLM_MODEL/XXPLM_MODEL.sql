
TRUNCATE TABLE ODS.XXPLM_MODEL_TP1;

INSERT /*+ append */ INTO ODS.XXPLM_MODEL_TP1 (
      MODEL_NO                                
      ,STAGE                                   
      ,MODEL_STATUS                            
      ,RELEASE_DATE                            
      ,PM_NAME                                 
      ,PM_EMPLID                               
      ,BG                                      
      ,BU                                      
      ,SUBBU                                   
      ,PRODUCT_LINE                            
      ,PROJECT_CODE                            
      ,PROJECT_NAME                            
      ,DEVELOPMENT_TYPE                        
      ,C4_RELEASE_DATE                         
      ,FINISHED_DATE                           
      ,C6_RELEASE_DATE                         
      ,EOL_STATUS                              
      ,FOR_AG                                  
      ,NRE_AMOUNT                              
      ,CREATION_DATE                           
      ,REVISION                                
      ,LIFECYCLE_STATE                         
      ,PRODUCT_TYPE                            
      ,ORG                                     
      ,REQUIRE_GP_DIRECTIVE                    
      ,PROJECT_GP_DIRECTIVE                    
      ,MODEL_GP_DIRECTIVE                      
)
      SELECT
       MA.MODEL_NO                        AS MODEL_NO
      ,MA.STAGE                           AS STAGE
      ,MA.MODEL_STATUS                    AS MODEL_STATUS
      ,MA.RELEASE_DATE                    AS RELEASE_DATE
      ,MA.PM_NAME                         AS PM_NAME
      ,MA.PM_EMPLID                       AS PM_EMPLID
      ,MA.BG                              AS BG
      ,MA.BU                              AS BU
      ,MA.SUBBU                           AS SUBBU
      ,MA.PRODUCT_LINE                    AS PRODUCT_LINE
      ,MA.PROJECT_CODE                    AS PROJECT_CODE
      ,MA.PROJECT_NAME                    AS PROJECT_NAME
      ,MA.DEVELOPMENT_TYPE                AS DEVELOPMENT_TYPE
      ,MA.C4_RELEASE_DATE                 AS C4_RELEASE_DATE
      ,MA.FINISHED_DATE                   AS FINISHED_DATE
      ,MA.C6_RELEASE_DATE                 AS C6_RELEASE_DATE
      ,MA.EOL_STATUS                      AS EOL_STATUS
      ,MA.FOR_AG                          AS FOR_AG
      ,MA.NRE_AMOUNT                      AS NRE_AMOUNT
      ,MA.CREATION_DATE                   AS CREATION_DATE
      ,MA.REVISION                        AS REVISION
      ,MA.LIFECYCLE_STATE                 AS LIFECYCLE_STATE
      ,MA.PRODUCT_TYPE                    AS PRODUCT_TYPE
      ,MA.ORG                             AS ORG
      ,MA.REQUIRE_GP_DIRECTIVE            AS REQUIRE_GP_DIRECTIVE
      ,MA.PROJECT_GP_DIRECTIVE            AS PROJECT_GP_DIRECTIVE
      ,MA.MODEL_GP_DIRECTIVE              AS MODEL_GP_DIRECTIVE
FROM STAGE.XXPLM_MODEL MA  
;


TRUNCATE TABLE ODS.XXPLM_MODEL;

INSERT /*+ append */ INTO ODS.XXPLM_MODEL (
      MODEL_NO                                
      ,STAGE                                   
      ,MODEL_STATUS                            
      ,RELEASE_DATE                            
      ,PM_NAME                                 
      ,PM_EMPLID                               
      ,BG                                      
      ,BU                                      
      ,SUBBU                                   
      ,PRODUCT_LINE                            
      ,PROJECT_CODE                            
      ,PROJECT_NAME                            
      ,DEVELOPMENT_TYPE                        
      ,C4_RELEASE_DATE                         
      ,FINISHED_DATE                           
      ,C6_RELEASE_DATE                         
      ,EOL_STATUS                              
      ,FOR_AG                                  
      ,NRE_AMOUNT                              
      ,CREATION_DATE                           
      ,REVISION                                
      ,LIFECYCLE_STATE                         
      ,PRODUCT_TYPE                            
      ,ORG                                     
      ,REQUIRE_GP_DIRECTIVE                    
      ,PROJECT_GP_DIRECTIVE                    
      ,MODEL_GP_DIRECTIVE                      
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.MODEL_NO                             
      ,MA.STAGE                                
      ,MA.MODEL_STATUS                         
      ,MA.RELEASE_DATE                         
      ,MA.PM_NAME                              
      ,MA.PM_EMPLID                            
      ,MA.BG                                   
      ,MA.BU                                   
      ,MA.SUBBU                                
      ,MA.PRODUCT_LINE                         
      ,MA.PROJECT_CODE                         
      ,MA.PROJECT_NAME                         
      ,MA.DEVELOPMENT_TYPE                     
      ,MA.C4_RELEASE_DATE                      
      ,MA.FINISHED_DATE                        
      ,MA.C6_RELEASE_DATE                      
      ,MA.EOL_STATUS                           
      ,MA.FOR_AG                               
      ,MA.NRE_AMOUNT                           
      ,MA.CREATION_DATE                        
      ,MA.REVISION                             
      ,MA.LIFECYCLE_STATE                      
      ,MA.PRODUCT_TYPE                         
      ,MA.ORG                                  
      ,MA.REQUIRE_GP_DIRECTIVE                 
      ,MA.PROJECT_GP_DIRECTIVE                 
      ,MA.MODEL_GP_DIRECTIVE                   
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'XXPLM_MODEL'                          
FROM ODS.XXPLM_MODEL_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','XXPLM_MODEL');



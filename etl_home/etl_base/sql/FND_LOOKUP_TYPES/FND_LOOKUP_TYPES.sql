
TRUNCATE TABLE ODS.FND_LOOKUP_TYPES_TP1;

INSERT /*+ append */ INTO ODS.FND_LOOKUP_TYPES_TP1 (
      APPLICATION_ID                          
      ,LOOKUP_TYPE                             
      ,CUSTOMIZATION_LEVEL                     
      ,CREATED_BY                              
      ,CREATION_DATE                           
      ,LAST_UPDATED_BY                         
      ,LAST_UPDATE_DATE                        
      ,LAST_UPDATE_LOGIN                       
      ,SECURITY_GROUP_ID                       
      ,VIEW_APPLICATION_ID                     
      ,ASSIGN_LEAF_ONLY                        
)
      SELECT
       MA.APPLICATION_ID                  AS APPLICATION_ID
      ,MA.LOOKUP_TYPE                     AS LOOKUP_TYPE
      ,MA.CUSTOMIZATION_LEVEL             AS CUSTOMIZATION_LEVEL
      ,MA.CREATED_BY                      AS CREATED_BY
      ,MA.CREATION_DATE                   AS CREATION_DATE
      ,MA.LAST_UPDATED_BY                 AS LAST_UPDATED_BY
      ,MA.LAST_UPDATE_DATE                AS LAST_UPDATE_DATE
      ,MA.LAST_UPDATE_LOGIN               AS LAST_UPDATE_LOGIN
      ,MA.SECURITY_GROUP_ID               AS SECURITY_GROUP_ID
      ,MA.VIEW_APPLICATION_ID             AS VIEW_APPLICATION_ID
      ,MA.ASSIGN_LEAF_ONLY                AS ASSIGN_LEAF_ONLY
FROM STAGE.FND_LOOKUP_TYPES MA  
;


TRUNCATE TABLE ODS.FND_LOOKUP_TYPES;

INSERT /*+ append */ INTO ODS.FND_LOOKUP_TYPES (
      APPLICATION_ID                          
      ,LOOKUP_TYPE                             
      ,CUSTOMIZATION_LEVEL                     
      ,CREATED_BY                              
      ,CREATION_DATE                           
      ,LAST_UPDATED_BY                         
      ,LAST_UPDATE_DATE                        
      ,LAST_UPDATE_LOGIN                       
      ,SECURITY_GROUP_ID                       
      ,VIEW_APPLICATION_ID                     
      ,ASSIGN_LEAF_ONLY                        
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.APPLICATION_ID                       
      ,MA.LOOKUP_TYPE                          
      ,MA.CUSTOMIZATION_LEVEL                  
      ,MA.CREATED_BY                           
      ,MA.CREATION_DATE                        
      ,MA.LAST_UPDATED_BY                      
      ,MA.LAST_UPDATE_DATE                     
      ,MA.LAST_UPDATE_LOGIN                    
      ,MA.SECURITY_GROUP_ID                    
      ,MA.VIEW_APPLICATION_ID                  
      ,MA.ASSIGN_LEAF_ONLY                     
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'FND_LOOKUP_TYPES'                          
FROM ODS.FND_LOOKUP_TYPES_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','FND_LOOKUP_TYPES');



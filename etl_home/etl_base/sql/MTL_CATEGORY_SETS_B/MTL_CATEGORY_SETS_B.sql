
TRUNCATE TABLE ODS.MTL_CATEGORY_SETS_B_TP1;

INSERT /*+ append */ INTO ODS.MTL_CATEGORY_SETS_B_TP1 (
      CATEGORY_SET_ID                         
      ,STRUCTURE_ID                            
      ,VALIDATE_FLAG                           
      ,CONTROL_LEVEL                           
      ,DEFAULT_CATEGORY_ID                     
      ,LAST_UPDATE_DATE                        
      ,LAST_UPDATED_BY                         
      ,CREATION_DATE                           
      ,CREATED_BY                              
      ,LAST_UPDATE_LOGIN                       
      ,REQUEST_ID                              
      ,PROGRAM_APPLICATION_ID                  
      ,PROGRAM_ID                              
      ,PROGRAM_UPDATE_DATE                     
      ,MULT_ITEM_CAT_ASSIGN_FLAG               
      ,CONTROL_LEVEL_UPDATEABLE_FLAG           
      ,MULT_ITEM_CAT_UPDATEABLE_FLAG           
      ,HIERARCHY_ENABLED                       
      ,VALIDATE_FLAG_UPDATEABLE_FLAG           
      ,USER_CREATION_ALLOWED_FLAG              
      ,RAISE_ITEM_CAT_ASSIGN_EVENT             
      ,RAISE_ALT_CAT_HIER_CHG_EVENT            
      ,RAISE_CATALOG_CAT_CHG_EVENT             
)
      SELECT
       MA.CATEGORY_SET_ID                 AS CATEGORY_SET_ID
      ,MA.STRUCTURE_ID                    AS STRUCTURE_ID
      ,MA.VALIDATE_FLAG                   AS VALIDATE_FLAG
      ,MA.CONTROL_LEVEL                   AS CONTROL_LEVEL
      ,MA.DEFAULT_CATEGORY_ID             AS DEFAULT_CATEGORY_ID
      ,MA.LAST_UPDATE_DATE                AS LAST_UPDATE_DATE
      ,MA.LAST_UPDATED_BY                 AS LAST_UPDATED_BY
      ,MA.CREATION_DATE                   AS CREATION_DATE
      ,MA.CREATED_BY                      AS CREATED_BY
      ,MA.LAST_UPDATE_LOGIN               AS LAST_UPDATE_LOGIN
      ,MA.REQUEST_ID                      AS REQUEST_ID
      ,MA.PROGRAM_APPLICATION_ID          AS PROGRAM_APPLICATION_ID
      ,MA.PROGRAM_ID                      AS PROGRAM_ID
      ,MA.PROGRAM_UPDATE_DATE             AS PROGRAM_UPDATE_DATE
      ,MA.MULT_ITEM_CAT_ASSIGN_FLAG       AS MULT_ITEM_CAT_ASSIGN_FLAG
      ,MA.CONTROL_LEVEL_UPDATEABLE_FLAG   AS CONTROL_LEVEL_UPDATEABLE_FLAG
      ,MA.MULT_ITEM_CAT_UPDATEABLE_FLAG   AS MULT_ITEM_CAT_UPDATEABLE_FLAG
      ,MA.HIERARCHY_ENABLED               AS HIERARCHY_ENABLED
      ,MA.VALIDATE_FLAG_UPDATEABLE_FLAG   AS VALIDATE_FLAG_UPDATEABLE_FLAG
      ,MA.USER_CREATION_ALLOWED_FLAG      AS USER_CREATION_ALLOWED_FLAG
      ,MA.RAISE_ITEM_CAT_ASSIGN_EVENT     AS RAISE_ITEM_CAT_ASSIGN_EVENT
      ,MA.RAISE_ALT_CAT_HIER_CHG_EVENT    AS RAISE_ALT_CAT_HIER_CHG_EVENT
      ,MA.RAISE_CATALOG_CAT_CHG_EVENT     AS RAISE_CATALOG_CAT_CHG_EVENT
FROM STAGE.MTL_CATEGORY_SETS_B MA  
;


TRUNCATE TABLE ODS.MTL_CATEGORY_SETS_B;

INSERT /*+ append */ INTO ODS.MTL_CATEGORY_SETS_B (
      CATEGORY_SET_ID                         
      ,STRUCTURE_ID                            
      ,VALIDATE_FLAG                           
      ,CONTROL_LEVEL                           
      ,DEFAULT_CATEGORY_ID                     
      ,LAST_UPDATE_DATE                        
      ,LAST_UPDATED_BY                         
      ,CREATION_DATE                           
      ,CREATED_BY                              
      ,LAST_UPDATE_LOGIN                       
      ,REQUEST_ID                              
      ,PROGRAM_APPLICATION_ID                  
      ,PROGRAM_ID                              
      ,PROGRAM_UPDATE_DATE                     
      ,MULT_ITEM_CAT_ASSIGN_FLAG               
      ,CONTROL_LEVEL_UPDATEABLE_FLAG           
      ,MULT_ITEM_CAT_UPDATEABLE_FLAG           
      ,HIERARCHY_ENABLED                       
      ,VALIDATE_FLAG_UPDATEABLE_FLAG           
      ,USER_CREATION_ALLOWED_FLAG              
      ,RAISE_ITEM_CAT_ASSIGN_EVENT             
      ,RAISE_ALT_CAT_HIER_CHG_EVENT            
      ,RAISE_CATALOG_CAT_CHG_EVENT             
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.CATEGORY_SET_ID                      
      ,MA.STRUCTURE_ID                         
      ,MA.VALIDATE_FLAG                        
      ,MA.CONTROL_LEVEL                        
      ,MA.DEFAULT_CATEGORY_ID                  
      ,MA.LAST_UPDATE_DATE                     
      ,MA.LAST_UPDATED_BY                      
      ,MA.CREATION_DATE                        
      ,MA.CREATED_BY                           
      ,MA.LAST_UPDATE_LOGIN                    
      ,MA.REQUEST_ID                           
      ,MA.PROGRAM_APPLICATION_ID               
      ,MA.PROGRAM_ID                           
      ,MA.PROGRAM_UPDATE_DATE                  
      ,MA.MULT_ITEM_CAT_ASSIGN_FLAG            
      ,MA.CONTROL_LEVEL_UPDATEABLE_FLAG        
      ,MA.MULT_ITEM_CAT_UPDATEABLE_FLAG        
      ,MA.HIERARCHY_ENABLED                    
      ,MA.VALIDATE_FLAG_UPDATEABLE_FLAG        
      ,MA.USER_CREATION_ALLOWED_FLAG           
      ,MA.RAISE_ITEM_CAT_ASSIGN_EVENT          
      ,MA.RAISE_ALT_CAT_HIER_CHG_EVENT         
      ,MA.RAISE_CATALOG_CAT_CHG_EVENT          
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'MTL_CATEGORY_SETS_B'                          
FROM ODS.MTL_CATEGORY_SETS_B_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','MTL_CATEGORY_SETS_B');



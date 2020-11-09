
TRUNCATE TABLE ODS.MTL_ITEM_CATEGORIES_TP1;

INSERT /*+ append */ INTO ODS.MTL_ITEM_CATEGORIES_TP1 (
      INVENTORY_ITEM_ID                       
      ,ORGANIZATION_ID                         
      ,CATEGORY_SET_ID                         
      ,CATEGORY_ID                             
      ,LAST_UPDATE_DATE                        
      ,LAST_UPDATED_BY                         
      ,CREATION_DATE                           
      ,CREATED_BY                              
      ,LAST_UPDATE_LOGIN                       
      ,REQUEST_ID                              
      ,PROGRAM_APPLICATION_ID                  
      ,PROGRAM_ID                              
      ,PROGRAM_UPDATE_DATE                     
      ,WH_UPDATE_DATE                          
)
      SELECT
       MA.INVENTORY_ITEM_ID               AS INVENTORY_ITEM_ID
      ,MA.ORGANIZATION_ID                 AS ORGANIZATION_ID
      ,MA.CATEGORY_SET_ID                 AS CATEGORY_SET_ID
      ,MA.CATEGORY_ID                     AS CATEGORY_ID
      ,MA.LAST_UPDATE_DATE                AS LAST_UPDATE_DATE
      ,MA.LAST_UPDATED_BY                 AS LAST_UPDATED_BY
      ,MA.CREATION_DATE                   AS CREATION_DATE
      ,MA.CREATED_BY                      AS CREATED_BY
      ,MA.LAST_UPDATE_LOGIN               AS LAST_UPDATE_LOGIN
      ,MA.REQUEST_ID                      AS REQUEST_ID
      ,MA.PROGRAM_APPLICATION_ID          AS PROGRAM_APPLICATION_ID
      ,MA.PROGRAM_ID                      AS PROGRAM_ID
      ,MA.PROGRAM_UPDATE_DATE             AS PROGRAM_UPDATE_DATE
      ,MA.WH_UPDATE_DATE                  AS WH_UPDATE_DATE
FROM STAGE.MTL_ITEM_CATEGORIES MA  
;


TRUNCATE TABLE ODS.MTL_ITEM_CATEGORIES;

INSERT /*+ append */ INTO ODS.MTL_ITEM_CATEGORIES (
      INVENTORY_ITEM_ID                       
      ,ORGANIZATION_ID                         
      ,CATEGORY_SET_ID                         
      ,CATEGORY_ID                             
      ,LAST_UPDATE_DATE                        
      ,LAST_UPDATED_BY                         
      ,CREATION_DATE                           
      ,CREATED_BY                              
      ,LAST_UPDATE_LOGIN                       
      ,REQUEST_ID                              
      ,PROGRAM_APPLICATION_ID                  
      ,PROGRAM_ID                              
      ,PROGRAM_UPDATE_DATE                     
      ,WH_UPDATE_DATE                          
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.INVENTORY_ITEM_ID                    
      ,MA.ORGANIZATION_ID                      
      ,MA.CATEGORY_SET_ID                      
      ,MA.CATEGORY_ID                          
      ,MA.LAST_UPDATE_DATE                     
      ,MA.LAST_UPDATED_BY                      
      ,MA.CREATION_DATE                        
      ,MA.CREATED_BY                           
      ,MA.LAST_UPDATE_LOGIN                    
      ,MA.REQUEST_ID                           
      ,MA.PROGRAM_APPLICATION_ID               
      ,MA.PROGRAM_ID                           
      ,MA.PROGRAM_UPDATE_DATE                  
      ,MA.WH_UPDATE_DATE                       
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'MTL_ITEM_CATEGORIES'                          
FROM ODS.MTL_ITEM_CATEGORIES_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','MTL_ITEM_CATEGORIES');



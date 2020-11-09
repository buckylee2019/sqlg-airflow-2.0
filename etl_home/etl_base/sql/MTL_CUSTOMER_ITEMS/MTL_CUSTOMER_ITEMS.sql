
TRUNCATE TABLE ODS.MTL_CUSTOMER_ITEMS_TP1;

INSERT /*+ append */ INTO ODS.MTL_CUSTOMER_ITEMS_TP1 (
      CUSTOMER_ITEM_ID                        
      ,LAST_UPDATED_BY                         
      ,LAST_UPDATE_DATE                        
      ,LAST_UPDATE_LOGIN                       
      ,CREATED_BY                              
      ,CREATION_DATE                           
      ,REQUEST_ID                              
      ,PROGRAM_APPLICATION_ID                  
      ,PROGRAM_ID                              
      ,PROGRAM_UPDATE_DATE                     
      ,CUSTOMER_ID                             
      ,CUSTOMER_CATEGORY_CODE                  
      ,ADDRESS_ID                              
      ,CUSTOMER_ITEM_NUMBER                    
      ,ITEM_DEFINITION_LEVEL                   
      ,CUSTOMER_ITEM_DESC                      
      ,MODEL_CUSTOMER_ITEM_ID                  
      ,COMMODITY_CODE_ID                       
      ,MASTER_CONTAINER_ITEM_ID                
      ,CONTAINER_ITEM_ORG_ID                   
      ,DETAIL_CONTAINER_ITEM_ID                
      ,MIN_FILL_PERCENTAGE                     
      ,DEP_PLAN_REQUIRED_FLAG                  
      ,DEP_PLAN_PRIOR_BLD_FLAG                 
      ,INACTIVE_FLAG                           
      ,ATTRIBUTE_CATEGORY                      
      ,ATTRIBUTE1                              
      ,ATTRIBUTE2                              
      ,ATTRIBUTE3                              
      ,ATTRIBUTE4                              
      ,ATTRIBUTE5                              
      ,ATTRIBUTE6                              
      ,ATTRIBUTE7                              
      ,ATTRIBUTE8                              
      ,ATTRIBUTE9                              
      ,ATTRIBUTE10                             
      ,ATTRIBUTE11                             
      ,ATTRIBUTE12                             
      ,ATTRIBUTE13                             
      ,ATTRIBUTE14                             
      ,ATTRIBUTE15                             
      ,DEMAND_TOLERANCE_POSITIVE               
      ,DEMAND_TOLERANCE_NEGATIVE               
)
      SELECT
       MA.CUSTOMER_ITEM_ID                AS CUSTOMER_ITEM_ID
      ,MA.LAST_UPDATED_BY                 AS LAST_UPDATED_BY
      ,MA.LAST_UPDATE_DATE                AS LAST_UPDATE_DATE
      ,MA.LAST_UPDATE_LOGIN               AS LAST_UPDATE_LOGIN
      ,MA.CREATED_BY                      AS CREATED_BY
      ,MA.CREATION_DATE                   AS CREATION_DATE
      ,MA.REQUEST_ID                      AS REQUEST_ID
      ,MA.PROGRAM_APPLICATION_ID          AS PROGRAM_APPLICATION_ID
      ,MA.PROGRAM_ID                      AS PROGRAM_ID
      ,MA.PROGRAM_UPDATE_DATE             AS PROGRAM_UPDATE_DATE
      ,MA.CUSTOMER_ID                     AS CUSTOMER_ID
      ,MA.CUSTOMER_CATEGORY_CODE          AS CUSTOMER_CATEGORY_CODE
      ,MA.ADDRESS_ID                      AS ADDRESS_ID
      ,MA.CUSTOMER_ITEM_NUMBER            AS CUSTOMER_ITEM_NUMBER
      ,MA.ITEM_DEFINITION_LEVEL           AS ITEM_DEFINITION_LEVEL
      ,MA.CUSTOMER_ITEM_DESC              AS CUSTOMER_ITEM_DESC
      ,MA.MODEL_CUSTOMER_ITEM_ID          AS MODEL_CUSTOMER_ITEM_ID
      ,MA.COMMODITY_CODE_ID               AS COMMODITY_CODE_ID
      ,MA.MASTER_CONTAINER_ITEM_ID        AS MASTER_CONTAINER_ITEM_ID
      ,MA.CONTAINER_ITEM_ORG_ID           AS CONTAINER_ITEM_ORG_ID
      ,MA.DETAIL_CONTAINER_ITEM_ID        AS DETAIL_CONTAINER_ITEM_ID
      ,MA.MIN_FILL_PERCENTAGE             AS MIN_FILL_PERCENTAGE
      ,MA.DEP_PLAN_REQUIRED_FLAG          AS DEP_PLAN_REQUIRED_FLAG
      ,MA.DEP_PLAN_PRIOR_BLD_FLAG         AS DEP_PLAN_PRIOR_BLD_FLAG
      ,MA.INACTIVE_FLAG                   AS INACTIVE_FLAG
      ,MA.ATTRIBUTE_CATEGORY              AS ATTRIBUTE_CATEGORY
      ,MA.ATTRIBUTE1                      AS ATTRIBUTE1
      ,MA.ATTRIBUTE2                      AS ATTRIBUTE2
      ,MA.ATTRIBUTE3                      AS ATTRIBUTE3
      ,MA.ATTRIBUTE4                      AS ATTRIBUTE4
      ,MA.ATTRIBUTE5                      AS ATTRIBUTE5
      ,MA.ATTRIBUTE6                      AS ATTRIBUTE6
      ,MA.ATTRIBUTE7                      AS ATTRIBUTE7
      ,MA.ATTRIBUTE8                      AS ATTRIBUTE8
      ,MA.ATTRIBUTE9                      AS ATTRIBUTE9
      ,MA.ATTRIBUTE10                     AS ATTRIBUTE10
      ,MA.ATTRIBUTE11                     AS ATTRIBUTE11
      ,MA.ATTRIBUTE12                     AS ATTRIBUTE12
      ,MA.ATTRIBUTE13                     AS ATTRIBUTE13
      ,MA.ATTRIBUTE14                     AS ATTRIBUTE14
      ,MA.ATTRIBUTE15                     AS ATTRIBUTE15
      ,MA.DEMAND_TOLERANCE_POSITIVE       AS DEMAND_TOLERANCE_POSITIVE
      ,MA.DEMAND_TOLERANCE_NEGATIVE       AS DEMAND_TOLERANCE_NEGATIVE
FROM STAGE.MTL_CUSTOMER_ITEMS MA  
;


TRUNCATE TABLE ODS.MTL_CUSTOMER_ITEMS;

INSERT /*+ append */ INTO ODS.MTL_CUSTOMER_ITEMS (
      CUSTOMER_ITEM_ID                        
      ,LAST_UPDATED_BY                         
      ,LAST_UPDATE_DATE                        
      ,LAST_UPDATE_LOGIN                       
      ,CREATED_BY                              
      ,CREATION_DATE                           
      ,REQUEST_ID                              
      ,PROGRAM_APPLICATION_ID                  
      ,PROGRAM_ID                              
      ,PROGRAM_UPDATE_DATE                     
      ,CUSTOMER_ID                             
      ,CUSTOMER_CATEGORY_CODE                  
      ,ADDRESS_ID                              
      ,CUSTOMER_ITEM_NUMBER                    
      ,ITEM_DEFINITION_LEVEL                   
      ,CUSTOMER_ITEM_DESC                      
      ,MODEL_CUSTOMER_ITEM_ID                  
      ,COMMODITY_CODE_ID                       
      ,MASTER_CONTAINER_ITEM_ID                
      ,CONTAINER_ITEM_ORG_ID                   
      ,DETAIL_CONTAINER_ITEM_ID                
      ,MIN_FILL_PERCENTAGE                     
      ,DEP_PLAN_REQUIRED_FLAG                  
      ,DEP_PLAN_PRIOR_BLD_FLAG                 
      ,INACTIVE_FLAG                           
      ,ATTRIBUTE_CATEGORY                      
      ,ATTRIBUTE1                              
      ,ATTRIBUTE2                              
      ,ATTRIBUTE3                              
      ,ATTRIBUTE4                              
      ,ATTRIBUTE5                              
      ,ATTRIBUTE6                              
      ,ATTRIBUTE7                              
      ,ATTRIBUTE8                              
      ,ATTRIBUTE9                              
      ,ATTRIBUTE10                             
      ,ATTRIBUTE11                             
      ,ATTRIBUTE12                             
      ,ATTRIBUTE13                             
      ,ATTRIBUTE14                             
      ,ATTRIBUTE15                             
      ,DEMAND_TOLERANCE_POSITIVE               
      ,DEMAND_TOLERANCE_NEGATIVE               
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.CUSTOMER_ITEM_ID                     
      ,MA.LAST_UPDATED_BY                      
      ,MA.LAST_UPDATE_DATE                     
      ,MA.LAST_UPDATE_LOGIN                    
      ,MA.CREATED_BY                           
      ,MA.CREATION_DATE                        
      ,MA.REQUEST_ID                           
      ,MA.PROGRAM_APPLICATION_ID               
      ,MA.PROGRAM_ID                           
      ,MA.PROGRAM_UPDATE_DATE                  
      ,MA.CUSTOMER_ID                          
      ,MA.CUSTOMER_CATEGORY_CODE               
      ,MA.ADDRESS_ID                           
      ,MA.CUSTOMER_ITEM_NUMBER                 
      ,MA.ITEM_DEFINITION_LEVEL                
      ,MA.CUSTOMER_ITEM_DESC                   
      ,MA.MODEL_CUSTOMER_ITEM_ID               
      ,MA.COMMODITY_CODE_ID                    
      ,MA.MASTER_CONTAINER_ITEM_ID             
      ,MA.CONTAINER_ITEM_ORG_ID                
      ,MA.DETAIL_CONTAINER_ITEM_ID             
      ,MA.MIN_FILL_PERCENTAGE                  
      ,MA.DEP_PLAN_REQUIRED_FLAG               
      ,MA.DEP_PLAN_PRIOR_BLD_FLAG              
      ,MA.INACTIVE_FLAG                        
      ,MA.ATTRIBUTE_CATEGORY                   
      ,MA.ATTRIBUTE1                           
      ,MA.ATTRIBUTE2                           
      ,MA.ATTRIBUTE3                           
      ,MA.ATTRIBUTE4                           
      ,MA.ATTRIBUTE5                           
      ,MA.ATTRIBUTE6                           
      ,MA.ATTRIBUTE7                           
      ,MA.ATTRIBUTE8                           
      ,MA.ATTRIBUTE9                           
      ,MA.ATTRIBUTE10                          
      ,MA.ATTRIBUTE11                          
      ,MA.ATTRIBUTE12                          
      ,MA.ATTRIBUTE13                          
      ,MA.ATTRIBUTE14                          
      ,MA.ATTRIBUTE15                          
      ,MA.DEMAND_TOLERANCE_POSITIVE            
      ,MA.DEMAND_TOLERANCE_NEGATIVE            
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'MTL_CUSTOMER_ITEMS'                          
FROM ODS.MTL_CUSTOMER_ITEMS_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','MTL_CUSTOMER_ITEMS');




TRUNCATE TABLE ODS.MTL_ITEM_STATUS_TL_TP1;

INSERT /*+ append */ INTO ODS.MTL_ITEM_STATUS_TL_TP1 (
      INVENTORY_ITEM_STATUS_CODE              
      ,LAST_UPDATE_DATE                        
      ,LAST_UPDATED_BY                         
      ,CREATION_DATE                           
      ,CREATED_BY                              
      ,LAST_UPDATE_LOGIN                       
      ,DESCRIPTION                             
      ,DISABLE_DATE                            
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
      ,REQUEST_ID                              
      ,PROGRAM_APPLICATION_ID                  
      ,PROGRAM_ID                              
      ,PROGRAM_UPDATE_DATE                     
      ,SOURCE_LANG                             
      ,INVENTORY_ITEM_STATUS_CODE_TL           
      ,LANGUAGE                                
)
      SELECT
       MA.INVENTORY_ITEM_STATUS_CODE      AS INVENTORY_ITEM_STATUS_CODE
      ,MA.LAST_UPDATE_DATE                AS LAST_UPDATE_DATE
      ,MA.LAST_UPDATED_BY                 AS LAST_UPDATED_BY
      ,MA.CREATION_DATE                   AS CREATION_DATE
      ,MA.CREATED_BY                      AS CREATED_BY
      ,MA.LAST_UPDATE_LOGIN               AS LAST_UPDATE_LOGIN
      ,MA.DESCRIPTION                     AS DESCRIPTION
      ,MA.DISABLE_DATE                    AS DISABLE_DATE
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
      ,MA.REQUEST_ID                      AS REQUEST_ID
      ,MA.PROGRAM_APPLICATION_ID          AS PROGRAM_APPLICATION_ID
      ,MA.PROGRAM_ID                      AS PROGRAM_ID
      ,MA.PROGRAM_UPDATE_DATE             AS PROGRAM_UPDATE_DATE
      ,MA.SOURCE_LANG                     AS SOURCE_LANG
      ,MA.INVENTORY_ITEM_STATUS_CODE_TL   AS INVENTORY_ITEM_STATUS_CODE_TL
      ,MA.LANGUAGE                        AS LANGUAGE
FROM STAGE.MTL_ITEM_STATUS_TL MA  
;


TRUNCATE TABLE ODS.MTL_ITEM_STATUS_TL;

INSERT /*+ append */ INTO ODS.MTL_ITEM_STATUS_TL (
      INVENTORY_ITEM_STATUS_CODE              
      ,LAST_UPDATE_DATE                        
      ,LAST_UPDATED_BY                         
      ,CREATION_DATE                           
      ,CREATED_BY                              
      ,LAST_UPDATE_LOGIN                       
      ,DESCRIPTION                             
      ,DISABLE_DATE                            
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
      ,REQUEST_ID                              
      ,PROGRAM_APPLICATION_ID                  
      ,PROGRAM_ID                              
      ,PROGRAM_UPDATE_DATE                     
      ,SOURCE_LANG                             
      ,INVENTORY_ITEM_STATUS_CODE_TL           
      ,LANGUAGE                                
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.INVENTORY_ITEM_STATUS_CODE           
      ,MA.LAST_UPDATE_DATE                     
      ,MA.LAST_UPDATED_BY                      
      ,MA.CREATION_DATE                        
      ,MA.CREATED_BY                           
      ,MA.LAST_UPDATE_LOGIN                    
      ,MA.DESCRIPTION                          
      ,MA.DISABLE_DATE                         
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
      ,MA.REQUEST_ID                           
      ,MA.PROGRAM_APPLICATION_ID               
      ,MA.PROGRAM_ID                           
      ,MA.PROGRAM_UPDATE_DATE                  
      ,MA.SOURCE_LANG                          
      ,MA.INVENTORY_ITEM_STATUS_CODE_TL        
      ,MA.LANGUAGE                             
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'MTL_ITEM_STATUS_TL'                          
FROM ODS.MTL_ITEM_STATUS_TL_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','MTL_ITEM_STATUS_TL');



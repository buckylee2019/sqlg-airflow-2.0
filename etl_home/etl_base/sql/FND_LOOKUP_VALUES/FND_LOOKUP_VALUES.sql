
TRUNCATE TABLE ODS.FND_LOOKUP_VALUES_TP1;

INSERT /*+ append */ INTO ODS.FND_LOOKUP_VALUES_TP1 (
      LOOKUP_TYPE                             
      ,LANGUAGE                                
      ,LOOKUP_CODE                             
      ,MEANING                                 
      ,DESCRIPTION                             
      ,ENABLED_FLAG                            
      ,START_DATE_ACTIVE                       
      ,END_DATE_ACTIVE                         
      ,CREATED_BY                              
      ,CREATION_DATE                           
      ,LAST_UPDATED_BY                         
      ,LAST_UPDATE_LOGIN                       
      ,LAST_UPDATE_DATE                        
      ,SOURCE_LANG                             
      ,SECURITY_GROUP_ID                       
      ,VIEW_APPLICATION_ID                     
      ,TERRITORY_CODE                          
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
      ,TAG                                     
      ,LEAF_NODE                               
)
      SELECT
       MA.LOOKUP_TYPE                     AS LOOKUP_TYPE
      ,MA.LANGUAGE                        AS LANGUAGE
      ,MA.LOOKUP_CODE                     AS LOOKUP_CODE
      ,MA.MEANING                         AS MEANING
      ,MA.DESCRIPTION                     AS DESCRIPTION
      ,MA.ENABLED_FLAG                    AS ENABLED_FLAG
      ,MA.START_DATE_ACTIVE               AS START_DATE_ACTIVE
      ,MA.END_DATE_ACTIVE                 AS END_DATE_ACTIVE
      ,MA.CREATED_BY                      AS CREATED_BY
      ,MA.CREATION_DATE                   AS CREATION_DATE
      ,MA.LAST_UPDATED_BY                 AS LAST_UPDATED_BY
      ,MA.LAST_UPDATE_LOGIN               AS LAST_UPDATE_LOGIN
      ,MA.LAST_UPDATE_DATE                AS LAST_UPDATE_DATE
      ,MA.SOURCE_LANG                     AS SOURCE_LANG
      ,MA.SECURITY_GROUP_ID               AS SECURITY_GROUP_ID
      ,MA.VIEW_APPLICATION_ID             AS VIEW_APPLICATION_ID
      ,MA.TERRITORY_CODE                  AS TERRITORY_CODE
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
      ,MA.TAG                             AS TAG
      ,MA.LEAF_NODE                       AS LEAF_NODE
FROM STAGE.FND_LOOKUP_VALUES MA  
;


TRUNCATE TABLE ODS.FND_LOOKUP_VALUES;

INSERT /*+ append */ INTO ODS.FND_LOOKUP_VALUES (
      LOOKUP_TYPE                             
      ,LANGUAGE                                
      ,LOOKUP_CODE                             
      ,MEANING                                 
      ,DESCRIPTION                             
      ,ENABLED_FLAG                            
      ,START_DATE_ACTIVE                       
      ,END_DATE_ACTIVE                         
      ,CREATED_BY                              
      ,CREATION_DATE                           
      ,LAST_UPDATED_BY                         
      ,LAST_UPDATE_LOGIN                       
      ,LAST_UPDATE_DATE                        
      ,SOURCE_LANG                             
      ,SECURITY_GROUP_ID                       
      ,VIEW_APPLICATION_ID                     
      ,TERRITORY_CODE                          
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
      ,TAG                                     
      ,LEAF_NODE                               
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.LOOKUP_TYPE                          
      ,MA.LANGUAGE                             
      ,MA.LOOKUP_CODE                          
      ,MA.MEANING                              
      ,MA.DESCRIPTION                          
      ,MA.ENABLED_FLAG                         
      ,MA.START_DATE_ACTIVE                    
      ,MA.END_DATE_ACTIVE                      
      ,MA.CREATED_BY                           
      ,MA.CREATION_DATE                        
      ,MA.LAST_UPDATED_BY                      
      ,MA.LAST_UPDATE_LOGIN                    
      ,MA.LAST_UPDATE_DATE                     
      ,MA.SOURCE_LANG                          
      ,MA.SECURITY_GROUP_ID                    
      ,MA.VIEW_APPLICATION_ID                  
      ,MA.TERRITORY_CODE                       
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
      ,MA.TAG                                  
      ,MA.LEAF_NODE                            
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'FND_LOOKUP_VALUES'                          
FROM ODS.FND_LOOKUP_VALUES_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','FND_LOOKUP_VALUES');




TRUNCATE TABLE ODS.FND_COLUMNS_TP1;

INSERT  INTO ODS.FND_COLUMNS_TP1 (
      APPLICATION_ID                          
      ,TABLE_ID                                
      ,COLUMN_ID                               
      ,COLUMN_NAME                             
      ,USER_COLUMN_NAME                        
      ,COLUMN_SEQUENCE                         
      ,LAST_UPDATE_DATE                        
      ,LAST_UPDATED_BY                         
      ,CREATION_DATE                           
      ,CREATED_BY                              
      ,LAST_UPDATE_LOGIN                       
      ,COLUMN_TYPE                             
      ,WIDTH                                   
      ,NULL_ALLOWED_FLAG                       
      ,TRANSLATE_FLAG                          
      ,FLEXFIELD_USAGE_CODE                    
      ,DESCRIPTION                             
      ,FLEXFIELD_APPLICATION_ID                
      ,FLEXFIELD_NAME                          
      ,FLEX_VALUE_SET_APPLICATION_ID           
      ,FLEX_VALUE_SET_ID                       
      ,DEFAULT_VALUE                           
      ,PRECISION                               
      ,SCALE                                   
      ,IREP_COMMENTS                           
)
      SELECT
       MA.APPLICATION_ID                  AS APPLICATION_ID
      ,MA.TABLE_ID                        AS TABLE_ID
      ,MA.COLUMN_ID                       AS COLUMN_ID
      ,MA.COLUMN_NAME                     AS COLUMN_NAME
      ,MA.USER_COLUMN_NAME                AS USER_COLUMN_NAME
      ,MA.COLUMN_SEQUENCE                 AS COLUMN_SEQUENCE
      ,MA.LAST_UPDATE_DATE                AS LAST_UPDATE_DATE
      ,MA.LAST_UPDATED_BY                 AS LAST_UPDATED_BY
      ,MA.CREATION_DATE                   AS CREATION_DATE
      ,MA.CREATED_BY                      AS CREATED_BY
      ,MA.LAST_UPDATE_LOGIN               AS LAST_UPDATE_LOGIN
      ,MA.COLUMN_TYPE                     AS COLUMN_TYPE
      ,MA.WIDTH                           AS WIDTH
      ,MA.NULL_ALLOWED_FLAG               AS NULL_ALLOWED_FLAG
      ,MA.TRANSLATE_FLAG                  AS TRANSLATE_FLAG
      ,MA.FLEXFIELD_USAGE_CODE            AS FLEXFIELD_USAGE_CODE
      ,MA.DESCRIPTION                     AS DESCRIPTION
      ,MA.FLEXFIELD_APPLICATION_ID        AS FLEXFIELD_APPLICATION_ID
      ,MA.FLEXFIELD_NAME                  AS FLEXFIELD_NAME
      ,MA.FLEX_VALUE_SET_APPLICATION_ID   AS FLEX_VALUE_SET_APPLICATION_ID
      ,MA.FLEX_VALUE_SET_ID               AS FLEX_VALUE_SET_ID
      ,MA.DEFAULT_VALUE                   AS DEFAULT_VALUE
      ,MA.PRECISION                       AS PRECISION
      ,MA.SCALE                           AS SCALE
      ,MA.IREP_COMMENTS                   AS IREP_COMMENTS
FROM STAGE.FND_COLUMNS MA  
;


TRUNCATE TABLE ODS.FND_COLUMNS;

INSERT  INTO ODS.FND_COLUMNS (
      APPLICATION_ID                          
      ,TABLE_ID                                
      ,COLUMN_ID                               
      ,COLUMN_NAME                             
      ,USER_COLUMN_NAME                        
      ,COLUMN_SEQUENCE                         
      ,LAST_UPDATE_DATE                        
      ,LAST_UPDATED_BY                         
      ,CREATION_DATE                           
      ,CREATED_BY                              
      ,LAST_UPDATE_LOGIN                       
      ,COLUMN_TYPE                             
      ,WIDTH                                   
      ,NULL_ALLOWED_FLAG                       
      ,TRANSLATE_FLAG                          
      ,FLEXFIELD_USAGE_CODE                    
      ,DESCRIPTION                             
      ,FLEXFIELD_APPLICATION_ID                
      ,FLEXFIELD_NAME                          
      ,FLEX_VALUE_SET_APPLICATION_ID           
      ,FLEX_VALUE_SET_ID                       
      ,DEFAULT_VALUE                           
      ,PRECISION                               
      ,SCALE                                   
      ,IREP_COMMENTS                           
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.APPLICATION_ID                       
      ,MA.TABLE_ID                             
      ,MA.COLUMN_ID                            
      ,MA.COLUMN_NAME                          
      ,MA.USER_COLUMN_NAME                     
      ,MA.COLUMN_SEQUENCE                      
      ,MA.LAST_UPDATE_DATE                     
      ,MA.LAST_UPDATED_BY                      
      ,MA.CREATION_DATE                        
      ,MA.CREATED_BY                           
      ,MA.LAST_UPDATE_LOGIN                    
      ,MA.COLUMN_TYPE                          
      ,MA.WIDTH                                
      ,MA.NULL_ALLOWED_FLAG                    
      ,MA.TRANSLATE_FLAG                       
      ,MA.FLEXFIELD_USAGE_CODE                 
      ,MA.DESCRIPTION                          
      ,MA.FLEXFIELD_APPLICATION_ID             
      ,MA.FLEXFIELD_NAME                       
      ,MA.FLEX_VALUE_SET_APPLICATION_ID        
      ,MA.FLEX_VALUE_SET_ID                    
      ,MA.DEFAULT_VALUE                        
      ,MA.PRECISION                            
      ,MA.SCALE                                
      ,MA.IREP_COMMENTS                        
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'FND_COLUMNS'                          
FROM ODS.FND_COLUMNS_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','FND_COLUMNS');



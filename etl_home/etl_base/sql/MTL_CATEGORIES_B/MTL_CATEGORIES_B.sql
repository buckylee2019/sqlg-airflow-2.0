
TRUNCATE TABLE ODS.MTL_CATEGORIES_B_TP1;

INSERT /*+ append */ INTO ODS.MTL_CATEGORIES_B_TP1 (
      CATEGORY_ID                             
      ,STRUCTURE_ID                            
      ,DESCRIPTION                             
      ,DISABLE_DATE                            
      ,SEGMENT1                                
      ,SEGMENT2                                
      ,SEGMENT3                                
      ,SEGMENT4                                
      ,SEGMENT5                                
      ,SEGMENT6                                
      ,SEGMENT7                                
      ,SEGMENT8                                
      ,SEGMENT9                                
      ,SEGMENT10                               
      ,SEGMENT11                               
      ,SEGMENT12                               
      ,SEGMENT13                               
      ,SEGMENT14                               
      ,SEGMENT15                               
      ,SEGMENT16                               
      ,SEGMENT17                               
      ,SEGMENT18                               
      ,SEGMENT19                               
      ,SEGMENT20                               
      ,SUMMARY_FLAG                            
      ,ENABLED_FLAG                            
      ,START_DATE_ACTIVE                       
      ,END_DATE_ACTIVE                         
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
      ,LAST_UPDATE_DATE                        
      ,LAST_UPDATED_BY                         
      ,CREATION_DATE                           
      ,CREATED_BY                              
      ,LAST_UPDATE_LOGIN                       
      ,REQUEST_ID                              
      ,PROGRAM_APPLICATION_ID                  
      ,PROGRAM_ID                              
      ,PROGRAM_UPDATE_DATE                     
      ,WEB_STATUS                              
      ,SUPPLIER_ENABLED_FLAG                   
)
      SELECT
       MA.CATEGORY_ID                     AS CATEGORY_ID
      ,MA.STRUCTURE_ID                    AS STRUCTURE_ID
      ,MA.DESCRIPTION                     AS DESCRIPTION
      ,MA.DISABLE_DATE                    AS DISABLE_DATE
      ,MA.SEGMENT1                        AS SEGMENT1
      ,MA.SEGMENT2                        AS SEGMENT2
      ,MA.SEGMENT3                        AS SEGMENT3
      ,MA.SEGMENT4                        AS SEGMENT4
      ,MA.SEGMENT5                        AS SEGMENT5
      ,MA.SEGMENT6                        AS SEGMENT6
      ,MA.SEGMENT7                        AS SEGMENT7
      ,MA.SEGMENT8                        AS SEGMENT8
      ,MA.SEGMENT9                        AS SEGMENT9
      ,MA.SEGMENT10                       AS SEGMENT10
      ,MA.SEGMENT11                       AS SEGMENT11
      ,MA.SEGMENT12                       AS SEGMENT12
      ,MA.SEGMENT13                       AS SEGMENT13
      ,MA.SEGMENT14                       AS SEGMENT14
      ,MA.SEGMENT15                       AS SEGMENT15
      ,MA.SEGMENT16                       AS SEGMENT16
      ,MA.SEGMENT17                       AS SEGMENT17
      ,MA.SEGMENT18                       AS SEGMENT18
      ,MA.SEGMENT19                       AS SEGMENT19
      ,MA.SEGMENT20                       AS SEGMENT20
      ,MA.SUMMARY_FLAG                    AS SUMMARY_FLAG
      ,MA.ENABLED_FLAG                    AS ENABLED_FLAG
      ,MA.START_DATE_ACTIVE               AS START_DATE_ACTIVE
      ,MA.END_DATE_ACTIVE                 AS END_DATE_ACTIVE
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
      ,MA.LAST_UPDATE_DATE                AS LAST_UPDATE_DATE
      ,MA.LAST_UPDATED_BY                 AS LAST_UPDATED_BY
      ,MA.CREATION_DATE                   AS CREATION_DATE
      ,MA.CREATED_BY                      AS CREATED_BY
      ,MA.LAST_UPDATE_LOGIN               AS LAST_UPDATE_LOGIN
      ,MA.REQUEST_ID                      AS REQUEST_ID
      ,MA.PROGRAM_APPLICATION_ID          AS PROGRAM_APPLICATION_ID
      ,MA.PROGRAM_ID                      AS PROGRAM_ID
      ,MA.PROGRAM_UPDATE_DATE             AS PROGRAM_UPDATE_DATE
      ,MA.WEB_STATUS                      AS WEB_STATUS
      ,MA.SUPPLIER_ENABLED_FLAG           AS SUPPLIER_ENABLED_FLAG
FROM STAGE.MTL_CATEGORIES_B MA  
;


TRUNCATE TABLE ODS.MTL_CATEGORIES_B;

INSERT /*+ append */ INTO ODS.MTL_CATEGORIES_B (
      CATEGORY_ID                             
      ,STRUCTURE_ID                            
      ,DESCRIPTION                             
      ,DISABLE_DATE                            
      ,SEGMENT1                                
      ,SEGMENT2                                
      ,SEGMENT3                                
      ,SEGMENT4                                
      ,SEGMENT5                                
      ,SEGMENT6                                
      ,SEGMENT7                                
      ,SEGMENT8                                
      ,SEGMENT9                                
      ,SEGMENT10                               
      ,SEGMENT11                               
      ,SEGMENT12                               
      ,SEGMENT13                               
      ,SEGMENT14                               
      ,SEGMENT15                               
      ,SEGMENT16                               
      ,SEGMENT17                               
      ,SEGMENT18                               
      ,SEGMENT19                               
      ,SEGMENT20                               
      ,SUMMARY_FLAG                            
      ,ENABLED_FLAG                            
      ,START_DATE_ACTIVE                       
      ,END_DATE_ACTIVE                         
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
      ,LAST_UPDATE_DATE                        
      ,LAST_UPDATED_BY                         
      ,CREATION_DATE                           
      ,CREATED_BY                              
      ,LAST_UPDATE_LOGIN                       
      ,REQUEST_ID                              
      ,PROGRAM_APPLICATION_ID                  
      ,PROGRAM_ID                              
      ,PROGRAM_UPDATE_DATE                     
      ,WEB_STATUS                              
      ,SUPPLIER_ENABLED_FLAG                   
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.CATEGORY_ID                          
      ,MA.STRUCTURE_ID                         
      ,MA.DESCRIPTION                          
      ,MA.DISABLE_DATE                         
      ,MA.SEGMENT1                             
      ,MA.SEGMENT2                             
      ,MA.SEGMENT3                             
      ,MA.SEGMENT4                             
      ,MA.SEGMENT5                             
      ,MA.SEGMENT6                             
      ,MA.SEGMENT7                             
      ,MA.SEGMENT8                             
      ,MA.SEGMENT9                             
      ,MA.SEGMENT10                            
      ,MA.SEGMENT11                            
      ,MA.SEGMENT12                            
      ,MA.SEGMENT13                            
      ,MA.SEGMENT14                            
      ,MA.SEGMENT15                            
      ,MA.SEGMENT16                            
      ,MA.SEGMENT17                            
      ,MA.SEGMENT18                            
      ,MA.SEGMENT19                            
      ,MA.SEGMENT20                            
      ,MA.SUMMARY_FLAG                         
      ,MA.ENABLED_FLAG                         
      ,MA.START_DATE_ACTIVE                    
      ,MA.END_DATE_ACTIVE                      
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
      ,MA.LAST_UPDATE_DATE                     
      ,MA.LAST_UPDATED_BY                      
      ,MA.CREATION_DATE                        
      ,MA.CREATED_BY                           
      ,MA.LAST_UPDATE_LOGIN                    
      ,MA.REQUEST_ID                           
      ,MA.PROGRAM_APPLICATION_ID               
      ,MA.PROGRAM_ID                           
      ,MA.PROGRAM_UPDATE_DATE                  
      ,MA.WEB_STATUS                           
      ,MA.SUPPLIER_ENABLED_FLAG                
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'MTL_CATEGORIES_B'                          
FROM ODS.MTL_CATEGORIES_B_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','MTL_CATEGORIES_B');



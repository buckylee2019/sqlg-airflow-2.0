
TRUNCATE TABLE ODS.FND_TABLES_TP1;

INSERT /*+ append */ INTO ODS.FND_TABLES_TP1 (
      APPLICATION_ID                          
      ,TABLE_ID                                
      ,TABLE_NAME                              
      ,USER_TABLE_NAME                         
      ,LAST_UPDATE_DATE                        
      ,LAST_UPDATED_BY                         
      ,CREATION_DATE                           
      ,CREATED_BY                              
      ,LAST_UPDATE_LOGIN                       
      ,AUTO_SIZE                               
      ,TABLE_TYPE                              
      ,INITIAL_EXTENT                          
      ,NEXT_EXTENT                             
      ,MIN_EXTENTS                             
      ,MAX_EXTENTS                             
      ,PCT_INCREASE                            
      ,INI_TRANS                               
      ,MAX_TRANS                               
      ,PCT_FREE                                
      ,PCT_USED                                
      ,DESCRIPTION                             
      ,HOSTED_SUPPORT_STYLE                    
      ,IREP_COMMENTS                           
      ,IREP_ANNOTATIONS                        
)
      SELECT
       MA.APPLICATION_ID                  AS APPLICATION_ID
      ,MA.TABLE_ID                        AS TABLE_ID
      ,MA.TABLE_NAME                      AS TABLE_NAME
      ,MA.USER_TABLE_NAME                 AS USER_TABLE_NAME
      ,MA.LAST_UPDATE_DATE                AS LAST_UPDATE_DATE
      ,MA.LAST_UPDATED_BY                 AS LAST_UPDATED_BY
      ,MA.CREATION_DATE                   AS CREATION_DATE
      ,MA.CREATED_BY                      AS CREATED_BY
      ,MA.LAST_UPDATE_LOGIN               AS LAST_UPDATE_LOGIN
      ,MA.AUTO_SIZE                       AS AUTO_SIZE
      ,MA.TABLE_TYPE                      AS TABLE_TYPE
      ,MA.INITIAL_EXTENT                  AS INITIAL_EXTENT
      ,MA.NEXT_EXTENT                     AS NEXT_EXTENT
      ,MA.MIN_EXTENTS                     AS MIN_EXTENTS
      ,MA.MAX_EXTENTS                     AS MAX_EXTENTS
      ,MA.PCT_INCREASE                    AS PCT_INCREASE
      ,MA.INI_TRANS                       AS INI_TRANS
      ,MA.MAX_TRANS                       AS MAX_TRANS
      ,MA.PCT_FREE                        AS PCT_FREE
      ,MA.PCT_USED                        AS PCT_USED
      ,MA.DESCRIPTION                     AS DESCRIPTION
      ,MA.HOSTED_SUPPORT_STYLE            AS HOSTED_SUPPORT_STYLE
      ,MA.IREP_COMMENTS                   AS IREP_COMMENTS
      ,MA.IREP_ANNOTATIONS                AS IREP_ANNOTATIONS
FROM STAGE.FND_TABLES MA  
;


TRUNCATE TABLE ODS.FND_TABLES;

INSERT /*+ append */ INTO ODS.FND_TABLES (
      APPLICATION_ID                          
      ,TABLE_ID                                
      ,TABLE_NAME                              
      ,USER_TABLE_NAME                         
      ,LAST_UPDATE_DATE                        
      ,LAST_UPDATED_BY                         
      ,CREATION_DATE                           
      ,CREATED_BY                              
      ,LAST_UPDATE_LOGIN                       
      ,AUTO_SIZE                               
      ,TABLE_TYPE                              
      ,INITIAL_EXTENT                          
      ,NEXT_EXTENT                             
      ,MIN_EXTENTS                             
      ,MAX_EXTENTS                             
      ,PCT_INCREASE                            
      ,INI_TRANS                               
      ,MAX_TRANS                               
      ,PCT_FREE                                
      ,PCT_USED                                
      ,DESCRIPTION                             
      ,HOSTED_SUPPORT_STYLE                    
      ,IREP_COMMENTS                           
      ,IREP_ANNOTATIONS                        
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.APPLICATION_ID                       
      ,MA.TABLE_ID                             
      ,MA.TABLE_NAME                           
      ,MA.USER_TABLE_NAME                      
      ,MA.LAST_UPDATE_DATE                     
      ,MA.LAST_UPDATED_BY                      
      ,MA.CREATION_DATE                        
      ,MA.CREATED_BY                           
      ,MA.LAST_UPDATE_LOGIN                    
      ,MA.AUTO_SIZE                            
      ,MA.TABLE_TYPE                           
      ,MA.INITIAL_EXTENT                       
      ,MA.NEXT_EXTENT                          
      ,MA.MIN_EXTENTS                          
      ,MA.MAX_EXTENTS                          
      ,MA.PCT_INCREASE                         
      ,MA.INI_TRANS                            
      ,MA.MAX_TRANS                            
      ,MA.PCT_FREE                             
      ,MA.PCT_USED                             
      ,MA.DESCRIPTION                          
      ,MA.HOSTED_SUPPORT_STYLE                 
      ,MA.IREP_COMMENTS                        
      ,MA.IREP_ANNOTATIONS                     
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'FND_TABLES'                          
FROM ODS.FND_TABLES_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','FND_TABLES');



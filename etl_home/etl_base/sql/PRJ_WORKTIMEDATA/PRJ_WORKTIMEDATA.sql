
TRUNCATE TABLE ODS.PRJ_WORKTIMEDATA_TP1;

INSERT /*+ append */ INTO ODS.PRJ_WORKTIMEDATA_TP1 (
      STARTDATE                               
      ,ENDDATE                                 
      ,EMPNO                                   
      ,PROJECT_ID                              
      ,PROJECT_NAME                            
      ,TASK_ID                                 
      ,TASK_NAME                               
      ,TASK_START_DAY                          
      ,TASK_FINISH_DAY                         
      ,DURATION                                
      ,TOTAL_REPLY_HOUR                        
      ,INPUT_HOUR                              
      ,FINISH_FLAG                             
      ,TYPE                                    
      ,MODEL                                   
      ,WRITER                                  
)
      SELECT
       MA.STARTDATE                       AS STARTDATE
      ,MA.ENDDATE                         AS ENDDATE
      ,MA.EMPNO                           AS EMPNO
      ,MA.PROJECT_ID                      AS PROJECT_ID
      ,MA.PROJECT_NAME                    AS PROJECT_NAME
      ,MA.TASK_ID                         AS TASK_ID
      ,MA.TASK_NAME                       AS TASK_NAME
      ,MA.TASK_START_DAY                  AS TASK_START_DAY
      ,MA.TASK_FINISH_DAY                 AS TASK_FINISH_DAY
      ,MA.DURATION                        AS DURATION
      ,MA.TOTAL_REPLY_HOUR                AS TOTAL_REPLY_HOUR
      ,MA.INPUT_HOUR                      AS INPUT_HOUR
      ,MA.FINISH_FLAG                     AS FINISH_FLAG
      ,MA.TYPE                            AS TYPE
      ,MA.MODEL                           AS MODEL
      ,MA.WRITER                          AS WRITER
FROM STAGE.PRJ_WORKTIMEDATA MA  
;


TRUNCATE TABLE ODS.PRJ_WORKTIMEDATA;

INSERT /*+ append */ INTO ODS.PRJ_WORKTIMEDATA (
      STARTDATE                               
      ,ENDDATE                                 
      ,EMPNO                                   
      ,PROJECT_ID                              
      ,PROJECT_NAME                            
      ,TASK_ID                                 
      ,TASK_NAME                               
      ,TASK_START_DAY                          
      ,TASK_FINISH_DAY                         
      ,DURATION                                
      ,TOTAL_REPLY_HOUR                        
      ,INPUT_HOUR                              
      ,FINISH_FLAG                             
      ,TYPE                                    
      ,MODEL                                   
      ,WRITER                                  
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.STARTDATE                            
      ,MA.ENDDATE                              
      ,MA.EMPNO                                
      ,MA.PROJECT_ID                           
      ,MA.PROJECT_NAME                         
      ,MA.TASK_ID                              
      ,MA.TASK_NAME                            
      ,MA.TASK_START_DAY                       
      ,MA.TASK_FINISH_DAY                      
      ,MA.DURATION                             
      ,MA.TOTAL_REPLY_HOUR                     
      ,MA.INPUT_HOUR                           
      ,MA.FINISH_FLAG                          
      ,MA.TYPE                                 
      ,MA.MODEL                                
      ,MA.WRITER                               
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'PRJ_WORKTIMEDATA'                          
FROM ODS.PRJ_WORKTIMEDATA_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','PRJ_WORKTIMEDATA');



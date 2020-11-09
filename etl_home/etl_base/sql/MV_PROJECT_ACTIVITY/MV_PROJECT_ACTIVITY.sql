
TRUNCATE TABLE ODS.MV_PROJECT_ACTIVITY_TP1;

INSERT /*+ append */ INTO ODS.MV_PROJECT_ACTIVITY_TP1 (
      PROJECTNUMBER                           
      ,MODEL                                   
      ,STATUS                                  
      ,CREATED_DT                              
      ,MODIFIED_DT                             
      ,LINE_ID                                 
      ,MILESTONE                               
      ,ACTIVITY                                
      ,UNIT_DURATION                           
      ,PLAN_START                              
      ,PLAN_END                                
      ,DEADLINE                                
      ,ACTUAL_START                            
      ,ACTUAL_END                              
      ,COMPLETE_RATE                           
      ,UPDATE_CNT                              
      ,CLASSNAMEKEYPARENTREFERENCE             
      ,IDA3PARENTREFERENCE                     
)
      SELECT
       MA.PROJECTNUMBER                   AS PROJECTNUMBER
      ,MA.MODEL                           AS MODEL
      ,MA.STATUS                          AS STATUS
      ,MA.CREATED_DT                      AS CREATED_DT
      ,MA.MODIFIED_DT                     AS MODIFIED_DT
      ,MA.LINE_ID                         AS LINE_ID
      ,MA.MILESTONE                       AS MILESTONE
      ,MA.ACTIVITY                        AS ACTIVITY
      ,MA.UNIT_DURATION                   AS UNIT_DURATION
      ,MA.PLAN_START                      AS PLAN_START
      ,MA.PLAN_END                        AS PLAN_END
      ,MA.DEADLINE                        AS DEADLINE
      ,MA.ACTUAL_START                    AS ACTUAL_START
      ,MA.ACTUAL_END                      AS ACTUAL_END
      ,MA.COMPLETE_RATE                   AS COMPLETE_RATE
      ,MA.UPDATE_CNT                      AS UPDATE_CNT
      ,MA.CLASSNAMEKEYPARENTREFERENCE     AS CLASSNAMEKEYPARENTREFERENCE
      ,MA.IDA3PARENTREFERENCE             AS IDA3PARENTREFERENCE
FROM STAGE.MV_PROJECT_ACTIVITY MA  
;


TRUNCATE TABLE ODS.MV_PROJECT_ACTIVITY;

INSERT /*+ append */ INTO ODS.MV_PROJECT_ACTIVITY (
      PROJECTNUMBER                           
      ,MODEL                                   
      ,STATUS                                  
      ,CREATED_DT                              
      ,MODIFIED_DT                             
      ,LINE_ID                                 
      ,MILESTONE                               
      ,ACTIVITY                                
      ,UNIT_DURATION                           
      ,PLAN_START                              
      ,PLAN_END                                
      ,DEADLINE                                
      ,ACTUAL_START                            
      ,ACTUAL_END                              
      ,COMPLETE_RATE                           
      ,UPDATE_CNT                              
      ,CLASSNAMEKEYPARENTREFERENCE             
      ,IDA3PARENTREFERENCE                     
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.PROJECTNUMBER                        
      ,MA.MODEL                                
      ,MA.STATUS                               
      ,MA.CREATED_DT                           
      ,MA.MODIFIED_DT                          
      ,MA.LINE_ID                              
      ,MA.MILESTONE                            
      ,MA.ACTIVITY                             
      ,MA.UNIT_DURATION                        
      ,MA.PLAN_START                           
      ,MA.PLAN_END                             
      ,MA.DEADLINE                             
      ,MA.ACTUAL_START                         
      ,MA.ACTUAL_END                           
      ,MA.COMPLETE_RATE                        
      ,MA.UPDATE_CNT                           
      ,MA.CLASSNAMEKEYPARENTREFERENCE          
      ,MA.IDA3PARENTREFERENCE                  
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'MV_PROJECT_ACTIVITY'                          
FROM ODS.MV_PROJECT_ACTIVITY_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','MV_PROJECT_ACTIVITY');



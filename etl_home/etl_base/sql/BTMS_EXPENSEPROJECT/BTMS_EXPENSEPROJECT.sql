
TRUNCATE TABLE ODS.BTMS_EXPENSEPROJECT_TP1;

INSERT /*+ append */ INTO ODS.BTMS_EXPENSEPROJECT_TP1 (
      PK                                      
      ,TICKETID                                
      ,HEADERNO                                
      ,PROJECTCODE                             
      ,PROJECTNAME                             
      ,PMEMPNO                                 
      ,PMFULLNAME                              
      ,RATIO                                   
      ,AMOUNT                                  
      ,UPDATEDT                                
      ,UPDATER                                 
      ,DEPTBELONG                              
)
      SELECT
       MA.PK                              AS PK
      ,MA.TICKETID                        AS TICKETID
      ,MA.HEADERNO                        AS HEADERNO
      ,MA.PROJECTCODE                     AS PROJECTCODE
      ,MA.PROJECTNAME                     AS PROJECTNAME
      ,MA.PMEMPNO                         AS PMEMPNO
      ,MA.PMFULLNAME                      AS PMFULLNAME
      ,MA.RATIO                           AS RATIO
      ,MA.AMOUNT                          AS AMOUNT
      ,MA.UPDATEDT                        AS UPDATEDT
      ,MA.UPDATER                         AS UPDATER
      ,MA.DEPTBELONG                      AS DEPTBELONG
FROM STAGE.BTMS_EXPENSEPROJECT MA  
;


TRUNCATE TABLE ODS.BTMS_EXPENSEPROJECT;

INSERT /*+ append */ INTO ODS.BTMS_EXPENSEPROJECT (
      PK                                      
      ,TICKETID                                
      ,HEADERNO                                
      ,PROJECTCODE                             
      ,PROJECTNAME                             
      ,PMEMPNO                                 
      ,PMFULLNAME                              
      ,RATIO                                   
      ,AMOUNT                                  
      ,UPDATEDT                                
      ,UPDATER                                 
      ,DEPTBELONG                              
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.PK                                   
      ,MA.TICKETID                             
      ,MA.HEADERNO                             
      ,MA.PROJECTCODE                          
      ,MA.PROJECTNAME                          
      ,MA.PMEMPNO                              
      ,MA.PMFULLNAME                           
      ,MA.RATIO                                
      ,MA.AMOUNT                               
      ,MA.UPDATEDT                             
      ,MA.UPDATER                              
      ,MA.DEPTBELONG                           
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'BTMS_EXPENSEPROJECT'                          
FROM ODS.BTMS_EXPENSEPROJECT_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('ODS','BTMS_EXPENSEPROJECT');



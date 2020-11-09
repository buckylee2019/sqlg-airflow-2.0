
TRUNCATE TABLE SDM.SDM_RD_LABOR_HOURS_EXPENSE_TP1;

INSERT /*+ append */ INTO SDM.SDM_RD_LABOR_HOURS_EXPENSE_TP1 (
      RD_LABOR_HOURS_EXPENSE                  
)
      SELECT
       MA.RD_LABOR_HOURS_EXPENSE          AS RD_LABOR_HOURS_EXPENSE
FROM ODS.PRJ_WORKTIMEDATA MA  
;


TRUNCATE TABLE SDM.SDM_RD_LABOR_HOURS_EXPENSE;

INSERT /*+ append */ INTO SDM.SDM_RD_LABOR_HOURS_EXPENSE (
      RD_LABOR_HOURS_EXPENSE                  
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.RD_LABOR_HOURS_EXPENSE               
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'PRJ_WORKTIMEDATA'                          
FROM SDM.SDM_RD_LABOR_HOURS_EXPENSE_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('SDM','SDM_RD_LABOR_HOURS_EXPENSE');



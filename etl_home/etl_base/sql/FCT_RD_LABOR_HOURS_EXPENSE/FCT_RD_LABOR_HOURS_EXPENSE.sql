
TRUNCATE TABLE DM.FCT_RD_LABOR_HOURS_EXPENSE_TP1;

INSERT /*+ append */ INTO DM.FCT_RD_LABOR_HOURS_EXPENSE_TP1 (
      RD_LABOR_HOURS_EXPENSE                  
)
      SELECT
       MA.RD_LABOR_HOURS_EXPENSE          AS RD_LABOR_HOURS_EXPENSE
FROM ODS.XXPLM_EC_V MA  
;

INSERT /*+ append */ INTO DM.FCT_RD_LABOR_HOURS_EXPENSE_TP1 (
      RD_LABOR_HOUR                           
      ,R&D_LABOR_HOURS_EXPENSE                 
)
      SELECT
       MA.RD_LABOR_HOUR                   AS RD_LABOR_HOUR
      ,MA.R&D_LABOR_HOURS_EXPENSE         AS R&D_LABOR_HOURS_EXPENSE
FROM UPD.TBD MA  
;


TRUNCATE TABLE DM.FCT_RD_LABOR_HOURS_EXPENSE;

INSERT /*+ append */ INTO DM.FCT_RD_LABOR_HOURS_EXPENSE (
      RD_LABOR_HOURS_EXPENSE                  
      ,RD_LABOR_HOUR                           
      ,R&D_LABOR_HOURS_EXPENSE                 
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.RD_LABOR_HOURS_EXPENSE               
      ,MA.RD_LABOR_HOUR                        
      ,MA.R&D_LABOR_HOURS_EXPENSE              
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'TBD'                          
FROM DM.FCT_RD_LABOR_HOURS_EXPENSE_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('DM','FCT_RD_LABOR_HOURS_EXPENSE');



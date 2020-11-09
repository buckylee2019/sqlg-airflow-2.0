
ALTER TABLE DM.FCT_TOOLING_TOTAL_EXPENSE_TP1 DISABLE CONSTRAINT FCT_TOOLING_TOTAL_EXPENSE_TP1_X;
TRUNCATE TABLE DM.FCT_TOOLING_TOTAL_EXPENSE_TP1;

INSERT /*+ append */ INTO DM.FCT_TOOLING_TOTAL_EXPENSE_TP1 (
      BUSINESS_GROUP                          
      ,PROJECT_CODE                            
      ,MODEL                                   
      ,MANUFACTURING_PLANT                     
      ,TOOLING_TOTAL_EXPENSE                   
)
      SELECT
       MA.BUSINESS_GROUP                  AS BUSINESS_GROUP
      ,MA.PROJECT_CODE                    AS PROJECT_CODE
      ,MA.MODEL                           AS MODEL
      ,MA.MANUFACTURING_PLANT             AS MANUFACTURING_PLANT
      ,MA.TOOLING_TOTAL_EXPENSE           AS TOOLING_TOTAL_EXPENSE
FROM SDM.SDM_TOOLING_TOTAL_EXPENSE MA  
;



ALTER TABLE DM.FCT_TOOLING_TOTAL_EXPENSE_TP1 ENABLE CONSTRAINT FCT_TOOLING_TOTAL_EXPENSE_TP1_X EXCEPTIONS INTO DM.FCT_TOOLING_TOTAL_EXPENSE_TPX;

ALTER TABLE DM.FCT_TOOLING_TOTAL_EXPENSE DISABLE CONSTRAINT FCT_TOOLING_TOTAL_EXPENSE_X;
TRUNCATE TABLE DM.FCT_TOOLING_TOTAL_EXPENSE;

INSERT /*+ append */ INTO DM.FCT_TOOLING_TOTAL_EXPENSE (
      BUSINESS_GROUP                          
      ,PROJECT_CODE                            
      ,MODEL                                   
      ,MANUFACTURING_PLANT                     
      ,TOOLING_TOTAL_EXPENSE                   
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.BUSINESS_GROUP                       
      ,MA.PROJECT_CODE                         
      ,MA.MODEL                                
      ,MA.MANUFACTURING_PLANT                  
      ,MA.TOOLING_TOTAL_EXPENSE                
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'SDM_TOOLING_TOTAL_EXPENSE'                          
FROM DM.FCT_TOOLING_TOTAL_EXPENSE_TP1 MA ; 



ALTER TABLE DM.FCT_TOOLING_TOTAL_EXPENSE ENABLE CONSTRAINT FCT_TOOLING_TOTAL_EXPENSE_X EXCEPTIONS INTO DM.FCT_TOOLING_TOTAL_EXPENSE_TPX;

-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('DM','FCT_TOOLING_TOTAL_EXPENSE');



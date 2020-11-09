
ALTER TABLE SDM.SDM_TESTING_EXPENSE_TP1 DISABLE CONSTRAINT SDM_TESTING_EXPENSE_TP1_X;
TRUNCATE TABLE SDM.SDM_TESTING_EXPENSE_TP1;

INSERT /*+ append */ INTO SDM.SDM_TESTING_EXPENSE_TP1 (
      BUSINESS_GROUP                          
      ,PROJECT_CODE                            
      ,MODEL                                   
      ,MANUFACTURING_PLANT                     
      ,TESTING_EXPENSE                         
)
      SELECT
       MA.BUSINESS_GROUP                  AS BUSINESS_GROUP
      ,MA.PROJECT_CODE                    AS PROJECT_CODE
      ,MA.MODEL                           AS MODEL
      ,MA.MANUFACTURING_PLANT             AS MANUFACTURING_PLANT
      ,SSCE.CTF_EXPENSE + MA.EQT_EXPENSE  AS TESTING_EXPENSE
FROM SDM.SDM_EQT_EXPENSE MA  
LEFT JOIN SDM.SDM_CTF_EXPENSE SSCE ON MA.BUSINESS_GROUP=SSCE.BUSINESS_GROUP  and MA.PROJECT_CODE=SSCE.PROJECT_CODE  and MA.MODEL=SSCE.MODEL  and MA.MANUFACTURING_PLANT=SSCE.MANUFACTURING_PLANT
;



ALTER TABLE SDM.SDM_TESTING_EXPENSE_TP1 ENABLE CONSTRAINT SDM_TESTING_EXPENSE_TP1_X EXCEPTIONS INTO SDM.SDM_TESTING_EXPENSE_TPX;

ALTER TABLE SDM.SDM_TESTING_EXPENSE DISABLE CONSTRAINT SDM_TESTING_EXPENSE_X;
TRUNCATE TABLE SDM.SDM_TESTING_EXPENSE;

INSERT /*+ append */ INTO SDM.SDM_TESTING_EXPENSE (
      BUSINESS_GROUP                          
      ,PROJECT_CODE                            
      ,MODEL                                   
      ,MANUFACTURING_PLANT                     
      ,TESTING_EXPENSE                         
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.BUSINESS_GROUP                       
      ,MA.PROJECT_CODE                         
      ,MA.MODEL                                
      ,MA.MANUFACTURING_PLANT                  
      ,MA.TESTING_EXPENSE                      
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'SDM_EQT_EXPENSE'                          
FROM SDM.SDM_TESTING_EXPENSE_TP1 MA ; 



ALTER TABLE SDM.SDM_TESTING_EXPENSE ENABLE CONSTRAINT SDM_TESTING_EXPENSE_X EXCEPTIONS INTO SDM.SDM_TESTING_EXPENSE_TPX;

-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('SDM','SDM_TESTING_EXPENSE');



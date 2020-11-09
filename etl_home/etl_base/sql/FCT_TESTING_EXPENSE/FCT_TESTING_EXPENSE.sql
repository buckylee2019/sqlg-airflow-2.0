
ALTER TABLE DM.FCT_TESTING_EXPENSE_TP1 DISABLE CONSTRAINT FCT_TESTING_EXPENSE_TP1_X;
TRUNCATE TABLE DM.FCT_TESTING_EXPENSE_TP1;

INSERT /*+ append */ INTO DM.FCT_TESTING_EXPENSE_TP1 (
      BUSINESS_GROUP                          
      ,PROJECT_CODE                            
      ,MODEL                                   
      ,MANUFACTURING_PLANT                     
      ,TESTING_EXPENSE                         
      ,CERTIFICATION_EXPENSE                   
      ,EQT_EXPENSE                             
      ,EPR_MFG_SAMPLE_BUILD_EXP                
)
      SELECT
       MA.BUSINESS_GROUP                  AS BUSINESS_GROUP
      ,MA.PROJECT_CODE                    AS PROJECT_CODE
      ,MA.MODEL                           AS MODEL
      ,MA.MANUFACTURING_PLANT             AS MANUFACTURING_PLANT
      ,MA.TESTING_EXPENSE                 AS TESTING_EXPENSE
      ,SSCE.CERTIFICATION_EXPENSE         AS CERTIFICATION_EXPENSE
      ,SSEE.EQT_EXPENSE                   AS EQT_EXPENSE
      ,SSEMSBE.EPR_MFG_SAMPLE_BUILD_EXP   AS EPR_MFG_SAMPLE_BUILD_EXP
FROM SDM.SDM_TESTING_EXPENSE MA  
LEFT JOIN SDM.SDM_CERTIFICATION_EXPENSE SSCE ON MA.BUSINESS_GROUP=SSCE.BUSINESS_GROUP  and MA.BUSINESS_GROUP=SSCE.BUSINESS_GROUP and MA.PROJECT_CODE=SSCE.PROJECT_CODE and MA.MODEL=SSCE.MODEL and MA.MANUFACTURING_PLANT=SSCE.MANUFACTURING_PLANT
LEFT JOIN SDM.SDM_EQT_EXPENSE SSEE ON MA.BUSINESS_GROUP=SSEE.BUSINESS_GROUP  and MA.BUSINESS_GROUP=SSEE.BUSINESS_GROUP and MA.PROJECT_CODE=SSEE.PROJECT_CODE and MA.MODEL=SSEE.MODEL and MA.MANUFACTURING_PLANT=SSEE.MANUFACTURING_PLANT
LEFT JOIN SDM.SDM_EPR_MFG_SAMPLE_BUILD_EXP SSEMSBE ON MA.BUSINESS_GROUP=SSEMSBE.BUSINESS_GROUP  and MA.BUSINESS_GROUP=SSEMSBE.BUSINESS_GROUP and MA.PROJECT_CODE=SSEMSBE.PROJECT_CODE and MA.MODEL=SSEMSBE.MODEL and MA.MANUFACTURING_PLANT=SSEMSBE.MANUFACTURING_PLANT
;



ALTER TABLE DM.FCT_TESTING_EXPENSE_TP1 ENABLE CONSTRAINT FCT_TESTING_EXPENSE_TP1_X EXCEPTIONS INTO DM.FCT_TESTING_EXPENSE_TPX;

ALTER TABLE DM.FCT_TESTING_EXPENSE DISABLE CONSTRAINT FCT_TESTING_EXPENSE_X;
TRUNCATE TABLE DM.FCT_TESTING_EXPENSE;

INSERT /*+ append */ INTO DM.FCT_TESTING_EXPENSE (
      BUSINESS_GROUP                          
      ,PROJECT_CODE                            
      ,MODEL                                   
      ,MANUFACTURING_PLANT                     
      ,TESTING_EXPENSE                         
      ,CERTIFICATION_EXPENSE                   
      ,EQT_EXPENSE                             
      ,EPR_MFG_SAMPLE_BUILD_EXP                
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
      ,MA.CERTIFICATION_EXPENSE                
      ,MA.EQT_EXPENSE                          
      ,MA.EPR_MFG_SAMPLE_BUILD_EXP             
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'SDM_TESTING_EXPENSE'                          
FROM DM.FCT_TESTING_EXPENSE_TP1 MA ; 



ALTER TABLE DM.FCT_TESTING_EXPENSE ENABLE CONSTRAINT FCT_TESTING_EXPENSE_X EXCEPTIONS INTO DM.FCT_TESTING_EXPENSE_TPX;

-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('DM','FCT_TESTING_EXPENSE');



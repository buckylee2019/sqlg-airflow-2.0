
TRUNCATE TABLE DM.FCT_DMST_AND_INTL_TRAVEL_EXP_TP1;

INSERT /*+ append */ INTO DM.FCT_DMST_AND_INTL_TRAVEL_EXP_TP1 (
      PROJECT_CODE                            
)
      SELECT
       MA.PROJECT_CODE                    AS PROJECT_CODE
FROM ODS.TBD MA  
;

INSERT /*+ append */ INTO DM.FCT_DMST_AND_INTL_TRAVEL_EXP_TP1 (
      DOMESTIC_AND_INTL_TRAVEL_EXPENSES       
)
      SELECT
       MA.DOMESTIC_AND_INTL_TRAVEL_EXPENSES      AS DOMESTIC_AND_INTL_TRAVEL_EXPENSES
FROM ODS.PLM-MODEL MA  
;


TRUNCATE TABLE DM.FCT_DMST_AND_INTL_TRAVEL_EXP;

INSERT /*+ append */ INTO DM.FCT_DMST_AND_INTL_TRAVEL_EXP (
      PROJECT_CODE                            
      ,DOMESTIC_AND_INTL_TRAVEL_EXPENSES       
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.PROJECT_CODE                         
      ,MA.DOMESTIC_AND_INTL_TRAVEL_EXPENSES    
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'PLM-MODEL'                          
FROM DM.FCT_DMST_AND_INTL_TRAVEL_EXP_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('DM','FCT_DMST_AND_INTL_TRAVEL_EXP');



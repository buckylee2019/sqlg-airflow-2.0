
TRUNCATE TABLE DM.FCT_EPR_MFG_CONVERSION_COST_TP1;

INSERT /*+ append */ INTO DM.FCT_EPR_MFG_CONVERSION_COST_TP1 (
      PROJECT_CODE                            
      ,EPR_MFG_CONVERSION_COST                 
)
      SELECT
       MA.PROJECT_CODE                    AS PROJECT_CODE
      ,MA.EPR_MFG_CONVERSION_COST         AS EPR_MFG_CONVERSION_COST
FROM ODS.TBD MA  
;


TRUNCATE TABLE DM.FCT_EPR_MFG_CONVERSION_COST;

INSERT /*+ append */ INTO DM.FCT_EPR_MFG_CONVERSION_COST (
      PROJECT_CODE                            
      ,EPR_MFG_CONVERSION_COST                 
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.PROJECT_CODE                         
      ,MA.EPR_MFG_CONVERSION_COST              
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'TBD'                          
FROM DM.FCT_EPR_MFG_CONVERSION_COST_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('DM','FCT_EPR_MFG_CONVERSION_COST');



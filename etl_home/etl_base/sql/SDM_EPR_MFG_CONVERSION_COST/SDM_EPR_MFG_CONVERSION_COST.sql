
TRUNCATE TABLE SDM.SDM_EPR_MFG_CONVERSION_COST_TP1;

INSERT /*+ append */ INTO SDM.SDM_EPR_MFG_CONVERSION_COST_TP1 (
      EPR_MFG_CONVERSION_COST                 
)
      SELECT
       MA.EPR_MFG_CONVERSION_COST         AS EPR_MFG_CONVERSION_COST
FROM ODS.ERP-ROUTING-DATA MA  
;


TRUNCATE TABLE SDM.SDM_EPR_MFG_CONVERSION_COST;

INSERT /*+ append */ INTO SDM.SDM_EPR_MFG_CONVERSION_COST (
      EPR_MFG_CONVERSION_COST                 
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.EPR_MFG_CONVERSION_COST              
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'ERP-ROUTING-DATA'                          
FROM SDM.SDM_EPR_MFG_CONVERSION_COST_TP1 MA ; 


-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('SDM','SDM_EPR_MFG_CONVERSION_COST');



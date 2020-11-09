
ALTER TABLE DM.FCT_PROD_DEV_MLST_DELAY_RATE_TP1 DISABLE CONSTRAINT FCT_PROD_DEV_MLST_DELAY_RATE_TP1_X;
TRUNCATE TABLE DM.FCT_PROD_DEV_MLST_DELAY_RATE_TP1;

INSERT /*+ append */ INTO DM.FCT_PROD_DEV_MLST_DELAY_RATE_TP1 (
      BUSINESS_GROUP                          
      ,PROJECT_CODE                            
      ,MODEL                                   
      ,MANUFACTURING_PLANT                     
      ,MILESTONE                               
      ,ACTIVITY                                
      ,PROD_DEV_MLST_DELAY_RATE                
      ,CDOC_PLANNED_DEV_TIME                   
      ,CDOC_DELAY_TIME                         
)
      SELECT
       MA.BUSINESS_GROUP                  AS BUSINESS_GROUP
      ,MA.PROJECT_CODE                    AS PROJECT_CODE
      ,MA.MODEL                           AS MODEL
      ,MA.MANUFACTURING_PLANT             AS MANUFACTURING_PLANT
      ,MA.MILESTONE                       AS MILESTONE
      ,MA.ACTIVITY                        AS ACTIVITY
      ,MA.PROD_DEV_MLST_DELAY_RATE        AS PROD_DEV_MLST_DELAY_RATE
      ,SSCPDT.CDOC_PLANNED_DEV_TIME       AS CDOC_PLANNED_DEV_TIME
      ,SSCDT.CDOC_DELAY_TIME              AS CDOC_DELAY_TIME
FROM SDM.SDM_PROD_DEV_MLST_DELAY_RATE MA  
LEFT JOIN SDM.SDM_CDOC_PLANNED_DEV_TIME SSCPDT ON MA.BUSINESS_GROUP=SSCPDT.BUSINESS_GROUP  and MA.PROJECT_CODE=SSCPDT.PROJECT_CODE and MA.MODEL=SSCPDT.MODEL and MA.MANUFACTURING_PLANT=SSCPDT.MANUFACTURING_PLANT and MA.MILESTONE=SSCPDT.MILESTONE and MA.ACTIVITY=SSCPDT.ACTIVITY
LEFT JOIN SDM.SDM_CDOC_DELAY_TIME SSCDT ON MA.BUSINESS_GROUP=SSCDT.BUSINESS_GROUP  and MA.PROJECT_CODE=SSCDT.PROJECT_CODE and MA.MODEL=SSCDT.MODEL and MA.MANUFACTURING_PLANT=SSCDT.MANUFACTURING_PLANT and MA.MILESTONE=SSCDT.MILESTONE and MA.ACTIVITY=SSCDT.ACTIVITY
;



ALTER TABLE DM.FCT_PROD_DEV_MLST_DELAY_RATE_TP1 ENABLE CONSTRAINT FCT_PROD_DEV_MLST_DELAY_RATE_TP1_X EXCEPTIONS INTO DM.FCT_PROD_DEV_MLST_DELAY_RATE_TPX;

ALTER TABLE DM.FCT_PROD_DEV_MLST_DELAY_RATE DISABLE CONSTRAINT FCT_PROD_DEV_MLST_DELAY_RATE_X;
TRUNCATE TABLE DM.FCT_PROD_DEV_MLST_DELAY_RATE;

INSERT /*+ append */ INTO DM.FCT_PROD_DEV_MLST_DELAY_RATE (
      BUSINESS_GROUP                          
      ,PROJECT_CODE                            
      ,MODEL                                   
      ,MANUFACTURING_PLANT                     
      ,MILESTONE                               
      ,ACTIVITY                                
      ,PROD_DEV_MLST_DELAY_RATE                
      ,CDOC_PLANNED_DEV_TIME                   
      ,CDOC_DELAY_TIME                         
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.BUSINESS_GROUP                       
      ,MA.PROJECT_CODE                         
      ,MA.MODEL                                
      ,MA.MANUFACTURING_PLANT                  
      ,MA.MILESTONE                            
      ,MA.ACTIVITY                             
      ,MA.PROD_DEV_MLST_DELAY_RATE             
      ,MA.CDOC_PLANNED_DEV_TIME                
      ,MA.CDOC_DELAY_TIME                      
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'SDM_PROD_DEV_MLST_DELAY_RATE'                          
FROM DM.FCT_PROD_DEV_MLST_DELAY_RATE_TP1 MA ; 



ALTER TABLE DM.FCT_PROD_DEV_MLST_DELAY_RATE ENABLE CONSTRAINT FCT_PROD_DEV_MLST_DELAY_RATE_X EXCEPTIONS INTO DM.FCT_PROD_DEV_MLST_DELAY_RATE_TPX;

-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('DM','FCT_PROD_DEV_MLST_DELAY_RATE');



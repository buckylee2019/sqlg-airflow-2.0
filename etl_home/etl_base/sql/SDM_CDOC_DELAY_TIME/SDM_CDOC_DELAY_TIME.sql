
ALTER TABLE SDM.SDM_CDOC_DELAY_TIME_TP1 DISABLE CONSTRAINT SDM_CDOC_DELAY_TIME_TP1_X;
TRUNCATE TABLE SDM.SDM_CDOC_DELAY_TIME_TP1;

INSERT /*+ append */ INTO SDM.SDM_CDOC_DELAY_TIME_TP1 (
      BUSINESS_GROUP                          
      ,PROJECT_CODE                            
      ,MODEL                                   
      ,MANUFACTURING_PLANT                     
      ,MILESTONE                               
      ,ACTIVITY                                
      ,CDOC_DELAY_TIME                         
)
      SELECT
       coalesce(OXM.BG,'N/A')             AS BUSINESS_GROUP
      ,MA.PROJECTNUMBER                   AS PROJECT_CODE
      ,MA.MODEL                           AS MODEL
      ,coalesce(OXM.ORG,'N/A')            AS MANUFACTURING_PLANT
      ,MA.MILESTONE                       AS MILESTONE
      ,MA.ACTIVITY                        AS ACTIVITY
      ,AVG(PLAN_END-ACTUAL_END)*24        AS CDOC_DELAY_TIME
FROM ODS.MV_PROJECT_ACTIVITY MA  
LEFT JOIN ODS.XXPLM_MODEL OXM ON MA.MODEL=OXM.MODEL_NO
GROUP BY coalesce(OXM.BG,'N/A'),MA.PROJECTNUMBER,MA.MODEL,coalesce(OXM.ORG,'N/A'),MA.MILESTONE,MA.ACTIVITY
;



ALTER TABLE SDM.SDM_CDOC_DELAY_TIME_TP1 ENABLE CONSTRAINT SDM_CDOC_DELAY_TIME_TP1_X EXCEPTIONS INTO SDM.SDM_CDOC_DELAY_TIME_TPX;

ALTER TABLE SDM.SDM_CDOC_DELAY_TIME DISABLE CONSTRAINT SDM_CDOC_DELAY_TIME_X;
TRUNCATE TABLE SDM.SDM_CDOC_DELAY_TIME;

INSERT /*+ append */ INTO SDM.SDM_CDOC_DELAY_TIME (
      BUSINESS_GROUP                          
      ,PROJECT_CODE                            
      ,MODEL                                   
      ,MANUFACTURING_PLANT                     
      ,MILESTONE                               
      ,ACTIVITY                                
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
      ,MA.CDOC_DELAY_TIME                      
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'MV_PROJECT_ACTIVITY'                          
FROM SDM.SDM_CDOC_DELAY_TIME_TP1 MA ; 



ALTER TABLE SDM.SDM_CDOC_DELAY_TIME ENABLE CONSTRAINT SDM_CDOC_DELAY_TIME_X EXCEPTIONS INTO SDM.SDM_CDOC_DELAY_TIME_TPX;

-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('SDM','SDM_CDOC_DELAY_TIME');




ALTER TABLE SDM.SDM_CDOC_PLANNED_DEV_TIME_TP1 DISABLE CONSTRAINT SDM_CDOC_PLANNED_DEV_TIME_TP1_X;
TRUNCATE TABLE SDM.SDM_CDOC_PLANNED_DEV_TIME_TP1;

INSERT /*+ append */ INTO SDM.SDM_CDOC_PLANNED_DEV_TIME_TP1 (
      ACTIVITY                                
      ,MILESTONE                               
      ,PROJECT_CODE                            
      ,BUSINESS_GROUP                          
      ,MODEL                                   
      ,MANUFACTURING_PLANT                     
      ,CDOC_PLANNED_DEV_TIME                   
)
      SELECT
       MA.ACTIVITY                        AS ACTIVITY
      ,MA.MILESTONE                       AS MILESTONE
      ,MA.PROJECTNUMBER                   AS PROJECT_CODE
      ,coalesce(OXM.BG,'N/A')             AS BUSINESS_GROUP
      ,MA.MODEL                           AS MODEL
      ,coalesce(OXM.ORG,'N/A')            AS MANUFACTURING_PLANT
      ,AVG(MA.PLAN_END-MA.PLAN_START)*24  AS CDOC_PLANNED_DEV_TIME
FROM ODS.MV_PROJECT_ACTIVITY MA  
LEFT JOIN ODS.XXPLM_MODEL OXM ON MA.MODEL=OXM.MODEL_NO
GROUP BY MA.ACTIVITY,MA.MILESTONE,MA.PROJECTNUMBER,coalesce(OXM.BG,'N/A'),MA.MODEL,coalesce(OXM.ORG,'N/A')
;



ALTER TABLE SDM.SDM_CDOC_PLANNED_DEV_TIME_TP1 ENABLE CONSTRAINT SDM_CDOC_PLANNED_DEV_TIME_TP1_X EXCEPTIONS INTO SDM.SDM_CDOC_PLANNED_DEV_TIME_TPX;

ALTER TABLE SDM.SDM_CDOC_PLANNED_DEV_TIME DISABLE CONSTRAINT SDM_CDOC_PLANNED_DEV_TIME_X;
TRUNCATE TABLE SDM.SDM_CDOC_PLANNED_DEV_TIME;

INSERT /*+ append */ INTO SDM.SDM_CDOC_PLANNED_DEV_TIME (
      ACTIVITY                                
      ,MILESTONE                               
      ,PROJECT_CODE                            
      ,BUSINESS_GROUP                          
      ,MODEL                                   
      ,MANUFACTURING_PLANT                     
      ,CDOC_PLANNED_DEV_TIME                   
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.ACTIVITY                             
      ,MA.MILESTONE                            
      ,MA.PROJECT_CODE                         
      ,MA.BUSINESS_GROUP                       
      ,MA.MODEL                                
      ,MA.MANUFACTURING_PLANT                  
      ,MA.CDOC_PLANNED_DEV_TIME                
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'MV_PROJECT_ACTIVITY'                          
FROM SDM.SDM_CDOC_PLANNED_DEV_TIME_TP1 MA ; 



ALTER TABLE SDM.SDM_CDOC_PLANNED_DEV_TIME ENABLE CONSTRAINT SDM_CDOC_PLANNED_DEV_TIME_X EXCEPTIONS INTO SDM.SDM_CDOC_PLANNED_DEV_TIME_TPX;

-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('SDM','SDM_CDOC_PLANNED_DEV_TIME');



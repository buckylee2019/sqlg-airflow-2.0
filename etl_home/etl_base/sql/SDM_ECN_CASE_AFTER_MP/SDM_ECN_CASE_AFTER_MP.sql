
ALTER TABLE SDM.SDM_ECN_CASE_AFTER_MP_TP1 DISABLE CONSTRAINT SDM_ECN_CASE_AFTER_MP_TP1_X;
TRUNCATE TABLE SDM.SDM_ECN_CASE_AFTER_MP_TP1;

INSERT /*+ append */ INTO SDM.SDM_ECN_CASE_AFTER_MP_TP1 (
      PROJECT_CODE                            
      ,BUSINESS_GROUP                          
      ,PO_CUSTOMER_CODE                        
      ,MODEL                                   
      ,MANUFACTURING_PLANT                     
      ,CREATIONDATE                            
      ,ECN_CASE_AFTER_MP                       
)
      SELECT
       coalesce(OXM.PROJECT_CODE,'N/A')   AS PROJECT_CODE
      ,coalesce(OXM.BG,'N/A')             AS BUSINESS_GROUP
      ,N/A'                               AS PO_CUSTOMER_CODE
      ,MA.MODELNO                         AS MODEL
      ,coalesce(SSP.PLANT,'N/A')          AS MANUFACTURING_PLANT
      ,MA.CREATIONDATE                    AS CREATIONDATE
      ,count(distinct MA.ECNO )           AS ECN_CASE_AFTER_MP
FROM SDM.SDM_XXPLM_EC MA  
LEFT JOIN ODS.XXPLM_MODEL OXM ON MA.MODELNO=OXM.MODEL_NO
LEFT JOIN SDM.SDM_PLANT SSP ON MA.ORG=SSP.ORG_CODE
GROUP BY coalesce(OXM.PROJECT_CODE,'N/A'),coalesce(OXM.BG,'N/A'),N/A',MA.MODELNO,coalesce(SSP.PLANT,'N/A'),MA.CREATIONDATE
;



ALTER TABLE SDM.SDM_ECN_CASE_AFTER_MP_TP1 ENABLE CONSTRAINT SDM_ECN_CASE_AFTER_MP_TP1_X EXCEPTIONS INTO SDM.SDM_ECN_CASE_AFTER_MP_TPX;

ALTER TABLE SDM.SDM_ECN_CASE_AFTER_MP DISABLE CONSTRAINT SDM_ECN_CASE_AFTER_MP_X;
TRUNCATE TABLE SDM.SDM_ECN_CASE_AFTER_MP;

INSERT /*+ append */ INTO SDM.SDM_ECN_CASE_AFTER_MP (
      PROJECT_CODE                            
      ,BUSINESS_GROUP                          
      ,PO_CUSTOMER_CODE                        
      ,MODEL                                   
      ,MANUFACTURING_PLANT                     
      ,CREATIONDATE                            
      ,ECN_CASE_AFTER_MP                       
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.PROJECT_CODE                         
      ,MA.BUSINESS_GROUP                       
      ,MA.PO_CUSTOMER_CODE                     
      ,MA.MODEL                                
      ,MA.MANUFACTURING_PLANT                  
      ,MA.CREATIONDATE                         
      ,MA.ECN_CASE_AFTER_MP                    
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'SDM_XXPLM_EC'                          
FROM SDM.SDM_ECN_CASE_AFTER_MP_TP1 MA ; 



ALTER TABLE SDM.SDM_ECN_CASE_AFTER_MP ENABLE CONSTRAINT SDM_ECN_CASE_AFTER_MP_X EXCEPTIONS INTO SDM.SDM_ECN_CASE_AFTER_MP_TPX;

-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('SDM','SDM_ECN_CASE_AFTER_MP');



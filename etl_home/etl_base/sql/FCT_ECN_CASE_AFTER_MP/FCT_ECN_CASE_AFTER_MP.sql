
ALTER TABLE DM.FCT_ECN_CASE_AFTER_MP_TP1 DISABLE CONSTRAINT FCT_ECN_CASE_AFTER_MP_TP1_X;
TRUNCATE TABLE DM.FCT_ECN_CASE_AFTER_MP_TP1;

INSERT /*+ append */ INTO DM.FCT_ECN_CASE_AFTER_MP_TP1 (
      PROJECT_CODE                            
      ,BUSINESS_GROUP                          
      ,PO_CUSTOMER_CODE                        
      ,MODEL                                   
      ,MANUFACTURING_PLANT                     
      ,CREATIONDATE                            
      ,ECN_CASE_AFTER_MP                       
)
      SELECT
       MA.PROJECT_CODE                    AS PROJECT_CODE
      ,MA.BUSINESS_GROUP                  AS BUSINESS_GROUP
      ,MA.PO_CUSTOMER_CODE                AS PO_CUSTOMER_CODE
      ,MA.MODEL                           AS MODEL
      ,MA.MANUFACTURING_PLANT             AS MANUFACTURING_PLANT
      ,MA.CREATIONDATE                    AS CREATIONDATE
      ,MA.ECN_CASE_AFTER_MP               AS ECN_CASE_AFTER_MP
FROM SDM.SDM_ECN_CASE_AFTER_MP MA  
;



ALTER TABLE DM.FCT_ECN_CASE_AFTER_MP_TP1 ENABLE CONSTRAINT FCT_ECN_CASE_AFTER_MP_TP1_X EXCEPTIONS INTO DM.FCT_ECN_CASE_AFTER_MP_TPX;

ALTER TABLE DM.FCT_ECN_CASE_AFTER_MP DISABLE CONSTRAINT FCT_ECN_CASE_AFTER_MP_X;
TRUNCATE TABLE DM.FCT_ECN_CASE_AFTER_MP;

INSERT /*+ append */ INTO DM.FCT_ECN_CASE_AFTER_MP (
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
      ,'SDM_ECN_CASE_AFTER_MP'                          
FROM DM.FCT_ECN_CASE_AFTER_MP_TP1 MA ; 



ALTER TABLE DM.FCT_ECN_CASE_AFTER_MP ENABLE CONSTRAINT FCT_ECN_CASE_AFTER_MP_X EXCEPTIONS INTO DM.FCT_ECN_CASE_AFTER_MP_TPX;

-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('DM','FCT_ECN_CASE_AFTER_MP');



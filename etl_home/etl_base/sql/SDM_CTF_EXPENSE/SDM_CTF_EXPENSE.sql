
ALTER TABLE SDM.SDM_CTF_EXPENSE_TP1 DISABLE CONSTRAINT SDM_CTF_EXPENSE_TP1_X;
TRUNCATE TABLE SDM.SDM_CTF_EXPENSE_TP1;

INSERT /*+ append */ INTO SDM.SDM_CTF_EXPENSE_TP1 (
      BUSINESS_GROUP                          
      ,PROJECT_CODE                            
      ,MODEL                                   
      ,MANUFACTURING_PLANT                     
      ,CTF_EXPENSE                             
)
WITH SDM_CTF_EXPENSE_V11 AS (
      SELECT
       MA.REQ_HEADER_ID                   AS REQ_HEADER_ID
      ,MA.ORG_ID                          AS ORG_ID
      ,MA.SITE_CODE                       AS SITE_CODE
      ,coalesce(MA.PROJECT_CODE,'X')      AS PROJECT_CODE
      ,MA.TOTAL_AMOUNT                    AS TOTAL_AMOUNT
      ,MA.RELEASED_AMOUNT                 AS RELEASED_AMOUNT
      ,SSMP.MANUFACTURING_PLANT           AS MANUFACTURING_PLANT
      ,MA.B_CATEGORY_ID                   AS B_CATEGORY_ID
FROM ODS.NSP_REQ_HEADERS MA  
LEFT JOIN SDM.SDM_MANUFACTURING_PLANT SSMP ON MA.ORG_ID=SSMP.SITE_ID
WHERE MA.B_CATEGORY_ID in  (22)
)      SELECT
       coalesce(SSPC.BUSINESS_GROUP,'X')  AS BUSINESS_GROUP
      ,coalesce(SSPC.PROJECT_CODE,'X')    AS PROJECT_CODE
      ,X'                                 AS MODEL
      ,coalesce(MA.MANUFACTURING_PLANT,'X')      AS MANUFACTURING_PLANT
      ,sum(MA.TOTAL_AMOUNT)               AS CTF_EXPENSE
FROM SDM_CTF_EXPENSE_V11 MA  
LEFT JOIN SDM.SDM_PROJECT_CODE SSPC ON MA.PROJECT_CODE=SSPC.PROJECT_CODE
GROUP BY coalesce(SSPC.BUSINESS_GROUP,'X'),coalesce(SSPC.PROJECT_CODE,'X'),X',coalesce(MA.MANUFACTURING_PLANT,'X')
;



ALTER TABLE SDM.SDM_CTF_EXPENSE_TP1 ENABLE CONSTRAINT SDM_CTF_EXPENSE_TP1_X EXCEPTIONS INTO SDM.SDM_CTF_EXPENSE_TPX;

ALTER TABLE SDM.SDM_CTF_EXPENSE DISABLE CONSTRAINT SDM_CTF_EXPENSE_X;
TRUNCATE TABLE SDM.SDM_CTF_EXPENSE;

INSERT /*+ append */ INTO SDM.SDM_CTF_EXPENSE (
      BUSINESS_GROUP                          
      ,PROJECT_CODE                            
      ,MODEL                                   
      ,MANUFACTURING_PLANT                     
      ,CTF_EXPENSE                             
      ,DATA_DATE                               
      ,TBL_UPD_TIME                            
      ,TBL_UPD_SRC                             
) 
      SELECT
      MA.BUSINESS_GROUP                       
      ,MA.PROJECT_CODE                         
      ,MA.MODEL                                
      ,MA.MANUFACTURING_PLANT                  
      ,MA.CTF_EXPENSE                          
      ,'20201108'                            
      ,CURRENT_DATE                         
      ,'SDM_CTF_EXPENSE_V11'                          
FROM SDM.SDM_CTF_EXPENSE_TP1 MA ; 



ALTER TABLE SDM.SDM_CTF_EXPENSE ENABLE CONSTRAINT SDM_CTF_EXPENSE_X EXCEPTIONS INTO SDM.SDM_CTF_EXPENSE_TPX;

-- Update statistics
CALL DBMS_STATS.GATHER_TABLE_STATS('SDM','SDM_CTF_EXPENSE');


